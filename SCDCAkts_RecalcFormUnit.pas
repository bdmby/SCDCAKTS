unit SCDCAkts_RecalcFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, RxToolEdit, RxCurrEdit, RxPlacemnt;

type
  TSCDCAkts_RecalcForm = class(TForm)
    Label1: TLabel;
    NewPriceCurrencyEdit: TCurrencyEdit;
    OkBitBtn: TBitBtn;
    CancelBitBtn: TBitBtn;
    SCDCAkts_RecalcFormStorage: TFormStorage;
    procedure NewPriceCurrencyEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_RecalcForm: TSCDCAkts_RecalcForm;

implementation

{$R *.dfm}

procedure TSCDCAkts_RecalcForm.NewPriceCurrencyEditChange(Sender: TObject);
begin
  if (NewPriceCurrencyEdit.Value > 0.001) then begin
    OkBitBtn.Enabled := True;
  end else begin
    OkBitBtn.Enabled := False;
  end;
end;

end.
