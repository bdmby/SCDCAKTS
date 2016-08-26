unit SCDCAkts_MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.UI.Intf, FireDAC.VCLUI.Error,
  FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Stan.Option,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBVertGridsEh;

type
  TSCDCAkts_MainForm = class(TForm)
    DBVertGridEh1: TDBVertGridEh;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_MainForm: TSCDCAkts_MainForm;

implementation

{$R *.dfm}

end.
