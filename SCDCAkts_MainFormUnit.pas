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
  GridsEh, DBAxisGridsEh, DBVertGridsEh, Vcl.Menus, RxPlacemnt,
  SCDCAkts_SubjectSettingFormUnit, SCDCAkts_CustomerSettingFormUnit;

type
  TSCDCAkts_MainForm = class(TForm)
    SCDCAktsMainMenu: TMainMenu;
    FileMenuItem: TMenuItem;
    ExitProgramMenuItem: TMenuItem;
    SettingsMenuItem: TMenuItem;
    CustomerSettingMenuItem: TMenuItem;
    SCDCAkts_MainFormStorage: TFormStorage;
    SubjectsMenuItem: TMenuItem;
    procedure ExitProgramMenuItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerSettingMenuItemClick(Sender: TObject);
    procedure SubjectsMenuItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_MainForm: TSCDCAkts_MainForm;

implementation

{$R *.dfm}

procedure TSCDCAkts_MainForm.CustomerSettingMenuItemClick(Sender: TObject);
begin
  if (not Assigned(CustomerSettingForm)) then begin
    CustomerSettingForm := TCustomerSettingForm.Create(Self);
  end;

  CustomerSettingForm.ShowModal;

  FreeAndNil(CustomerSettingForm);
end;

procedure TSCDCAkts_MainForm.ExitProgramMenuItemClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TSCDCAkts_MainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSCDCAkts_MainForm.SubjectsMenuItemClick(Sender: TObject);
begin
  if (not Assigned(SCDCAkts_SubjectSettingForm)) then begin
    SCDCAkts_SubjectSettingForm := TSCDCAkts_SubjectSettingForm.Create(Self);
  end;

  SCDCAkts_SubjectSettingForm.ShowModal;

  FreeAndNil(SCDCAkts_SubjectSettingForm);
end;

end.
