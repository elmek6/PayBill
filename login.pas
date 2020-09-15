unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    txtPassword: TEdit;
    dblUser: TDBLookupComboBox;
    lblReenter: TLabel;
    txtReenter: TEdit;
    procedure FormShow(Sender: TObject);
    procedure dblUserClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses dm1, global;

{$R *.dfm}

function hextostr(value: string): string;
  var
    Buffer: array[0..255] of Char;
    pc :pchar;
begin
  pc := pchar(value);
  hextobin(pc, buffer, sizeof(buffer)); { >0 error }
  result := copy(buffer, 1, length(value)div 2);
end;

function strtohex(value: string): string;
  var
    Buffer: array[0..$FF] of Char;
    pc: array[0..$1FF] of Char;
begin
  strcopy(buffer, pchar(value));
  bintohex(buffer, pc, length(value));
  result := copy(pc, 1, length(value)*2);
end;


procedure TfrmLogin.FormShow(Sender: TObject);
begin
  frmDM1.zq_tUser.Active := True;
  txtPassword.Text := '';
  txtReenter.Text  := '';
  txtReenter.Visible := False;
  lblReenter.Visible := False;
end;

procedure TfrmLogin.dblUserClick(Sender: TObject);
  var
    reenter :Boolean;
begin
  reenter := False;

  if dblUser.ListSource.DataSet.FieldValues['sPassword'] = null then
    reenter := True;

  lblReenter.Visible := reenter;
  txtReenter.Visible := reenter;
  txtPassword.Text:= '';
  txtReenter.Text := '';

// ShowMessage(dblUser.Text);
end;

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
begin
  ModalResult := 0;

  //Sifre bos olamaz
  if txtPassword.Text = '' then begin
    ShowMessage('Enter your password');
    exit;
  end;

  //Sifre degistirme ekrani aciksa
  if txtReenter.Visible then begin

    //iki sifrede ayniysa
    if txtPassword.Text = txtReenter.Text then begin
      frmDM1.zq_tUser.Edit;
      dblUser.ListSource.DataSet.FieldValues['sPassword'] := strtohex(txtReenter.Text);
      frmDM1.zq_tUser.Post;
      ShowMessage('You password has changed succesful');

    //sifreler uyusmuyorsa
    end else begin
      ShowMessage('Your have to enter the tow box same password, please try again!');
      exit;
    end;
  end else begin

    //sifre yanlissa
    if txtPassword.Text <> hextostr(dblUser.ListSource.DataSet.FieldValues['sPassword']) then begin
      ShowMessage('Wrong password, please try again!');
      exit;
    end;
  end;

  //Sifre(ler) dogru
  Kullanici.bLogin:= True;
  Kullanici.sUser := dblUser.ListSource.DataSet.FieldValues['sUsername'];
  Kullanici.bManager := (dblUser.ListSource.DataSet.FieldValues['sLevel'] = 'M');
  close;
end;

end.
