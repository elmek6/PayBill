unit po;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, StdCtrls, Buttons, ComCtrls;

type
  TfrmPO = class(TForm)
    DBNavigator1: TDBNavigator;
    dbgPO: TDBGrid;
    zqPO: TZQuery;
    dsPO: TDataSource;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    DelPO1: TMenuItem;
    PrinttheJO1: TMenuItem;
    N1: TMenuItem;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtSearch: TEdit;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    cboPrinter: TComboBox;
    GroupBox3: TGroupBox;
    txtPO: TEdit;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    BitBtn2: TBitBtn;
    zqPOiJobNum: TIntegerField;
    zqPOxDateSent: TDateField;
    zqPOiPO: TIntegerField;
    zqPOiInvoice: TIntegerField;
    zqPOsPrinter: TStringField;
    zqPOxOrderDate: TDateField;
    zqPOsSalesPerson: TStringField;
    zqPOsArtist: TStringField;
    zqPOsSpecial: TMemoField;
    zqPOpr_dArt: TFloatField;
    zqPOpr_dColorProof: TFloatField;
    zqPOpr_dPrint: TFloatField;
    zqPOpr_dAdditional: TFloatField;
    zqPOpr_dTotal: TFloatField;
    zqPOpr_dTax: TFloatField;
    zqPOpr_dSubtotal: TFloatField;
    zqPOpr_dDelivery: TFloatField;
    zqPOpr_dTotalTotal: TFloatField;
    zqPOpr_dDeposit: TFloatField;
    zqPOpr_dBalance: TFloatField;
    zqPOpr_bDepCC: TSmallintField;
    zqPOpr_bDepCash: TSmallintField;
    zqPOpr_bDepCK: TSmallintField;
    zqPOpr_bBalCC: TSmallintField;
    zqPOpr_bBalCash: TSmallintField;
    zqPOpr_bBalCK: TSmallintField;
    zqPOpr_sCKNum: TStringField;
    zqPOpr_sCKName: TStringField;
    zqPOpr_sCKDate: TDateField;
    zqPOpr_sCCNum: TStringField;
    zqPOpr_sCCName: TStringField;
    zqPOpr_sCCType: TStringField;
    zqPOpr_sCCExpDate: TStringField;
    zqPOpr_sCCSec: TStringField;
    zqPOsUV: TStringField;
    zqPOtj_sSizeWH: TStringField;
    zqPOtj_sFSizeWH: TStringField;
    zqPOtj_dTotalQty: TFloatField;
    zqPOtj_sLots: TStringField;
    zqPOtj_sColors: TStringField;
    zqPOtj_sPaperStock: TStringField;
    zqPOm_sAccount: TStringField;
    zqPOm_sAddress: TStringField;
    zqPOm_sCity: TStringField;
    zqPOm_sState: TStringField;
    zqPOm_sZip: TStringField;
    zqPOm_sPhone: TStringField;
    zqPOm_sFax: TStringField;
    zqPOm_sEMail: TStringField;
    zqPOm_sContName: TStringField;
    zqPOm_sContCell: TStringField;
    zqPOm_sContEMail: TStringField;
    zqPOart_sArt: TStringField;
    zqPOfold_bHalf: TSmallintField;
    zqPOfold_bTri: TSmallintField;
    zqPOfold_bGate: TSmallintField;
    zqPOfold_bLip: TSmallintField;
    zqPOfold_sOther: TStringField;
    zqPOhp_bStandard: TSmallintField;
    zqPOhp_b1d8: TSmallintField;
    zqPOhp_b3d16: TSmallintField;
    zqPOhp_b1d4: TSmallintField;
    zqPOhp_b1d2: TSmallintField;
    zqPOhp_sOther: TStringField;
    zqPOpads_sPads: TStringField;
    zqPOpads_sPages: TStringField;
    zqPOpads_sOther: TStringField;
    zqPObooks_sBooks: TStringField;
    zqPObooks_sPages: TStringField;
    zqPObooks_sOther: TStringField;
    zqPOlam_b3mill: TSmallintField;
    zqPOlam_b5mill: TSmallintField;
    zqPOlam_10mill: TSmallintField;
    zqPOlam_bShiny: TSmallintField;
    zqPOlam_bMatte: TSmallintField;
    zqPOlam_bGloss: TSmallintField;
    zqPOlam_bCapsulation: TSmallintField;
    zqPOlam_sOther: TStringField;
    zqPObin_bSaddleS: TSmallintField;
    zqPObin_bGlued: TSmallintField;
    zqPObin_sOther: TStringField;
    zqPOstamp_bFoil: TSmallintField;
    zqPOstamp_bEmboss: TSmallintField;
    zqPOstamp_sOther: TStringField;
    zqPOink_bRaised: TSmallintField;
    zqPOink_bPMS: TSmallintField;
    zqPOink_sPantone: TStringField;
    zqPOink_sOther: TStringField;
    zqPOdc_bRoundC: TSmallintField;
    zqPOdc_bCustomS: TSmallintField;
    zqPOdc_bCircle: TSmallintField;
    zqPOdc_sDiameter: TSmallintField;
    zqPOdc_sOther: TStringField;
    zqPOnum_sStart: TStringField;
    zqPOnum_sFinish: TStringField;
    zqPOnum_sOther: TStringField;
    zqPOd2_bFold: TSmallintField;
    zqPOd2_bHolePunch: TSmallintField;
    zqPOd2_Pads: TSmallintField;
    zqPOd2_bLaminate: TSmallintField;
    zqPOd2_bDieCut: TSmallintField;
    zqPOd2_bStamp: TSmallintField;
    zqPOd2_bNumbered: TSmallintField;
    zqPOd2_bBooks: TSmallintField;
    zqPOd2_bInk: TSmallintField;
    zqPOd2_bBinding: TSmallintField;
    zqPOd2_sOther: TStringField;
    zqPOdv_sDelivery: TStringField;
    zqPOdv_sShipTo: TStringField;
    zqPOdv_sCustShipping: TStringField;
    zqPOdv_sAddress: TStringField;
    zqPOdv_sCity: TStringField;
    zqPOdv_sState: TStringField;
    zqPOdv_sZip: TStringField;
    zqPObill_sBillTo: TStringField;
    zqPObill_sAddress: TStringField;
    zqPObill_sCity: TStringField;
    zqPObill_sState: TStringField;
    zqPObill_sZip: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure DelPO1Click(Sender: TObject);
    procedure dbgPOTitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgPOCellClick(Column: TColumn);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPO: TfrmPO;

