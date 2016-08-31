unit SCDCAkts_PeriodsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RxPlacemnt, SCDCAkts_DataModuleUnit, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet,
  SCFRDigit, frxDesgn, frxRich, frxExportDOCX, frxExportPDF, frxExportRTF, SCDCAkts_CopyAktsFormUnit,
  SCDCAkts_RecalcFormUnit, SCDCAkts_ReplaceAktDateFormUnit;

type
  TSCDCAkts_PeriodsForm = class(TForm)
    SCDCAkts_PeriodDBGridEh: TDBGridEh;
    SCDCAkts_PeriodsFormStorage: TFormStorage;
    SCDCAkts_PeriodsFDTableDataSource: TDataSource;
    DirectorPersonFDQuery: TFDQuery;
    AssigneePersonFDQuery: TFDQuery;
    GetCustomerFDQuery: TFDQuery;
    PeriodsFDQuery: TFDQuery;
    AktsDBGridEh: TDBGridEh;
    AktsFDQuery: TFDQuery;
    AktsFDQueryDataSource: TDataSource;
    AktPrintBitBtn: TBitBtn;
    frxAktDBDataset: TfrxDBDataset;
    AktsReportFDQuery: TFDQuery;
    AktsPrintBitBtn: TBitBtn;
    frxAktReport: TfrxReport;
    frxAktDesigner: TfrxDesigner;
    ReportDesignBitBtn: TBitBtn;
    frxAktPDFExport: TfrxPDFExport;
    frxAktRTFExport: TfrxRTFExport;
    CopyAktsBitBtn: TBitBtn;
    RecalcBitBtn: TBitBtn;
    ReplaceAktDateBitBtn: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PeriodsFDQueryNewRecord(DataSet: TDataSet);
    procedure AktsFDQueryNewRecord(DataSet: TDataSet);
    procedure SCDCAkts_PeriodDBGridEhRowDetailPanelShow(Sender: TCustomDBGridEh; var CanShow: Boolean);
    procedure AktPrintBitBtnClick(Sender: TObject);
    procedure AktsPrintBitBtnClick(Sender: TObject);
    procedure ReportDesignBitBtnClick(Sender: TObject);
    procedure CopyAktsBitBtnClick(Sender: TObject);
    procedure PeriodsFDQueryBeforeDelete(DataSet: TDataSet);
    procedure RecalcBitBtnClick(Sender: TObject);
    procedure ReplaceAktDateBitBtnClick(Sender: TObject);
  private
    { Private declarations }
    FContractId : integer;

    function GetAktFileName(aPeriodId : integer): string;
  public
    { Public declarations }
    property ContractId: integer read FContractId write FContractId;
  end;

var
  SCDCAkts_PeriodsForm: TSCDCAkts_PeriodsForm;

implementation

{$R *.dfm}

procedure TSCDCAkts_PeriodsForm.AktsFDQueryNewRecord(DataSet: TDataSet);
var
  periodId: integer;
begin
  periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
  AktsFDQuery.FindField('periodId').Value := periodId;
end;

