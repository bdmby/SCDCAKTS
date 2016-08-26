program SCDCAktsProject;

uses
  Vcl.Forms,
  SCDCAkts_MainFormUnit in 'SCDCAkts_MainFormUnit.pas' {SCDCAkts_MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSCDCAkts_MainForm, SCDCAkts_MainForm);
  Application.Run;
end.
