unit f1search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB;

type
  TfrmF1Search = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    txtSearchText: TEdit;
    cboFieldName: TComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmF1Search: TfrmF1Search;

implementation

uses dm1;

{$R *.dfm}

procedure TfrmF1Search.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure TfrmF1Search.BitBtn3Click(Sender: TObject);
begin
  frmDM1.zqtJobOrder.Filtered := False;
  frmDM1.zqtJobOrder.Filter := format('%s = %s', [cboFieldName.Text, QuotedStr(txtSearchText.Text)]);
  frmDM1.zqtJobOrder.Filtered := True;
  frmDM1.zqtJobOrder.FilterOptions := [foNoPartialCompare];
end;

procedure TfrmF1Search.DBGrid1TitleClick(Column: TColumn);
begin
  frmDM1.zqtJobOrder.IndexFieldNames := Column.FieldName;
  frmDM1.zqtJobOrder.SortedFields := Column.FieldName;
end;

procedure TfrmF1Search.BitBtn1Click(Sender: TObject);
begin
  frmDM1.zqtJobOrder.Filtered := False;
end;

end.
