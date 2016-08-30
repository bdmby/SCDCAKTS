unit SCDCAkts_CopyAktsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, DBCtrlsEh,
  SCDCAkts_DataModuleUnit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, RxPlacemnt, DBGridEh, DBLookupEh;

type
  TSCDCAkts_CopyAktsForm = class(TForm)
    OkBitBtn: TBitBtn;
    CancelBitBtn: TBitBtn;
    Label1: TLabel;
    PeriodStaticText: TStaticText;
    Label2: TLabel;
    NewPeriodFDQuery: TFDQuery;
    NewPeriodDataSource: TDataSource;
    WarningRichEdit: TRichEdit;
    SCDCAkts_CopyAktsFormStorage: TFormStorage;
    NewperiodDBLookupComboboxEh: TDBLookupComboboxEh;
    procedure FormActivate(Sender: TObject);
    procedure OkBitBtnClick(Sender: TObject);
    procedure NewperiodDBLookupComboboxEhChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OldPeriodId: integer;
    NewPeriodId: integer;
  end;

var
  SCDCAkts_CopyAktsForm: TSCDCAkts_CopyAktsForm;

implementation

{$R *.dfm}

procedure TSCDCAkts_CopyAktsForm.FormActivate(Sender: TObject);
begin
  NewPeriodFDQuery.Active := False;
  NewPeriodFDQuery.FindParam('AOLDPERIODID').Value := OldPeriodId;
  NewPeriodFDQuery.Active := True;

  NewPeriodId := -1;
  OkBitBtn.Enabled := False;
end;

procedure TSCDCAkts_CopyAktsForm.NewperiodDBLookupComboboxEhChange(Sender: TObject);
begin
  if (NewperiodDBLookupComboboxEh.KeyValue <> null) then begin
    OkBitBtn.Enabled := True;
  end else begin
    OkBitBtn.Enabled := False;
  end;
  Refresh;
end;

procedure TSCDCAkts_CopyAktsForm.OkBitBtnClick(Sender: TObject);
begin
  if (NewperiodDBLookupComboboxEh.KeyValue <> null) then begin
    NewPeriodId := NewperiodDBLookupComboboxEh.KeyValue;
  end;
end;

end.