implementation

uses dm1, global, qPO;

{$R *.dfm}

procedure TfrmPO.BitBtn1Click(Sender: TObject);
begin
  zqPO.Filtered := False;
  zqPO.Filter := format('ov_iPONum = "" AND sPrinter = %s', [QuotedStr(cboPrinter.Text)]);
  zqPO.Filtered := True;
end;

procedure TfrmPO.Add1Click(Sender: TObject);
begin
  if txtPO.Text='' then begin
    ShowMessage('Enter PO#');
    exit;
  end;

  dsPO.DataSet.Edit;
  dsPO.DataSet.FieldValues['ov_iPONum'] := txtPO.Text;
  dsPO.DataSet.Post;
end;

procedure TfrmPO.DelPO1Click(Sender: TObject);
begin
  dsPO.DataSet.Edit;
  dsPO.DataSet.FieldValues['ov_iPONum'] := '';
  dsPO.DataSet.Post;
end;

procedure TfrmPO.dbgPOTitleClick(Column: TColumn);
var m:integer;
begin
  m:=dbgPO.Columns.Grid.SelectedField.Index; //seçili olan field saha numarasý
//  zqPO.IndexFieldNames:=dbgPO.Columns[m].FieldName;

  zqPO.IndexFieldNames := Column.FieldName;
  zqPO.SortedFields := Column.FieldName;
//  zqPO.SortedFields
end;

procedure TfrmPO.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPO.FormShow(Sender: TObject);
begin
  zqPO.Active := True;
  zqPO.Filtered := False;
  dbgPO.Columns[1].PickList.LoadFromFile(PATH_FILES+'Printers');
  cboPrinter.Items.LoadFromFile(PATH_FILES+'Printers');
  cboPrinter.ItemIndex := 0;
end;

procedure TfrmPO.dbgPOCellClick(Column: TColumn);
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

procedure TfrmPO.BitBtn5Click(Sender: TObject);
begin
  zqPO.Filtered := False;
  if txtSearch.Text <> '' then begin
    zqPO.Filter := format('ov_iPONum = %s',[QuotedStr(txtSearch.Text)]);
    zqPO.Filtered := True;
  end;
end;

procedure TfrmPO.BitBtn2Click(Sender: TObject);
begin
  qrPO.Preview;
end;

end.
