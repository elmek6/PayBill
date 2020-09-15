unit settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, ValEdit, ExtCtrls, DBCtrls,
  DBGrids;

type
  TfrmSettings = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    txtDBUser: TEdit;
    Label4: TLabel;
    txtHost: TEdit;
    BitBtn4: TBitBtn;
    txtWallPaper: TEdit;
    BitBtn5: TBitBtn;
    Label5: TLabel;
    chkCalendar: TCheckBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    txtTax: TEdit;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label12: TLabel;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    cboFiles: TComboBox;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses dm1, global;

{$R *.dfm}

procedure TfrmSettings.FormShow(Sender: TObject);
begin
  txtDBUser.Text      := Ayarlar.sDBUser;
  txtHost.Text        := Ayarlar.sHost;
  txtWallPaper.Text   := Ayarlar.sWallPaper;
  chkCalendar.Checked := Ayarlar.bCalendar;
  txtTax.Text         := floattostr(Ayarlar.dTax);
end;

procedure TfrmSettings.BitBtn6Click(Sender: TObject);
begin
  Ayarlar.sDBUser    := txtDBUser.Text;
  Ayarlar.sHost      := txtHost.Text;
  Ayarlar.sWallPaper := txtWallPaper.Text;
  Ayarlar.bCalendar  := chkCalendar.Checked;
  Ayarlar.dTax       := strtofloat(txtTax.Text);

  
  AyarlarYazOku(True);
end;

procedure TfrmSettings.BitBtn5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    txtWallPaper.Text := OpenDialog1.FileName
  else
    txtWallPaper.Text := '';
end;

procedure TfrmSettings.BitBtn1Click(Sender: TObject);
begin
  memo1.Lines.LoadFromFile(PATH_FILES+cboFiles.Text);
end;

procedure TfrmSettings.BitBtn2Click(Sender: TObject);
begin
  memo1.Lines.SaveToFile(PATH_FILES+cboFiles.Text);
end;

procedure TfrmSettings.DBGrid1CellClick(Column: TColumn);
begin
 if Column.PickList.Count > 0 then
  begin
    keybd_event(VK_F2,0,0,0);
    keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
    keybd_event(VK_MENU,0,0,0);
    keybd_event(VK_DOWN,0,0,0);
    keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
    keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
  end;

end;

end.
