unit SCDCAkts_ReplaceAktDateFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxPlacemnt, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, Vcl.Buttons;

type
  TSCDCAkts_ReplaceAktDateForm = class(TForm)
    SCDCAkts_ReplaceAktDateFormStorage: TFormStorage;
    Label1: TLabel;
    NewAktDateEdit: TDateEdit;
    OkBitBtn: TBitBtn;
    CancelBitBtn: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCDCAkts_ReplaceAktDateForm: TSCDCAkts_ReplaceAktDateForm;

implementation

{$R *.dfm}

end.
