unit dm1;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfrmDM1 = class(TDataModule)
    ZConnectionMain: TZConnection;
    zqtJobOrder: TZQuery;
    dstJobOrder: TDataSource;
    ds_tUser: TDataSource;
    zq_tUser: TZQuery;
    zq_tUsersUsername: TStringField;
    zq_tUsersPassword: TStringField;
    zq_tUsersLevel: TStringField;
    zqtJobOrderiJobNum: TIntegerField;
    zqtJobOrderxDateSent: TDateField;
    zqtJobOrderiPO: TIntegerField;
    zqtJobOrderiInvoice: TIntegerField;
    zqtJobOrdersPrinter: TStringField;
    zqtJobOrderxOrderDate: TDateField;
    zqtJobOrdersSalesPerson: TStringField;
    zqtJobOrdersArtist: TStringField;
    zqtJobOrdersSpecial: TMemoField;
    zqtJobOrderpr_dArt: TFloatField;
    zqtJobOrderpr_dColorProof: TFloatField;
    zqtJobOrderpr_dPrint: TFloatField;
    zqtJobOrderpr_dAdditional: TFloatField;
    zqtJobOrderpr_dTotal: TFloatField;
    zqtJobOrderpr_dTax: TFloatField;
    zqtJobOrderpr_dSubtotal: TFloatField;
    zqtJobOrderpr_dDelivery: TFloatField;
    zqtJobOrderpr_dTotalTotal: TFloatField;
    zqtJobOrderpr_dDeposit: TFloatField;
    zqtJobOrderpr_dBalance: TFloatField;
    zqtJobOrderpr_bDepCC: TSmallintField;
    zqtJobOrderpr_bDepCash: TSmallintField;
    zqtJobOrderpr_bDepCK: TSmallintField;
    zqtJobOrderpr_bBalCC: TSmallintField;
    zqtJobOrderpr_bBalCash: TSmallintField;
    zqtJobOrderpr_bBalCK: TSmallintField;
    zqtJobOrderpr_sCKNum: TStringField;
    zqtJobOrderpr_sCCNum: TStringField;
    zqtJobOrderpr_sCCExpDate: TStringField;
    zqtJobOrderpr_sCCSec: TStringField;
    zqtJobOrdersUV: TStringField;
    zqtJobOrdertj_sSizeWH: TStringField;
    zqtJobOrdertj_sFSizeWH: TStringField;
    zqtJobOrdertj_dTotalQty: TFloatField;
    zqtJobOrdertj_sLots: TStringField;
    zqtJobOrdertj_sColors: TStringField;
    zqtJobOrdertj_sPaperStock: TStringField;
    zqtJobOrderm_sAccount: TStringField;
    zqtJobOrderm_sAddress: TStringField;
    zqtJobOrderm_sCity: TStringField;
    zqtJobOrderm_sState: TStringField;
    zqtJobOrderm_sZip: TStringField;
    zqtJobOrderm_sPhone: TStringField;
    zqtJobOrderm_sFax: TStringField;
    zqtJobOrderm_sEMail: TStringField;
    zqtJobOrderm_sContName: TStringField;
    zqtJobOrderm_sContCell: TStringField;
    zqtJobOrderm_sContEMail: TStringField;
    zqtJobOrderart_sArt: TStringField;
    zqtJobOrderfold_bHalf: TSmallintField;
    zqtJobOrderfold_bTri: TSmallintField;
    zqtJobOrderfold_bGate: TSmallintField;
    zqtJobOrderfold_bLip: TSmallintField;
    zqtJobOrderfold_sOther: TStringField;
    zqtJobOrderhp_bStandard: TSmallintField;
    zqtJobOrderhp_b1d8: TSmallintField;
    zqtJobOrderhp_b3d16: TSmallintField;
    zqtJobOrderhp_b1d4: TSmallintField;
    zqtJobOrderhp_b1d2: TSmallintField;
    zqtJobOrderhp_sOther: TStringField;
    zqtJobOrderpads_sPads: TStringField;
    zqtJobOrderpads_sPages: TStringField;
    zqtJobOrderpads_sOther: TStringField;
    zqtJobOrderbooks_sBooks: TStringField;
    zqtJobOrderbooks_sPages: TStringField;
    zqtJobOrderbooks_sOther: TStringField;
    zqtJobOrderlam_b3mill: TSmallintField;
    zqtJobOrderlam_b5mill: TSmallintField;
    zqtJobOrderlam_10mill: TSmallintField;
    zqtJobOrderlam_bShiny: TSmallintField;
    zqtJobOrderlam_bMatte: TSmallintField;
    zqtJobOrderlam_bGloss: TSmallintField;
    zqtJobOrderlam_bCapsulation: TSmallintField;
    zqtJobOrderlam_sOther: TStringField;
    zqtJobOrderbin_bSaddleS: TSmallintField;
    zqtJobOrderbin_bGlued: TSmallintField;
    zqtJobOrderbin_sOther: TStringField;
    zqtJobOrderstamp_bFoil: TSmallintField;
    zqtJobOrderstamp_bEmboss: TSmallintField;
    zqtJobOrderstamp_sOther: TStringField;
    zqtJobOrderink_bRaised: TSmallintField;
    zqtJobOrderink_bPMS: TSmallintField;
    zqtJobOrderink_sPantone: TStringField;
    zqtJobOrderink_sOther: TStringField;
    zqtJobOrderdc_bRoundC: TSmallintField;
    zqtJobOrderdc_bCustomS: TSmallintField;
    zqtJobOrderdc_bCircle: TSmallintField;
    zqtJobOrderdc_sDiameter: TSmallintField;
    zqtJobOrderdc_sOther: TStringField;
    zqtJobOrdernum_sStart: TStringField;
    zqtJobOrdernum_sFinish: TStringField;
    zqtJobOrdernum_sOther: TStringField;
    zqtJobOrderd2_bFold: TSmallintField;
    zqtJobOrderd2_bHolePunch: TSmallintField;
    zqtJobOrderd2_Pads: TSmallintField;
    zqtJobOrderd2_bLaminate: TSmallintField;
    zqtJobOrderd2_bDieCut: TSmallintField;
    zqtJobOrderd2_bStamp: TSmallintField;
    zqtJobOrderd2_bNumbered: TSmallintField;
    zqtJobOrderd2_bBooks: TSmallintField;
    zqtJobOrderd2_bInk: TSmallintField;
    zqtJobOrderd2_bBinding: TSmallintField;
    zqtJobOrderd2_sOther: TStringField;
    zqtJobOrderdv_sDelivery: TStringField;
    zqtJobOrderdv_sShipTo: TStringField;
    zqtJobOrderdv_sCustShipping: TStringField;
    zqtJobOrderdv_sAddress: TStringField;
    zqtJobOrderdv_sCity: TStringField;
    zqtJobOrderdv_sState: TStringField;
    zqtJobOrderdv_sZip: TStringField;
    zqtJobOrderbill_sBillTo: TStringField;
    zqtJobOrderbill_sAddress: TStringField;
    zqtJobOrderbill_sCity: TStringField;
    zqtJobOrderbill_sState: TStringField;
    zqtJobOrderbill_sZip: TStringField;
    zqtJobOrderpr_sCKName: TStringField;
    zqtJobOrderpr_sCKDate: TDateField;
    zqtJobOrderpr_sCCName: TStringField;
    zqtJobOrderpr_sCCType: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM1: TfrmDM1;

implementation

{$R *.dfm}

end.

{ Look at the Diagram }
