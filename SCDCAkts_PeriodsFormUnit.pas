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
  SCFRDigit, frxDesgn, frxRich, frxExportDOCX, frxExportPDF, frxExportRTF, SCDCAkts_CopyAktsFormUnit;

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
  private
    { Private declarations }
    FContractId : integer;
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

procedure TSCDCAkts_PeriodsForm.AktsPrintBitBtnClick(Sender: TObject);
begin
  AktsReportFDQuery.Active := False;
  AktsReportFDQuery.FindParam('AAKTID').Clear;
  AktsReportFDQuery.Active := True;

  frxAktReport.Clear;
  frxAktReport.LoadFromFile({$IFDEF DEBUG}'..\..\'+{$ENDIF}'FRX\AKT.FR3');
  frxAktReport.ShowReport(True);

  AktsReportFDQuery.Active := False;
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
      // Удаление записей из akts
      SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL('delete from akts where (periodId = :aPeriodId)', [newPeriodId]);
      // Добавление актов из периода
      SCDCAkts_DataModuleUnit.SCDCAkts_DataModule.SCDCAktsFDConnection.ExecSQL(
        'insert into akts (aktid, periodid, subjectid, aktNumber, aktDate, amount, laboriousness) ' +
        'select null, :aNewPeriodId, a.subjectId, a.aktNumber, a.aktDate, a.amount, a.laboriousness ' +
        '  from Akts a ' +
        '  where (a.periodId = :aOldPeriodId)', [newPeriodId, oldPeriodId]);
      AktsFDQuery.Active := True;
      Refresh;
    end;
  end;
end;

procedure TSCDCAkts_PeriodsForm.ReportDesignBitBtnClick(Sender: TObject);
begin
  frxAktReport.Clear;
  frxAktReport.LoadFromFile({$IFDEF DEBUG}'..\..\'+{$ENDIF}'FRX\AKT.FR3');
  frxAktReport.DesignReport(True);
end;

procedure TSCDCAkts_PeriodsForm.AktPrintBitBtnClick(Sender: TObject);
var
  AktId: integer;
begin
  if (AktsDBGridEh.DataSource.DataSet.FindField('aktId').Value <> null) then begin
    AktId := AktsDBGridEh.DataSource.DataSet.FindField('aktId').Value;
    AktsReportFDQuery.Active := False;
    AktsReportFDQuery.FindParam('AAKTID').Value := AktId;
    AktsReportFDQuery.Active := True;

    frxAktReport.Clear;
    frxAktReport.LoadFromFile({$IFDEF DEBUG}'..\..\'+{$ENDIF}'FRX\AKT.FR3');
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
  // Удаление записей из akts
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
