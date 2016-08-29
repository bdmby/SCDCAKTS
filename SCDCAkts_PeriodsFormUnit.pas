unit SCDCAkts_PeriodsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RxPlacemnt, SCDCAkts_DataModuleUnit, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSCDCAkts_PeriodsForm = class(TForm)
    SCDCAkts_PeriodDBGridEh: TDBGridEh;
    SCDCAkts_PeriodsFormStorage: TFormStorage;
    SCDCAkts_PeriodsFDTableDataSource: TDataSource;
    DirectorPersonFDQuery: TFDQuery;
    AssigneePersonFDQuery: TFDQuery;
    GetCustomerFDQuery: TFDQuery;
    PeriodsFDQuery: TFDQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PeriodsFDQueryNewRecord(DataSet: TDataSet);
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

end.
