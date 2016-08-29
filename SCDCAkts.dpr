program SCDCAkts;

uses
  Vcl.Forms,
  SCDCAkts_MainFormUnit in 'SCDCAkts_MainFormUnit.pas' {SCDCAkts_MainForm},
  SCDCAkts_CustomerSettingFormUnit in 'SCDCAkts_CustomerSettingFormUnit.pas' {SCDCAkts_CustomerSettingForm},
  SCDCAkts_DataModuleUnit in 'SCDCAkts_DataModuleUnit.pas' {SCDCAkts_DataModule: TDataModule},
  SCDCAkts_SubjectSettingFormUnit in 'SCDCAkts_SubjectSettingFormUnit.pas' {SCDCAkts_SubjectSettingForm},
  SCDCAkts_ClientSettingFormUnit in 'SCDCAkts_ClientSettingFormUnit.pas' {SCDCAkts_ClientSettingForm},
  SCDCAkts_PersonSettingFormUnit in 'SCDCAkts_PersonSettingFormUnit.pas' {SCDCAkts_PersonSettingForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSCDCAkts_MainForm, SCDCAkts_MainForm);
  Application.CreateForm(TSCDCAkts_DataModule, SCDCAkts_DataModule);
  Application.Run;
end.