function TSCDCAkts_periodsForm.GetAktFileName(aPeriodId: Integer): string;
begin
  // ��������� ����� ������� ����
  Result:= SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQLScalar(
    'select nvl(c.customerAktFileName, ''AKT.FR3'') as customerAktFileName' + #13#10 +
    '  from periods p' + #13#10 +
    '  inner join contracts cnt on (cnt.contractId = p.contractId)' + #13#10 +
    '  inner join customers c on (c.customerId = cnt.customerId)' + #13#10 +
    '  where (p.periodId = :aPeriodId)', [aPeriodId]);
  // ������������� ����� ��� ������
  Result := UpperCase({$IFDEF DEBUG}'..\..\'+{$ENDIF}'FRX\' + Result);
end;

procedure TSCDCAkts_PeriodsForm.AktsPrintBitBtnClick(Sender: TObject);
var
  periodId: integer;
begin
  if (SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value <> null) then begin
    periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
    AktsReportFDQuery.Active := False;
    AktsReportFDQuery.FindParam('AAKTID').Clear;
    AktsReportFDQuery.FindParam('APERIODID').Value := periodId;
    AktsReportFDQuery.Active := True;

    frxAktReport.Clear;
    frxAktReport.LoadFromFile(GetAktFileName(periodId));
    frxAktReport.ShowReport(True);

    AktsReportFDQuery.Active := False;
  end;
end;

procedure TSCDCAkts_PeriodsForm.CopyAktsBitBtnClick(Sender: TObject);
var
  newPeriodId: integer;
  oldPeriodId: integer;
begin
  if (SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value <> null) then begin
    if (not Assigned(SCDCAkts_CopyAktsForm)) then begin
      SCDCAkts_CopyAktsForm := TSCDCAkts_CopyAktsForm.Create(Self);
    end;
    oldPeriodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
    SCDCAkts_CopyAktsForm.OldPeriodId := oldPeriodId;
    SCDCAkts_CopyAktsForm.PeriodStaticText.Caption := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodName').Value;

    newPeriodId := -1;

    SCDCAkts_CopyAktsForm.ShowModal;
    if (SCDCAkts_CopyAktsForm.ModalResult = mrOk) then begin
      newPeriodId := SCDCAkts_CopyAktsForm.NewPeriodId;
    end;

    FreeAndNil(SCDCAkts_CopyAktsForm);

    if (newPeriodId <> -1) then begin
      AktsFDQuery.Active := False;
      // �������� ������� �� akts
      SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL('delete from akts where (periodId = :aPeriodId)', [newPeriodId]);
      // ���������� ����� �� �������
      SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL(
        'insert into akts (aktid, periodid, subjectid, aktNumber, aktDate, amount, laboriousness) ' +
        'select null, :aNewPeriodId, a.subjectId, a.aktNumber, a.aktDate, a.amount, a.laboriousness ' +
        '  from Akts a ' +
        '  where (a.periodId = :aOldPeriodId)', [newPeriodId, oldPeriodId]);
      AktsFDQuery.Active := True;
      Refresh;
      MessageBox(Self.Handle, '����������� ����� ���������', '���������', MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TSCDCAkts_PeriodsForm.RecalcBitBtnClick(Sender: TObject);
var
  newPrice: double;
  periodId: integer;
begin
  if (SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value <> null) then begin
    if (not Assigned(SCDCAkts_RecalcForm)) then begin
      SCDCAkts_RecalcForm := TSCDCAkts_RecalcForm.Create(Self);
    end;

    SCDCAkts_RecalcForm.ShowModal;
    if (SCDCAkts_RecalcForm.ModalResult = mrOk) then begin
      newPrice := SCDCAkts_RecalcForm.NewPriceCurrencyEdit.Value;
      periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
      AktsFDQuery.Active := False;
      SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL(
        'update akts' + #13#10 +
        '  set amount = round(laboriousness * :aNewPrice, 2)' + #13#10 +
        '  where akts.periodId = :aPeriodId', [newPrice, periodId]);
      AktsFDQuery.Active := True;
      Refresh;
      MessageBox(Self.Handle, '�������� ���� ����� ��������', '���������', MB_OK + MB_ICONINFORMATION);
    end;

    FreeAndNil(SCDCAkts_RecalcForm);
  end;
end;

procedure TSCDCAkts_PeriodsForm.ReplaceAktDateBitBtnClick(Sender: TObject);
var
  periodId: integer;
  newAktDate: string;
  FS : TFormatSettings;
begin
  if (SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value <> null) then begin
    if (not Assigned(SCDCAkts_ReplaceAktDateForm)) then begin
      SCDCAkts_ReplaceAktDateForm := TSCDCAkts_ReplaceAktDateForm.Create(Self);
    end;

    SCDCAkts_ReplaceAktDateForm.ShowModal;

    if (SCDCAkts_ReplaceAktDateForm.ModalResult = mrOk) then begin
      periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;

      FS := TFormatSettings.Create;
      FS.ShortDateFormat := 'dd/mm/yyyy';
      newAktDate := DateToStr(SCDCAkts_ReplaceAktDateForm.NewAktDateEdit.Date, FS);
      AktsFDQuery.Active := False;
      SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL(
        'update akts' + #13#10 +
        '  set aktDate = to_date(:aNewAktDate, ''dd/mm/yyyy'')' + #13#10 +
        '  where akts.periodId = :aPeriodId', [newAktDate, periodId]);
      AktsFDQuery.Active := True;
      Refresh;
      MessageBox(Self.Handle, '������ ���� � ����� ���������', '���������', MB_OK + MB_ICONINFORMATION);
    end;

    FreeAndnil(SCDCAkts_ReplaceAktDateForm);
  end;
end;

procedure TSCDCAkts_PeriodsForm.ReportDesignBitBtnClick(Sender: TObject);
var
  periodId: integer;
begin
  if (SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value <> null) then begin
    frxAktReport.Clear;
    periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
    frxAktReport.LoadFromFile(GetAktFileName(periodId));
    frxAktReport.DesignReport(True);
  end;
end;

procedure TSCDCAkts_PeriodsForm.AktPrintBitBtnClick(Sender: TObject);
var
  aktId: integer;
  periodId: integer;
begin
  if (AktsDBGridEh.DataSource.DataSet.FindField('aktId').Value <> null) then begin
    periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
    aktId := AktsDBGridEh.DataSource.DataSet.FindField('aktId').Value;
    AktsReportFDQuery.Active := False;
    AktsReportFDQuery.FindParam('AAKTID').Value := aktId;
    AktsReportFDQuery.FindParam('APERIODID').Value := periodId;
    AktsReportFDQuery.Active := True;

    frxAktReport.Clear;
    frxAktReport.LoadFromFile(GetAktFileName(periodId));
    frxAktReport.ShowReport(True);

    AktsReportFDQuery.Active := False;
  end;
end;

procedure TSCDCAkts_PeriodsForm.FormActivate(Sender: TObject);
var
  CustomerId : integer;
begin
  GetCustomerFDQuery.Active := False;
  GetCustomerFDQuery.FindParam('ACONTRACTID').Value := ContractId;
  GetCustomerFDQuery.Active := True;
  if (not GetCustomerFDQuery.Eof) then begin
    CustomerId := GetCustomerFDQuery.FindField('customerId').Value;
  end else begin
    CustomerId := 0;
  end;

  DirectorPersonFDQuery.Active := False;
  DirectorPersonFDQuery.FindParam('aCustomerId').Value := CustomerId;
  DirectorPersonFDQuery.Active := True;

  AssigneePersonFDQuery.Active := False;
  AssigneePersonFDQuery.FindParam('aCustomerId').Value := CustomerId;
  AssigneePersonFDQuery.Active := True;

  PeriodsFDQuery.Active := False;
  PeriodsFDQuery.FindParam('ACONTRACTID').Value := ContractId;
  PeriodsFDQuery.Active := True;
end;

procedure TSCDCAkts_PeriodsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DirectorPersonFDQuery.Active := False;
  AssigneePersonFDQuery.Active := False;
end;

procedure TSCDCAkts_PeriodsForm.PeriodsFDQueryBeforeDelete(DataSet: TDataSet);
var
  periodId: integer;
begin
  // �������� ������� �� akts
  periodId := DataSet.FieldByName('periodId').AsInteger;
  SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL('delete from akts where (periodId = :aPeriodId)', [periodId]);
end;

procedure TSCDCAkts_PeriodsForm.PeriodsFDQueryNewRecord(DataSet: TDataSet);
begin
  PeriodsFDQuery.FindField('contractId').Value := contractId;
end;

procedure TSCDCAkts_PeriodsForm.SCDCAkts_PeriodDBGridEhRowDetailPanelShow(Sender: TCustomDBGridEh; var CanShow: Boolean);
var
  periodId: integer;
begin
  if (SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value <> null) then begin
    AktsFDQuery.Active := False;
    periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
    AktsFDQuery.FindParam('APERIODID').Value := periodId;
    AktsFDQuery.Active := True;
  end;
end;

end.
