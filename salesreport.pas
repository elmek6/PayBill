unit salesreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TfrmSalesReport = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalesReport: TfrmSalesReport;

implementation

uses dm1;

{$R *.dfm}

end.
