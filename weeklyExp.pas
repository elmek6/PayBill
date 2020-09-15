unit weeklyExp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ComCtrls,
  Menus, ActnList, DateUtils;

type
  TfrmWeeklyExpenses = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    dsWeeklyExp1: TDataSource;
    zqWeeklyExp1: TZQuery;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    dsWeeklyExp2: TDataSource;
    zqWeeklyExp2: TZQuery;
    dsWeeklyExp3: TDataSource;
    zqWeeklyExp3: TZQuery;
    BitBtn6: TBitBtn;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    actNew: TAction;
    actDel: TAction;
    actRefresh: TAction;
    NewRecord1: TMenuItem;
    Delete1: TMenuItem;
    Refresh1: TMenuItem;
    zqWeeklyExp1xDate: TDateField;
    zqWeeklyExp1sMisc: TStringField;
    zqWeeklyExp1dSubTotal: TFloatField;
    zqWeeklyExp1sType: TStringField;
    zqWeeklyExp1sCashCheck: TStringField;
    zqWeeklyExp2xDate: TDateField;
    zqWeeklyExp2sMisc: TStringField;
    zqWeeklyExp2dSubTotal: TFloatField;
    zqWeeklyExp2sType: TStringField;
    zqWeeklyExp2sCashCheck: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    zqWeeks: TZQuery;
    zqWeeklyExp3xDate: TDateField;
    zqWeeklyExp3sMisc: TStringField;
    zqWeeklyExp3dSubTotal: TFloatField;
    zqWeeklyExp3sType: TStringField;
    zqWeeklyExp3sCashCheck: TStringField;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    cmdShowTheWeek: TBitBtn;
    dtpBas: TDateTimePicker;
    dtpBit: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    cmdCloseTheWeek: TBitBtn;
    lblCheck: TLabel;
    BitBtn2: TBitBtn;
    zqWeeksxDate: TDateField;
    zqWeekssMisc: TStringField;
    zqWeeksdSubTotal: TFloatField;
    zqWeekssType: TStringField;
    zqWeekssCashCheck: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure dsWeeklyExp1UpdateData(Sender: TObject);
    procedure dsWeeklyExp2UpdateData(Sender: TObject);
    procedure dsWeeklyExp3UpdateData(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actNewExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cmdShowTheWeekClick(Sender: TObject);
    procedure dtpBasChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
  published
    procedure DateList;
    { Public declarations }
  end;

var
  frmWeeklyExpenses: TfrmWeeklyExpenses;

implementation

uses dm1, qWeeklyExp, datelist;

{$R *.dfm}

procedure TfrmWeeklyExpenses.FormShow(Sender: TObject);
  var
    i :Integer;
    s :String;
begin
  zqWeeks.Active := True;
  zqWeeklyExp1.Active := True;
  zqWeeklyExp2.Active := True;
  zqWeeklyExp3.Active := True;




//SELECT MAX(xDate) FROM tWeeklyExp WHERE sType='_balance'; en buyuk tarihi getir
{
  for i := 1 to zqWeeks.RecordCount do begin
    s:= zqWeeks.FieldValues['xDate'];
    cboWeeks.Items.Add(s);
  end;
}

end;

procedure TfrmWeeklyExpenses.BitBtn6Click(Sender: TObject);
begin
  qrWeeklyExp.Preview;
end;

procedure TfrmWeeklyExpenses.dsWeeklyExp1UpdateData(Sender: TObject);
begin
  zqWeeklyExp1.FieldByName('sType').AsString := 'American Express';
end;

procedure TfrmWeeklyExpenses.dsWeeklyExp2UpdateData(Sender: TObject);
begin
  zqWeeklyExp2.FieldByName('sType').AsString := 'Daily Businiess Expenses';
end;

procedure TfrmWeeklyExpenses.dsWeeklyExp3UpdateData(Sender: TObject);
begin
  zqWeeklyExp3.FieldByName('sType').AsString := 'Weekly Businiess Expenses';
end;

procedure TfrmWeeklyExpenses.DBGrid3CellClick(Column: TColumn);
begin
// DBGrid Picklist alanýna verileriniz varsa o hücreye gelip
// otomatik olarak açýlacaktýr..

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

procedure TfrmWeeklyExpenses.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then { Eðer Enter basýlmýþsa}
   if not (ActiveControl is TDBGrid) then
    begin// TDBGrid üzerinde deðilse}
      Key := #0; { }
      Perform(WM_NEXTDLGCTL, 0, 0); { }
    end
     else
    if (ActiveControl is TDBGrid) then// TDBGridd ise}
    with TDBGrid(ActiveControl) do
    if selectedindex < (fieldcount -1) then begin// Alaný bir arttýr }
      selectedindex := selectedindex +1
    end else begin
      DataSource.DataSet.Next;
      selectedindex := 0;
    end;
end;

procedure TfrmWeeklyExpenses.actNewExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) then
    TDBGrid(ActiveControl).DataSource.DataSet.Append;
