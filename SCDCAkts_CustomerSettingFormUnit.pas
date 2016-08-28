unit SCDCAkts_CustomerSettingFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RxPlacemnt, SCDCAkts_DataModuleUnit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSCDCAkts_CustomerSettingForm = class(TForm)
    CustomersDBGridEh: TDBGridEh;
    SCDCAkts_CustomerSettingFormStorage: TFormStorage;
    CustomersDataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_CustomerSettingForm: TSCDCAkts_CustomerSettingForm;

implementation

{$R *.dfm}

end.
