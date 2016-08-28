program SCDCAkts;

uses
  Vcl.Forms,
  SCDCAkts_MainFormUnit in 'SCDCAkts_MainFormUnit.pas' {SCDCAkts_MainForm},
  SCDCAkts_CustomerSettingFormUnit in 'SCDCAkts_CustomerSettingFormUnit.pas' {CustomerSettingForm},
  SCDCAkts_DataModuleUnit in 'SCDCAkts_DataModuleUnit.pas' {SCDCAktsDataModule: TDataModule},
  SCDCAkts_SubjectSettingFormUnit in 'SCDCAkts_SubjectSettingFormUnit.pas' {SCDCAkts_SubjectSettingForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSCDCAkts_MainForm, SCDCAkts_MainForm);
  Application.CreateForm(TSCDCAktsDataModule, SCDCAktsDataModule);
  Application.Run;
end.
