unit SCDCAkts_PersonSettingFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RxPlacemnt, SCDCAkts_DataModuleUnit;

type
  TSCDCAkts_PersonSettingForm = class(TForm)
    SCDCAkts_PeronSettingFormStorage: TFormStorage;
    SCDCAkts_PersonSettingDBGridEh: TDBGridEh;
    SCDCAkts_PersonSettingDataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_PersonSettingForm: TSCDCAkts_PersonSettingForm;

implementation

{$R *.dfm}

end.
