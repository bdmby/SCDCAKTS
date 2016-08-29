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

end.
