unit weeklyio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, Buttons, ImgList, ExtCtrls, DBCtrls, Mask,
  Menus, ActnList;

type
  TfrmWeeklyIO = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    dsWeeklyIO1: TDataSource;
    zqWeeklyIO1: TZQuery;
    DBGrid2: TDBGrid;
    dsWeeklyIO2: TDataSource;
    zqWeeklyIO2: TZQuery;
    DBGrid3: TDBGrid;
    dsWeeklyIO3: TDataSource;
    zqWeeklyIO3: TZQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    zqWeeklyIO1xDate: TDateField;
    zqWeeklyIO1sIOType: TStringField;
    zqWeeklyIO1sCheckNum: TStringField;
    zqWeeklyIO1sName: TStringField;
    zqWeeklyIO1dAmount: TFloatField;
    zqWeeklyIO2xDate: TDateField;
    zqWeeklyIO2sIOType: TStringField;
    zqWeeklyIO2dAmount: TFloatField;
    zqWeeklyIO2iJobNum: TLargeintField;
    zqWeeklyIO2sVBType: TStringField;
    zqWeeklyIO3xDate: TDateField;
    zqWeeklyIO3sIOType: TStringField;
    zqWeeklyIO3sCheckNum: TStringField;
    zqWeeklyIO3sName: TStringField;
    zqWeeklyIO3dAmount: TFloatField;
    zqWeeklyIO3iJobNum: TLargeintField;
    zqWeeklyIO3sDep1: TStringField;
    zqWeeklyIO3sBal1: TStringField;
    zqWeeklyIO3dCash: TFloatField;
    zqWeeklyIO3sDep2: TStringField;
    zqWeeklyIO3sBal2: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    ActionList1: TActionList;
    actNew: TAction;
    actDel: TAction;
    actRefresh: TAction;
    PopupMenu1: TPopupMenu;
    NewRecord1: TMenuItem;
    Delete1: TMenuItem;
    Refresh1: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure dsWeeklyIO1UpdateData(Sender: TObject);
    procedure dsWeeklyIO2UpdateData(Sender: TObject);
    procedure dsWeeklyIO3UpdateData(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWeeklyIO: TfrmWeeklyIO;

implementation

uses dm1, qWeeklyIO;

{$R *.dfm}

procedure TfrmWeeklyIO.FormShow(Sender: TObject);
begin
  zqWeeklyIO1.Active := True;
  zqWeeklyIO2.Active := True;
  zqWeeklyIO3.Active := True;
end;

procedure TfrmWeeklyIO.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmWeeklyIO.BitBtn1Click(Sender: TObject);
begin
  qrWeeklyIO.Preview;
end;

procedure TfrmWeeklyIO.actNewExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) then
    TDBGrid(ActiveControl).DataSource.DataSet.Append;

end;

procedure TfrmWeeklyIO.actDelExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) and
  (MessageDlg('Delete record ?', mtConfirmation,
    mbOKCancel, 0) <> idCancel) then

  TDBGrid(ActiveControl).DataSource.DataSet.Delete;

end;

procedure TfrmWeeklyIO.actRefreshExecute(Sender: TObject);
begin
  if (ActiveControl is TDBGrid) then
    TDBGrid(ActiveControl).DataSource.DataSet.Refresh;

end;

procedure TfrmWeeklyIO.dsWeeklyIO1UpdateData(Sender: TObject);
begin
  zqWeeklyIO1.FieldByName('sIOType').AsString := 'CPO';
end;

procedure TfrmWeeklyIO.dsWeeklyIO2UpdateData(Sender: TObject);
begin
  zqWeeklyIO2.FieldByName('sIOType').AsString := 'VB';
end;

procedure TfrmWeeklyIO.dsWeeklyIO3UpdateData(Sender: TObject);
begin
  zqWeeklyIO3.FieldByName('sIOType').AsString := 'BDM';
end;

procedure TfrmWeeklyIO.DBGridCellClick(Column: TColumn);
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

end.
