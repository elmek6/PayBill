unit f1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Buttons, OleCtnrs, Mask, ComCtrls,
  ToolWin, ImgList, DB, QuickRpt, QRCtrls, Menus, ActnList, ActnMan;


type THackDBNavigator = class(TDBNavigator);  

type
  TfrmF1 = class(TForm)
    GroupBox1: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    Label51: TLabel;
    GroupBox6: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox7: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    dbPrCCDep: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    dbPrCKDep: TDBCheckBox;
    DBEdit28: TDBEdit;
    dbPrCCBal: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    dbPrCKBal: TDBCheckBox;
    DBComboBox5: TDBComboBox;
    DBEdit19: TDBEdit;
    DBEdit40: TDBEdit;
    dbcArt: TDBComboBox;
    ActionImgs: TImageList;
    DBComboBox2: TDBComboBox;
    Label41: TLabel;
    calcpay: TBitBtn;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    dbcSize: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label42: TLabel;
    dbeOrderDate: TDBEdit;
    dbcSalesPerson: TDBComboBox;
    dbcArtist: TDBComboBox;
    Panel3: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    dbeCity: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    dbeState: TDBEdit;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    GroupBox8: TGroupBox;
    Label52: TLabel;
    Label45: TLabel;
    Label49: TLabel;
    Label58: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label46: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    GroupBox4: TGroupBox;
    Label55: TLabel;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBEdit55: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    gbHolePunch: TGroupBox;
    gbPads: TGroupBox;
    gbLaminate: TGroupBox;
    gbBinding: TGroupBox;
    gbInk: TGroupBox;
    gbFold: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    Label4: TLabel;
    DBEdit38: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    Label18: TLabel;
    DBEdit39: TDBEdit;
    gbBooks: TGroupBox;
    gbStamp: TGroupBox;
    DBEdit41: TDBEdit;
    Label50: TLabel;
    DBEdit42: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit43: TDBEdit;
    Label56: TLabel;
    DBEdit44: TDBEdit;
    Label57: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit45: TDBEdit;
    Label66: TLabel;
    DBEdit48: TDBEdit;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    Label67: TLabel;
    DBEdit49: TDBEdit;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    Label68: TLabel;
    DBEdit50: TDBEdit;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    Label69: TLabel;
    DBEdit51: TDBEdit;
    gbDieCut: TGroupBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBEdit52: TDBEdit;
    gbNumbered: TGroupBox;
    Label70: TLabel;
    DBEdit53: TDBEdit;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    Label71: TLabel;
    DBEdit54: TDBEdit;
    Label72: TLabel;
    DBEdit56: TDBEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    StaticText1: TStaticText;
    Label5: TLabel;
    DBEdit46: TDBEdit;
    Label47: TLabel;
    DBEdit47: TDBEdit;
    Label48: TLabel;
    DBEdit57: TDBEdit;
    Label73: TLabel;
    DBEdit58: TDBEdit;
    Label40: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Image1: TImage;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label74: TLabel;
    DateTimePicker1: TDateTimePicker;
    pnlCreditCard: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    pnlCheck: TPanel;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Panel4: TPanel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit36: TDBEdit;
    dbcPrinter: TDBComboBox;
    dtpDateSent: TDateTimePicker;
    StaticText2: TStaticText;
    PopupMenu1: TPopupMenu;
    Active1: TMenuItem;
    Deactive1: TMenuItem;
    Label75: TLabel;
    DBEdit59: TDBEdit;
    Label76: TLabel;
    DBEdit60: TDBEdit;
    Label77: TLabel;
    Label78: TLabel;
    DBEdit61: TDBEdit;
    Memo1: TMemo;
    Shape5: TShape;
    DBCheckBox24: TDBCheckBox;
    amF1: TActionManager;
    actFilter: TAction;
    actPrint: TAction;
    actClose: TAction;
    ControlBar1: TControlBar;
    DBNavigator1: TDBNavigator;
    ToolBar4: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton22: TToolButton;
    DBComboBox4: TDBComboBox;
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure calcpayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox24Click(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure DBCheckBox23Click(Sender: TObject);
    procedure DBCheckBox20Click(Sender: TObject);
    procedure DBCheckBox21Click(Sender: TObject);
    procedure DBCheckBox25Click(Sender: TObject);
    procedure DBCheckBox22Click(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure dbeOrderDateChange(Sender: TObject);
    procedure dbPrCCClick(Sender: TObject);
    procedure dbPrCKClick(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure dtpDateSentChange(Sender: TObject);
    procedure Deactive1Click(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure SetupHackedNavigator(const Navigator : TDBNavigator;
                                   const Glyphs : TImageList);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    procedure dbEditYap;
  public
    { Public declarations }
  published
  end;


var
  frmF1: TfrmF1;

implementation

uses f1search, dm1, customer, qJobOrder, global;

{$R *.dfm}

procedure TfrmF1.ToolButton1Click(Sender: TObject);
begin
  frmF1Search.ShowModal;

end;

procedure TfrmF1.SpeedButton1Click(Sender: TObject);
begin
  frmCustomer.ShowModal;
end;

procedure TfrmF1.ToolButton17Click(Sender: TObject);
begin
  frmDM1.dstJobOrder.DataSet.Refresh;
end;

procedure TfrmF1.calcpayClick(Sender: TObject);
  var
    tax,
    st,
    t, //total
    tt //totaltotal
      :double;

begin
  if not ((frmDM1.dstJobOrder.DataSet.Active) and (frmDM1.dstJobOrder.State in [dsEdit, dsInsert])) then
    exit;

  //total
  t := frmDM1.zqtJobOrderpr_dArt.AsFloat;
  t := t + frmDM1.zqtJobOrderpr_dColorProof.AsFloat;
  t := t + frmDM1.zqtJobOrderpr_dPrint.AsFloat;
  t := t + frmDM1.zqtJobOrderpr_dAdditional.AsFloat;

  tax := t / 100 * Ayarlar.dTax;
  st := t + tax;
  tt := st + frmDM1.zqtJobOrderpr_dDelivery.AsFloat;

  frmDM1.zqtJobOrderpr_dTotal.AsFloat := t;
  frmDM1.zqtJobOrderpr_dTax.AsFloat := tax;
  frmDM1.zqtJobOrderpr_dSubtotal.AsFloat := st;
  frmDM1.zqtJobOrderpr_dTotalTotal.AsFloat := tt;
  frmDM1.zqtJobOrderpr_dBalance.AsFloat := tt - frmDM1.zqtJobOrderpr_dDeposit.AsFloat
end;

procedure TfrmF1.FormShow(Sender: TObject);
begin
  dbcSalesPerson.Items.LoadFromFile(PATH_FILES+'Sales Persons');
  dbcArtist.Items.LoadFromFile(PATH_FILES+'Artists');
  dbcPrinter.Items.LoadFromFile(PATH_FILES+'Printers');
  dbcSize.Items.LoadFromFile(PATH_FILES+'Size');
  dbcArt.Items.LoadFromFile(PATH_FILES+'Art');

//  frmF1.Height := Bevel1.Height;
//  DataChanged := frmDm1.dstJobOrder.OnDataChange;
end;

procedure TfrmF1.DBCheckBox19Click(Sender: TObject);
begin
  gbFold.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox7Click(Sender: TObject);
begin
  gbHolePunch.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox24Click(Sender: TObject);
begin
  gbPads.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox14Click(Sender: TObject);
begin
  gbLaminate.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox23Click(Sender: TObject);
begin
  gbDieCut.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox20Click(Sender: TObject);
begin
  gbStamp.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox21Click(Sender: TObject);
begin
  gbNumbered.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox25Click(Sender: TObject);
begin
  gbBooks.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox22Click(Sender: TObject);
begin
  gbInk.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.DBCheckBox8Click(Sender: TObject);
begin
  gbBinding.Visible := (sender as TDBCheckBox).Checked;
end;

procedure TfrmF1.BitBtn2Click(Sender: TObject);
begin
  if not ((frmDM1.dstJobOrder.DataSet.Active) and (frmDM1.dstJobOrder.State in [dsEdit, dsInsert])) then
    exit;

  frmDM1.zqtJobOrderbill_sBillTo.AsString := frmDM1.zqtJobOrderm_sAccount.AsString;
  frmDM1.zqtJobOrderbill_sAddress.AsString := frmDM1.zqtJobOrderm_sAddress.AsString;
  frmDM1.zqtJobOrderbill_sCity.AsString := frmDM1.zqtJobOrderm_sCity.AsString;
  frmDM1.zqtJobOrderbill_sState.AsString := frmDM1.zqtJobOrderm_sState.AsString;
  frmDM1.zqtJobOrderbill_sZip.AsString := frmDM1.zqtJobOrderm_sZip.AsString;

end;

procedure TfrmF1.BitBtn1Click(Sender: TObject);
begin
  if not ((frmDM1.dstJobOrder.DataSet.Active) and (frmDM1.dstJobOrder.State in [dsEdit, dsInsert])) then
    exit;

  frmDM1.zqtJobOrderdv_sShipTo.AsString := frmDM1.zqtJobOrderm_sAccount.AsString;
  frmDM1.zqtJobOrderdv_sAddress.AsString := frmDM1.zqtJobOrderm_sAddress.AsString;
  frmDM1.zqtJobOrderdv_sCity.AsString := frmDM1.zqtJobOrderm_sCity.AsString;
  frmDM1.zqtJobOrderdv_sState.AsString := frmDM1.zqtJobOrderm_sState.AsString;
  frmDM1.zqtJobOrderdv_sZip.AsString := frmDM1.zqtJobOrderm_sZip.AsString;

end;

procedure TfrmF1.DateTimePicker1Change(Sender: TObject);
begin
  dbEditYap;
  frmDM1.zqtJobOrderxOrderDate.AsDateTime := DateTimePicker1.Date;
end;

procedure TfrmF1.dbEditYap;
begin
  if not (frmDM1.dstJobOrder.State in [dsEdit, dsInsert]) then
    frmDM1.dstJobOrder.Edit;
end;

procedure TfrmF1.dbeOrderDateChange(Sender: TObject);
begin
  DateTimePicker1.Date := frmDM1.zqtJobOrderxOrderDate.AsDateTime;
end;

procedure TfrmF1.dbPrCCClick(Sender: TObject);
  var
    cc  :Boolean;
begin
  cc := (dbPrCCDep.Checked) or (dbPrCCBal.Checked);

  pnlCreditCard.Visible := cc;
end;

procedure TfrmF1.dbPrCKClick(Sender: TObject);
  var
    ck  :Boolean;
begin
  ck := (dbPrCKDep.Checked) or (dbPrCKBal.Checked);
  pnlCheck.Visible := ck;
end;

procedure TfrmF1.DBEdit18Change(Sender: TObject);
begin
  if frmDM1.zqtJobOrderxDateSent.Text='' then
    dtpDateSent.Date := now
  else
    dtpDateSent.Date := frmDM1.zqtJobOrderxDateSent.AsDateTime;
end;

procedure TfrmF1.dtpDateSentChange(Sender: TObject);
begin
  dbEditYap;
  frmDM1.zqtJobOrderxDateSent.AsDateTime := dtpDateSent.Date;

end;

procedure TfrmF1.Deactive1Click(Sender: TObject);
begin
  frmDM1.zqtJobOrder.Filtered := False;
end;

procedure TfrmF1.actSaveExecute(Sender: TObject);
begin
  frmDM1.dstJobOrder.DataSet.Post;

end;

procedure TfrmF1.actFilterExecute(Sender: TObject);
begin
  frmF1Search.ShowModal;

end;

procedure TfrmF1.actPrintExecute(Sender: TObject);
begin
  qrJobOrder.QuickRep1.Preview;
end;

procedure TfrmF1.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmF1.FormCreate(Sender: TObject);
begin
  SetupHackedNavigator(DBNavigator1, ActionImgs);
end;


procedure TfrmF1.SetupHackedNavigator
  (const Navigator : TDBNavigator;
   const Glyphs : TImageList);
const
  Captions : array[TNavigateBtn] of string =
      ('First', 'Prior', 'Next', 'Last', 'New',
       'Delete', 'Edit', 'Save', 'Cancel', 'Refresh');
var
  btn : TNavigateBtn;
begin
  for btn := Low(TNavigateBtn) to High(TNavigateBtn) do
  with THackDBNavigator(Navigator).Buttons[btn] do
  begin
    //from the Captions const array
    Caption := Captions[btn];

    //the number of images in the Glyph property
    NumGlyphs := 1;
    // Remove the old glyph.
    Glyph := nil;
    // Assign the custom one
    Glyphs.GetBitmap(Integer(btn),Glyph);
    // gylph position
    Layout := blGlyphLeft;

  end;
end; (*SetupHackedNavigator*)

procedure TfrmF1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  var
    i   :Integer;
begin

  case Button of

    nbInsert:
      begin

        frmDM1.dstJobOrder.DataSet.Append;
        frmDM1.zqtJobOrderxOrderDate.AsDateTime := date;
        frmDM1.zqtJobOrderm_sState.AsString := 'NY';
        frmDM1.zqtJobOrderm_sCity.AsString := 'New York';

        for i := 0 to ComponentCount-1 do
        begin
          if Components[i].ClassName = 'TDBCheckBox' then
            (Components[i] as TDBCheckBox).Checked := False;
        end;
      end;

  end;
end;

end.
