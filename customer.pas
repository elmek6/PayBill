unit customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfrmCustomer = class(TForm)
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBGrid1: TDBGrid;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomer: TfrmCustomer;

implementation

uses dm1;

{$R *.dfm}

procedure TfrmCustomer.DBGrid1TitleClick(Column: TColumn);
begin
  //Table1.IndexFieldNames:=Column.FieldName;
end;

procedure TfrmCustomer.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//satirlari renklendirme
    if DBGrid1.DataSource.DataSet.RecNo mod 2 =  0 then
          Dbgrid1.Canvas.brush.Color:=clBlue
     else
     if DBGrid1.DataSource.DataSet.RecNo mod 2 =  1 then
           Dbgrid1.Canvas.Brush.Color:=clred  ;

     dbgrid1.Canvas.Brush.Color:=Dbgrid1.Canvas.Brush.Color;
     Dbgrid1.DefaultDrawColumnCell(Rect,Datacol,column,state);

end;

end.
