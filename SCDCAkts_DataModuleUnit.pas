unit SCDCAkts_DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TSCDCAkts_DataModule = class(TDataModule)
    SCDCAktsFDConnection: TFDConnection;
    CustomersFDTable: TFDTable;
    SubjectsFDTable: TFDTable;
    ClientsFDTable: TFDTable;
    PersonsFDTable: TFDTable;
    PersonTypeRefsFDTable: TFDTable;
    ContractsFDTable: TFDTable;
    procedure ContractsFDTableBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_DataModule: TSCDCAkts_DataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TSCDCAkts_DataModule.ContractsFDTableBeforeDelete(DataSet: TDataSet);
var
  contractId: integer;
begin
  contractId := DataSet.FindField('CONTRACTID').Value;

  // Удаление записей из contract2subjects
  SCDCAktsFDConnection.ExecSQL('delete from contract2subjects where (contractId = :aContractId)', [contractId]);
  // Удаление записей из akts
  SCDCAktsFDConnection.ExecSQL('delete from akts where (periodId in (select periodId from periods p where (p.contractId = :aContractId)))', [contractId]);
  // Удаление записей из periods
  SCDCAktsFDConnection.ExecSQL('delete from periods where (contractId = :aContractId)', [contractId]);
end;

end.
