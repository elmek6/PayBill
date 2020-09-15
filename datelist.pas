unit datelist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils;

type
  TfrmDateList = class(TForm)
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bast    :TDate;
    bitt    :TDate;

  end;

var
  frmDateList: TfrmDateList;

implementation

{$R *.dfm}

procedure TfrmDateList.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDateList.BitBtn1Click(Sender: TObject);
  var
    tarih :TDate;
begin
  if listbox1.Items.Count=0 then
    tarih := EndOfTheWeek(Date)-2
  else
    tarih := strtodate(listbox1.Items[ListBox1.Items.Count-1])+7;

  if MessageDlg(format('It''ll be close %s Do you want to contunie ?', [datetostr(tarih)]), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  end;
end;

procedure TfrmDateList.BitBtn2Click(Sender: TObject);
begin
  if ListBox1.ItemIndex <0 then begin
    ShowMessage('You  didn''t select any date');
    exit;
  end;


  bitT := StrToDate(ListBox1.Items[ListBox1.ItemIndex]);
  basT := bitT-4; //bu haftaki Cuma

  ShowMessageFmt('baslama %s    bitis %s', [datetostr(bast), datetostr(bitt)]);
end;

end.
