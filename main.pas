unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, ActnMan, StdCtrls, Buttons, ComCtrls, ExtCtrls,
  ToolWin, ImgList, Jpeg, Sockets;

type
  TfrmMain = class(TForm)
    ActionManager1: TActionManager;
    actJobOrder: TAction;
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    imgMain: TImage;
    actSettings: TAction;
    ActionImgs: TImageList;
    actWeeklyExp: TAction;
    actWeeklyIO: TAction;
    actWeeklyIncome: TAction;
    actLogin: TAction;
    actConnection: TAction;
    CoolBar2: TCoolBar;
    ToolBar5: TToolBar;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolBar6: TToolBar;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton44: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    stbMain: TStatusBar;
    ToolButton10: TToolButton;
    actPO: TAction;
    ToolButton11: TToolButton;
    actOutInv: TAction;
    Timer1: TTimer;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    actVenDtl: TAction;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    actSalRep: TAction;
    TcpServer1: TTcpServer;
    ToolButton14: TToolButton;
    actExit: TAction;
    procedure actJobOrderExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSettingsExecute(Sender: TObject);
    procedure actWeeklyExpExecute(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actConnectionExecute(Sender: TObject);
    procedure actWeeklyIOExecute(Sender: TObject);
    procedure actWeeklyIncomeExecute(Sender: TObject);
    procedure actPOExecute(Sender: TObject);
    procedure actOutInvExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actVenDtlExecute(Sender: TObject);
    procedure actSalRepExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
  private
    { Private declarations }
    procedure showStatusBar;
    function CheckLevel(c: char): boolean;
  public
  published
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses f1, dm1, settings, global, login, weeklyExp, weeklyio, weeklyIncome,
  po, qPO, qOutInv, vendtl, qSalRep;

{$R *.dfm}

procedure TfrmMain.actJobOrderExecute(Sender: TObject);
begin
  if not CheckLevel('U') then
    exit;

  frmF1.ShowModal;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  MonthCalendar1.Top := (frmMain.Height - MonthCalendar1.Height) div 2;
  MonthCalendar1.Left := (frmMain.Width - MonthCalendar1.Width) div 2;
end;

procedure TfrmMain.FormShow(Sender: TObject);
  var
    tj  :TJpegImage;
begin
  AyarlarYazOku(False);


 //Resim yukle
  if Ayarlar.sWallPaper<>'' then begin
    tj := TJpegImage.Create;
    tj.LoadFromFile(Ayarlar.sWallPaper);
    imgMain.Picture.Bitmap.Width := tj.Width;
    imgMain.Picture.Bitmap.Height := tj.Height;
    imgMain.Picture.Bitmap.Canvas.Draw(0, 0, tj);
    tj.Free;
  end;

  MonthCalendar1.Visible := Ayarlar.bCalendar;

  FormResize(sender);
  showStatusBar;
end;

procedure TfrmMain.actSettingsExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmSettings.ShowModal;
end;

procedure TfrmMain.actWeeklyExpExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmWeeklyExpenses.ShowModal;
end;

procedure TfrmMain.actLoginExecute(Sender: TObject);
begin
  if Kullanici.bLogin then begin
    Kullanici.bLogin := False;
    Kullanici.sUser  := '';
    actLogin.Caption := 'Login';
  end else begin
    frmLogin.ShowModal;
    if Kullanici.bLogin then begin
      actLogin.Caption := 'Logout';
      actConnection.Execute;
    end;
  end;

  showStatusBar;
end;

procedure TfrmMain.actConnectionExecute(Sender: TObject);
begin
  frmDM1.ZConnectionMain.User := Ayarlar.sDBUser;
  frmDM1.ZConnectionMain.HostName := Ayarlar.sHost;
  frmDM1.zqtJobOrder.Active := True;
  
  stbMain.Panels[0].Text := 'Connected';
end;

procedure TfrmMain.actWeeklyIOExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmWeeklyIO.ShowModal;
end;

procedure TfrmMain.actWeeklyIncomeExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmWeeklyIncome.ShowModal;
end;

procedure TfrmMain.actPOExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmPO.ShowModal;
end;

procedure TfrmMain.actOutInvExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmDM1.zqtJobOrder.Filtered := False;
  frmDM1.zqtJobOrder.Filter :='pr_dBalance > 0';
  frmDM1.zqtJobOrder.Filtered := True;

  qrOutInv.Preview;

  frmDM1.zqtJobOrder.Filtered := False;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  stbMain.Panels.Items[5].Text :=
    FormatDateTime('"Date:" dddd, mmmm d, yyyy    "Time:" hh:mm AM/PM', Now );
end;

procedure TfrmMain.actVenDtlExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  frmVenDtl.ShowModal;
end;

procedure TfrmMain.showStatusBar;

begin

  //System name
  stbMain.Panels[1].Text := format('System Name:  %s', [TCPServer1.LocalHostName]);
  //User
  stbMain.Panels[2].Text := format('User:  %s', [kullanici.sUser]);
  //Version
//  stbMain.Panels[2].Text :=  format('System Name:  %s', [TCPServer1.LocalHostName]);
  //License
//  stbMain.Panels[3].Text :=  format('System Name:  %s', [TCPServer1.LocalHostName]);
  //Company
//  stbMain.Panels[4].Text :=  format('System Name:  %s', [TCPServer1.LocalHostName]);

end;

function TfrmMain.CheckLevel(c: char): boolean;
begin
  frmDM1.zq_tUser.Active := True;

  Result := True;
  if not Kullanici.bLogin then begin
    actLogin.Execute;

    if not Kullanici.bLogin then begin
      ShowMessage('You must logon!!!');
      result := False;
      exit;
    end;
  end;

  if (not Kullanici.bManager) and (c='M') then begin
    ShowMessage('You must be manager!!!');
    result := False
  end;

end;

procedure TfrmMain.actSalRepExecute(Sender: TObject);
begin
  if not CheckLevel('M') then
    exit;

  qrSalRep.Preview;
end;

procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  close;
end;

end.
