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
  SCFRDigit;

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
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PeriodsFDQueryNewRecord(DataSet: TDataSet);
    procedure AktsFDQueryNewRecord(DataSet: TDataSet);
    procedure SCDCAkts_PeriodDBGridEhRowDetailPanelShow(Sender: TCustomDBGridEh; var CanShow: Boolean);
    procedure AktPrintBitBtnClick(Sender: TObject);
    procedure AktsPrintBitBtnClick(Sender: TObject);
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

procedure TSCDCAkts_PeriodsForm.AktPrintBitBtnClick(Sender: TObject);
var
  AktId: integer;
begin
  AktId := AktsDBGridEh.DataSource.DataSet.FindField('aktId').Value;
  AktsReportFDQuery.Active := False;
  AktsReportFDQuery.FindParam('AAKTID').Value := AktId;
  AktsReportFDQuery.Active := True;

  frxAktReport.Clear;
  frxAktReport.LoadFromFile({$IFDEF DEBUG}'..\..\'+{$ENDIF}'FRX\AKT.FR3');
  frxAktReport.ShowReport(True);

  AktsReportFDQuery.Active := False;
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

procedure TSCDCAkts_PeriodsForm.PeriodsFDQueryNewRecord(DataSet: TDataSet);
begin
  PeriodsFDQuery.FindField('contractId').Value := contractId;
end;

procedure TSCDCAkts_PeriodsForm.SCDCAkts_PeriodDBGridEhRowDetailPanelShow(Sender: TCustomDBGridEh; var CanShow: Boolean);
var
  periodId: integer;
begin
  AktsFDQuery.Active := False;
  periodId := SCDCAkts_PeriodDBGridEh.DataSource.DataSet.FindField('periodId').Value;
  AktsFDQuery.FindParam('APERIODID').Value := periodId;
  AktsFDQuery.Active := True;
end;

end.
