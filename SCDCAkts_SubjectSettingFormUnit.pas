unit SCDCAkts_SubjectSettingFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxPlacemnt, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, SCDCAkts_DataModuleUnit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSCDCAkts_SubjectSettingForm = class(TForm)
    SCDCAkts_SubjectSettingFormStorage: TFormStorage;
    SubjectDBGridEh: TDBGridEh;
    SCDCAkts_SubjectsFDTableDataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_SubjectSettingForm: TSCDCAkts_SubjectSettingForm;

implementation

{$R *.dfm}

end.
