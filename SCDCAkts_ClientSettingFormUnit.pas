unit SCDCAkts_ClientSettingFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SCDCAkts_DataModuleUnit,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RxPlacemnt;

type
  TSCDCAkts_ClientSettingForm = class(TForm)
    ClientSettingDBGridEh: TDBGridEh;
    SCDSAkts_ClientSettingDataSource: TDataSource;
    SCDCAkts_ClientSettingFormStorage: TFormStorage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_ClientSettingForm: TSCDCAkts_ClientSettingForm;

implementation

{$R *.dfm}

end.
