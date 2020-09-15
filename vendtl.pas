unit vendtl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, ComCtrls;

type
  TfrmVenDtl = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    ComboBox1: TComboBox;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenDtl: TfrmVenDtl;

implementation

uses dm1, qvendtl, global;

{$R *.dfm}

procedure TfrmVenDtl.BitBtn2Click(Sender: TObject);
begin
  qrVenDtl.Preview;
end;

procedure TfrmVenDtl.FormShow(Sender: TObject);
begin
  DBGrid1.Columns[8].PickList.LoadFromFile(PATH_FILES+'Printers');
end;

procedure TfrmVenDtl.DBGrid1CellClick(Column: TColumn);
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
