unit weeklyIncome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls, ActnList, Menus;

type
  TfrmWeeklyIncome = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsWeeklyIncome1: TDataSource;
    zqWeeklyIncome1: TZQuery;
    dsWeeklyIncome2: TDataSource;
    zqWeeklyIncome2: TZQuery;
    DBGrid3: TDBGrid;
    dsWeeklyIncome3: TDataSource;
    zqWeeklyIncome3: TZQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    NewRecord1: TMenuItem;
    Delete1: TMenuItem;
    Refresh1: TMenuItem;
    ActionList1: TActionList;
    actNew: TAction;
    actDel: TAction;
    actRefresh: TAction;
    zqWeeklyIncome2xDate: TDateField;
    zqWeeklyIncome2iJobNum: TLargeintField;
    zqWeeklyIncome2sName: TStringField;
    zqWeeklyIncome2dAmount: TFloatField;
    zqWeeklyIncome2sDep: TStringField;
    zqWeeklyIncome2sBal: TStringField;
    zqWeeklyIncome2sType: TStringField;
    zqWeeklyIncome2sCheckNum: TStringField;
    zqWeeklyIncome3xDate: TDateField;
    zqWeeklyIncome3iJobNum: TLargeintField;
    zqWeeklyIncome3sName: TStringField;
    zqWeeklyIncome3dAmount: TFloatField;
    zqWeeklyIncome3sDep: TStringField;
    zqWeeklyIncome3sBal: TStringField;
    zqWeeklyIncome3sType: TStringField;
    zqWeeklyIncome1xDate: TDateField;
    zqWeeklyIncome1iJobNum: TLargeintField;
    zqWeeklyIncome1sName: TStringField;
    zqWeeklyIncome1dAmount: TFloatField;
    zqWeeklyIncome1sDep: TStringField;
    zqWeeklyIncome1sBal: TStringField;
    zqWeeklyIncome1sType: TStringField;
    zqWeeks: TZQuery;
    DateField1: TDateField;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lblCheck: TLabel;
    cmdShowTheWeek: TBitBtn;
    dtpBas: TDateTimePicker;
    dtpBit: TDateTimePicker;
    cmdCloseTheWeek: TBitBtn;
    DataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsWeeklyIncome1UpdateData(Sender: TObject);
    procedure dsWeeklyIncome2UpdateData(Sender: TObject);
    procedure dsWeeklyIncome3UpdateData(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure dtpBasChange(Sender: TObject);
    procedure DataSource1UpdateData(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWeeklyIncome: TfrmWeeklyIncome;

implementation

uses qWeeklyIncome;

{$R *.dfm}

procedure TfrmWeeklyIncome.BitBtn1Click(Sender: TObject);
begin
  qrWeeklyIncome.QuickRep1.Preview;
end;

procedure TfrmWeeklyIncome.FormShow(Sender: TObject);
begin
  zqWeeklyIncome1.Active := True;
  zqWeeklyIncome2.Active := True;
  zqWeeklyIncome3.Active := True;
end;

procedure TfrmWeeklyIncome.actNewExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) then
    TDBGrid(ActiveControl).DataSource.DataSet.Append;
end;

procedure TfrmWeeklyIncome.actDelExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) and
  (MessageDlg('Delete record ?', mtConfirmation,
    mbOKCancel, 0) <> idCancel) then

  TDBGrid(ActiveControl).DataSource.DataSet.Delete;
end;

procedure TfrmWeeklyIncome.actRefreshExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) then
    TDBGrid(ActiveControl).DataSource.DataSet.Refresh;
end;

procedure TfrmWeeklyIncome.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmWeeklyIncome.dsWeeklyIncome1UpdateData(Sender: TObject);
begin
  zqWeeklyIncome1.FieldByName('sType').AsString := 'CASH';
end;

procedure TfrmWeeklyIncome.dsWeeklyIncome2UpdateData(Sender: TObject);
begin
  zqWeeklyIncome2.FieldByName('sType').AsString := 'CHECKS';
end;

procedure TfrmWeeklyIncome.dsWeeklyIncome3UpdateData(Sender: TObject);
begin
  zqWeeklyIncome3.FieldByName('sType').AsString := 'CREDIT CARD';
end;

procedure TfrmWeeklyIncome.DBGridCellClick(Column: TColumn);
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

procedure TfrmWeeklyIncome.dtpBasChange(Sender: TObject);
  var
    tarihuyyomu :boolean;
    BasT,
    BitT  :TDate;

    sBasT,
    sBitT  :String;
    kasakapalimi :boolean;
begin
(*
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
  *)
end;

procedure TfrmWeeklyIncome.DataSource1UpdateData(Sender: TObject);
begin
  zqWeeks.FieldByName('sType').AsString := '_balance';
end;

end.