end;

procedure TfrmWeeklyExpenses.actDelExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) and
  (MessageDlg('Delete record ?', mtConfirmation,
    mbOKCancel, 0) <> idCancel) then

  TDBGrid(ActiveControl).DataSource.DataSet.Delete;
end;

procedure TfrmWeeklyExpenses.actRefreshExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) then
    TDBGrid(ActiveControl).DataSource.DataSet.Refresh;
end;

procedure TfrmWeeklyExpenses.cmdShowTheWeekClick(Sender: TObject);
  var
    SKT :TDate; //Son kapatma tarihi
    YKT :TDate; //Yeni kapatma tarihi
    BasT,
    BitT  :TDate;
begin
  basT := StartOfTheWeek(date); //bu harfaki Pzts
  bitT := EndOfTheWeek(date)-2; //bu haftaki Cuma


  if Now >(SKT+6) then begin
    YKT := SKT+6;//?
  end;




end;

procedure TfrmWeeklyExpenses.dtpBasChange(Sender: TObject);
  var
    tarihuyyomu :boolean;
    BasT,
    BitT  :TDate;

    sBasT,
    sBitT  :String;
    kasakapalimi :boolean;
begin
  BasT := StartOfTheWeek(dtpBas.Date);
  BitT := EndOfTheWeek(dtpBas.Date)-2;
  sBasT := DateToStr(BasT);
  sBitT := DateToStr(BitT);

  tarihuyyomu := BasT = dtpBas.Date;

  lblCheck.Visible := not tarihuyyomu;
  dtpBit.Date := BitT;

  if tarihuyyomu then begin
    { Kasa ya ait gun yoksa kasa kapatma acilsin yoksa show }
    kasakapalimi := zqWeeks.Locate('xDate', datetostr(BasT), []);
    cmdCloseTheWeek.Enabled := not kasakapalimi;
    cmdShowTheWeek.Enabled := kasakapalimi;


    zqWeeklyExp1.Filtered := False;
    zqWeeklyExp2.Filtered := False;
    zqWeeklyExp3.Filtered := False;

    zqWeeklyExp1.Filter := '';
    //format('(xDate>="%s") and (xDate<= "%s")', [sBasT, sBitT]);
    zqWeeklyExp2.Filter := format('(xDate=''%s'')', [sBasT]);
    zqWeeklyExp3.Filter := '(sBastT>=xDate) and (sBitT<=xDate)';

    zqWeeklyExp1.Filtered := True;
    zqWeeklyExp2.Filtered := True;
    zqWeeklyExp3.Filtered := True;
  end;
end;

procedure TfrmWeeklyExpenses.DateList;
  var
    i :Integer;
begin
  dtpBas.Date := StartOfTheWeek(Date);

  frmDateList.ListBox1.Clear;
  for i := 1 to zqWeeks.RecordCount do
  begin

    if zqWeekssType.AsString = '_balance' then
      frmDateList.ListBox1.AddItem(zqWeeks.FieldValues['xDate'],nil);
  end;
end;

procedure TfrmWeeklyExpenses.BitBtn2Click(Sender: TObject);
  var
    bas,
    son     :String;
begin
  DateList;
  frmDateList.ShowModal;

  bas := FormatDateTime('yyyy-mm-dd', (frmDateList.bast));
  son := FormatDateTime('yyyy-mm-dd', (frmDateList.bitt));

  zqWeeklyExp1.Filtered := False;
  zqWeeklyExp2.Filtered := False;
  zqWeeklyExp3.Filtered := False;

  zqWeeklyExp1.Filter := format('xDate >= %s and xDate <= %s', [QuotedStr(bas), QuotedStr(son)]);
  zqWeeklyExp2.Filter := format('xDate >= %s and xDate <= %s', [QuotedStr(bas), QuotedStr(son)]);
  zqWeeklyExp3.Filter := format('xDate >= %s and xDate <= %s', [QuotedStr(bas), QuotedStr(son)]);

 {
    //format('(xDate>="%s") and (xDate<= "%s")', [sBasT, sBitT]);
    zqWeeklyExp2.Filter := format('(xDate=''%s'')', [sBasT]);
    zqWeeklyExp3.Filter := '(sBastT>=xDate) and (sBitT<=xDate)';

  }
  zqWeeklyExp1.Filtered := True;
  zqWeeklyExp2.Filtered := True;
  zqWeeklyExp3.Filtered := True;

end;

end.
