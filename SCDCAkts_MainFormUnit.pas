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
  SCDCAkts_SubjectSettingFormUnit, SCDCAkts_CustomerSettingFormUnit,
  SCDCAkts_DataModuleUnit, SCDCAkts_ClientSettingFormUnit,
  SCDCAkts_PersonSettingFormUnit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.ImageList, Vcl.ImgList, Vcl.Buttons, SCDCAkts_PeriodsFormUnit;

type
  TSCDCAkts_MainForm = class(TForm)
    SCDCAktsMainMenu: TMainMenu;
    FileMenuItem: TMenuItem;
    ExitProgramMenuItem: TMenuItem;
    SettingsMenuItem: TMenuItem;
    CustomerSettingMenuItem: TMenuItem;
    SCDCAkts_MainFormStorage: TFormStorage;
    SubjectSettingMenuItem: TMenuItem;
    ClientSettingMenuItem: TMenuItem;
    PersonSettingMenuItem: TMenuItem;
    PeriodsBitBtn: TBitBtn;
    SCDCAkts_MainFormImageList: TImageList;
    ContractsDataSource: TDataSource;
    SCDCAkts_ContractsDBGridEh: TDBGridEh;
    procedure ExitProgramMenuItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerSettingMenuItemClick(Sender: TObject);
    procedure SubjectSettingMenuItemClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ClientSettingMenuItemClick(Sender: TObject);
    procedure PersonSettingMenuItemClick(Sender: TObject);
    procedure PeriodsBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_MainForm: TSCDCAkts_MainForm;

implementation

{$R *.dfm}

procedure TSCDCAkts_MainForm.ClientSettingMenuItemClick(Sender: TObject);
begin
  if (not Assigned(SCDCAkts_ClientSettingForm)) then begin
    SCDCAkts_ClientSettingForm := TSCDCAkts_ClientSettingForm.Create(Self);
  end;

  SCDCAkts_ClientSettingForm.ShowModal;

  FreeAndNil(SCDCAkts_ClientSettingForm);
end;

procedure TSCDCAkts_MainForm.CustomerSettingMenuItemClick(Sender: TObject);
begin
  if (not Assigned(SCDCAkts_CustomerSettingForm)) then begin
    SCDCAkts_CustomerSettingForm := TSCDCAkts_CustomerSettingForm.Create(Self);
  end;

  SCDCAkts_CustomerSettingForm.ShowModal;

  FreeAndNil(SCDCAkts_CustomerSettingForm);
end;

procedure TSCDCAkts_MainForm.ExitProgramMenuItemClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TSCDCAkts_MainForm.FormActivate(Sender: TObject);
begin
  SCDCAkts_DataModule.SCDCAktsFDConnection.Connected := False;
  SCDCAkts_DataModule.SCDCAktsFDConnection.Params.Database := {$IFDEF DEBUG}'..\..\'+{$ENDIF}'DATABASE\SCDCAKTS.DB';
  SCDCAkts_DataModule.SCDCAktsFDConnection.Connected := True;
  if SCDCAkts_DataModule.SCDCAktsFDConnection.Connected then begin
    SCDCAkts_DataModule.CustomersFDTable.Active := True;
    SCDCAkts_DataModule.SubjectsFDTable.Active := True;
    SCDCAkts_DataModule.ClientsFDTable.Active := True;
    SCDCAkts_DataModule.PersonsFDTable.Active := True;
    SCDCAkts_DataModule.PersonTypeRefsFDTable.Active := True;
    SCDCAkts_DataModule.ContractsFDTable.Active := True;
  end;
end;

procedure TSCDCAkts_MainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SCDCAkts_DataModule.SCDCAktsFDConnection.Connected then begin
    SCDCAkts_DataModule.CustomersFDTable.Active := False;
    SCDCAkts_DataModule.SubjectsFDTable.Active := False;
    SCDCAkts_DataModule.ClientsFDTable.Active := False;
    SCDCAkts_DataModule.PersonsFDTable.Active := False;
    SCDCAkts_DataModule.PersonTypeRefsFDTable.Active := False;
    SCDCAkts_DataModule.ContractsFDTable.Active := False;
    SCDCAkts_DataModule.SCDCAktsFDConnection.Connected := False;
  end;

  Action := caFree;
end;

procedure TSCDCAkts_MainForm.PeriodsBitBtnClick(Sender: TObject);
begin
  if (SCDCAkts_ContractsDBGridEh.DataSource.DataSet.FindField('contractId').Value <> null) then begin
    if (not Assigned(SCDCAkts_PeriodsForm)) then begin
      SCDCAkts_PeriodsForm := TSCDCAkts_PeriodsForm.Create(Self);
      SCDCAkts_PeriodsForm.ContractId := SCDCAkts_ContractsDBGridEh.DataSource.DataSet.FindField('contractId').Value;
    end;

    SCDCAkts_PeriodsForm.ShowModal;

    FreeAndNil(SCDCAkts_PeriodsForm);
  end;
end;

procedure TSCDCAkts_MainForm.PersonSettingMenuItemClick(Sender: TObject);
begin
  if (not Assigned(SCDCAkts_PersonSettingForm)) then begin
    SCDCAkts_PersonSettingForm := TSCDCAkts_PersonSettingForm.Create(Self);
  end;

  SCDCAkts_PersonSettingForm.ShowModal;

  FreeAndNil(SCDCAkts_PersonSettingForm);
end;

procedure TSCDCAkts_MainForm.SubjectSettingMenuItemClick(Sender: TObject);
begin
  if (not Assigned(SCDCAkts_SubjectSettingForm)) then begin
    SCDCAkts_SubjectSettingForm := TSCDCAkts_SubjectSettingForm.Create(Self);
  end;

  SCDCAkts_SubjectSettingForm.ShowModal;

  FreeAndNil(SCDCAkts_SubjectSettingForm);
end;

end.
