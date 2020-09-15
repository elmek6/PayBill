object frmDM1: TfrmDM1
  OldCreateOrder = False
  Left = 227
  Top = 220
  Height = 284
  Width = 392
  object ZConnectionMain: TZConnection
    Protocol = 'mysql-4.1'
    Port = 3306
    Database = 'floss'
    User = 'root'
    Catalog = 'floss'
    Connected = True
    Left = 32
    Top = 12
  end
  object zqtJobOrder: TZQuery
    Connection = ZConnectionMain
    SQL.Strings = (
      'select * from tJobOrder')
    Params = <>
    Left = 32
    Top = 160
    object zqtJobOrderiJobNum: TIntegerField
      FieldName = 'iJobNum'
    end
    object zqtJobOrderxDateSent: TDateField
      FieldName = 'xDateSent'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object zqtJobOrderiPO: TIntegerField
      FieldName = 'iPO'
    end
    object zqtJobOrderiInvoice: TIntegerField
      FieldName = 'iInvoice'
    end
    object zqtJobOrdersPrinter: TStringField
      FieldName = 'sPrinter'
      Size = 10
    end
    object zqtJobOrderxOrderDate: TDateField
      FieldName = 'xOrderDate'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object zqtJobOrdersSalesPerson: TStringField
      FieldName = 'sSalesPerson'
    end
    object zqtJobOrdersArtist: TStringField
      FieldName = 'sArtist'
    end
    object zqtJobOrdersSpecial: TMemoField
      FieldName = 'sSpecial'
      BlobType = ftMemo
    end
    object zqtJobOrderpr_dArt: TFloatField
      FieldName = 'pr_dArt'
      currency = True
    end
    object zqtJobOrderpr_dColorProof: TFloatField
      FieldName = 'pr_dColorProof'
      currency = True
    end
    object zqtJobOrderpr_dPrint: TFloatField
      FieldName = 'pr_dPrint'
      currency = True
    end
    object zqtJobOrderpr_dAdditional: TFloatField
      FieldName = 'pr_dAdditional'
      currency = True
    end
    object zqtJobOrderpr_dTotal: TFloatField
      FieldName = 'pr_dTotal'
      currency = True
    end
    object zqtJobOrderpr_dTax: TFloatField
      FieldName = 'pr_dTax'
      currency = True
    end
    object zqtJobOrderpr_dSubtotal: TFloatField
      FieldName = 'pr_dSubtotal'
      currency = True
    end
    object zqtJobOrderpr_dDelivery: TFloatField
      FieldName = 'pr_dDelivery'
      currency = True
    end
    object zqtJobOrderpr_dDeposit: TFloatField
      FieldName = 'pr_dDeposit'
      currency = True
    end
    object zqtJobOrderpr_dBalance: TFloatField
      FieldName = 'pr_dBalance'
      currency = True
    end
    object zqtJobOrderpr_dTotalTotal: TFloatField
      FieldName = 'pr_dTotalTotal'
      DisplayFormat = '$,0.00'
    end
    object zqtJobOrderpr_bDepCC: TSmallintField
      FieldName = 'pr_bDepCC'
    end
    object zqtJobOrderpr_bDepCash: TSmallintField
      FieldName = 'pr_bDepCash'
    end
    object zqtJobOrderpr_bDepCK: TSmallintField
      FieldName = 'pr_bDepCK'
    end
    object zqtJobOrderpr_bBalCC: TSmallintField
      FieldName = 'pr_bBalCC'
    end
    object zqtJobOrderpr_bBalCash: TSmallintField
      FieldName = 'pr_bBalCash'
    end
    object zqtJobOrderpr_bBalCK: TSmallintField
      FieldName = 'pr_bBalCK'
    end
    object zqtJobOrderpr_sCKNum: TStringField
      FieldName = 'pr_sCKNum'
      Size = 10
    end
    object zqtJobOrderpr_sCKName: TStringField
      FieldName = 'pr_sCKName'
      Size = 30
    end
    object zqtJobOrderpr_sCKDate: TDateField
      FieldName = 'pr_sCKDate'
    end
    object zqtJobOrderpr_sCCName: TStringField
      FieldName = 'pr_sCCName'
      Size = 30
    end
    object zqtJobOrderpr_sCCType: TStringField
      FieldName = 'pr_sCCType'
      Size = 15
    end
    object zqtJobOrderpr_sCCNum: TStringField
      FieldName = 'pr_sCCNum'
    end
    object zqtJobOrderpr_sCCExpDate: TStringField
      FieldName = 'pr_sCCExpDate'
      EditMask = '!99/99;1;_'
      Size = 5
    end
    object zqtJobOrderpr_sCCSec: TStringField
      FieldName = 'pr_sCCSec'
      Size = 4
    end
    object zqtJobOrdersUV: TStringField
      FieldName = 'sUV'
      Size = 3
    end
    object zqtJobOrdertj_sSizeWH: TStringField
      FieldName = 'tj_sSizeWH'
      Size = 5
    end
    object zqtJobOrdertj_sFSizeWH: TStringField
      FieldName = 'tj_sFSizeWH'
      Size = 5
    end
    object zqtJobOrdertj_dTotalQty: TFloatField
      FieldName = 'tj_dTotalQty'
    end
    object zqtJobOrdertj_sLots: TStringField
      FieldName = 'tj_sLots'
      Size = 5
    end
    object zqtJobOrdertj_sColors: TStringField
      FieldName = 'tj_sColors'
      Size = 5
    end
    object zqtJobOrdertj_sPaperStock: TStringField
      FieldName = 'tj_sPaperStock'
    end
    object zqtJobOrderm_sAccount: TStringField
      FieldName = 'm_sAccount'
      Required = True
      Size = 40
    end
    object zqtJobOrderm_sAddress: TStringField
      FieldName = 'm_sAddress'
      Size = 40
    end
    object zqtJobOrderm_sCity: TStringField
      FieldName = 'm_sCity'
      Size = 15
    end
    object zqtJobOrderm_sState: TStringField
      FieldName = 'm_sState'
      Size = 2
    end
    object zqtJobOrderm_sZip: TStringField
      FieldName = 'm_sZip'
      Size = 5
    end
    object zqtJobOrderm_sPhone: TStringField
      FieldName = 'm_sPhone'
      EditMask = '!\(999\)999-9999 :99999;1;_'
    end
    object zqtJobOrderm_sFax: TStringField
      FieldName = 'm_sFax'
      EditMask = '!\(999\)999-9999;1;_'
    end
    object zqtJobOrderm_sEMail: TStringField
      FieldName = 'm_sEMail'
      Size = 50
    end
    object zqtJobOrderm_sContName: TStringField
      FieldName = 'm_sContName'
      Size = 50
    end
    object zqtJobOrderm_sContCell: TStringField
      FieldName = 'm_sContCell'
      EditMask = '!\(999\)999-9999 :99999;1;_'
    end
    object zqtJobOrderm_sContEMail: TStringField
      FieldName = 'm_sContEMail'
      Size = 50
    end
    object zqtJobOrderart_sArt: TStringField
      FieldName = 'art_sArt'
      Size = 35
    end
    object zqtJobOrderfold_bHalf: TSmallintField
      FieldName = 'fold_bHalf'
    end
    object zqtJobOrderfold_bTri: TSmallintField
      FieldName = 'fold_bTri'
    end
    object zqtJobOrderfold_bGate: TSmallintField
      FieldName = 'fold_bGate'
    end
    object zqtJobOrderfold_bLip: TSmallintField
      FieldName = 'fold_bLip'
    end
    object zqtJobOrderfold_sOther: TStringField
      FieldName = 'fold_sOther'
      Size = 30
    end
    object zqtJobOrderhp_bStandard: TSmallintField
      FieldName = 'hp_bStandard'
    end
    object zqtJobOrderhp_b1d8: TSmallintField
      FieldName = 'hp_b1d8'
    end
    object zqtJobOrderhp_b3d16: TSmallintField
      FieldName = 'hp_b3d16'
    end
    object zqtJobOrderhp_b1d4: TSmallintField
      FieldName = 'hp_b1d4'
    end
    object zqtJobOrderhp_b1d2: TSmallintField
      FieldName = 'hp_b1d2'
    end
    object zqtJobOrderhp_sOther: TStringField
      FieldName = 'hp_sOther'
      Size = 30
    end
    object zqtJobOrderpads_sPads: TStringField
      FieldName = 'pads_sPads'
      Size = 10
    end
    object zqtJobOrderpads_sPages: TStringField
      FieldName = 'pads_sPages'
      Size = 10
    end
    object zqtJobOrderpads_sOther: TStringField
      FieldName = 'pads_sOther'
      Size = 30
    end
    object zqtJobOrderbooks_sBooks: TStringField
      FieldName = 'books_sBooks'
      Size = 5
    end
    object zqtJobOrderbooks_sPages: TStringField
      FieldName = 'books_sPages'
      Size = 5
    end
    object zqtJobOrderbooks_sOther: TStringField
      FieldName = 'books_sOther'
      Size = 30
    end
    object zqtJobOrderlam_b3mill: TSmallintField
      FieldName = 'lam_b3mill'
    end
    object zqtJobOrderlam_b5mill: TSmallintField
      FieldName = 'lam_b5mill'
    end
    object zqtJobOrderlam_10mill: TSmallintField
      FieldName = 'lam_10mill'
    end
    object zqtJobOrderlam_bShiny: TSmallintField
      FieldName = 'lam_bShiny'
    end
    object zqtJobOrderlam_bMatte: TSmallintField
      FieldName = 'lam_bMatte'
    end
    object zqtJobOrderlam_bGloss: TSmallintField
      FieldName = 'lam_bGloss'
    end
    object zqtJobOrderlam_bCapsulation: TSmallintField
      FieldName = 'lam_bCapsulation'
    end
    object zqtJobOrderlam_sOther: TStringField
      FieldName = 'lam_sOther'
      Size = 30
    end
    object zqtJobOrderbin_bSaddleS: TSmallintField
      FieldName = 'bin_bSaddleS'
    end
    object zqtJobOrderbin_bGlued: TSmallintField
      FieldName = 'bin_bGlued'
    end
    object zqtJobOrderbin_sOther: TStringField
      FieldName = 'bin_sOther'
      Size = 30
    end
    object zqtJobOrderstamp_bFoil: TSmallintField
      FieldName = 'stamp_bFoil'
    end
    object zqtJobOrderstamp_bEmboss: TSmallintField
      FieldName = 'stamp_bEmboss'
    end
    object zqtJobOrderstamp_sOther: TStringField
      FieldName = 'stamp_sOther'
      Size = 30
    end
    object zqtJobOrderink_bRaised: TSmallintField
      FieldName = 'ink_bRaised'
    end
    object zqtJobOrderink_bPMS: TSmallintField
      FieldName = 'ink_bPMS'
    end
    object zqtJobOrderink_sPantone: TStringField
      FieldName = 'ink_sPantone'
      Size = 15
    end
    object zqtJobOrderink_sOther: TStringField
      FieldName = 'ink_sOther'
      Size = 30
    end
    object zqtJobOrderdc_bRoundC: TSmallintField
      FieldName = 'dc_bRoundC'
    end
    object zqtJobOrderdc_bCustomS: TSmallintField
      FieldName = 'dc_bCustomS'
    end
    object zqtJobOrderdc_bCircle: TSmallintField
      FieldName = 'dc_bCircle'
    end
    object zqtJobOrderdc_sDiameter: TSmallintField
      FieldName = 'dc_sDiameter'
    end
    object zqtJobOrderdc_sOther: TStringField
      FieldName = 'dc_sOther'
      Size = 30
    end
    object zqtJobOrdernum_sStart: TStringField
      FieldName = 'num_sStart'
      Size = 10
    end
    object zqtJobOrdernum_sFinish: TStringField
      FieldName = 'num_sFinish'
      Size = 10
    end
    object zqtJobOrdernum_sOther: TStringField
      FieldName = 'num_sOther'
      Size = 30
    end
    object zqtJobOrderd2_bFold: TSmallintField
      FieldName = 'd2_bFold'
    end
    object zqtJobOrderd2_bHolePunch: TSmallintField
      FieldName = 'd2_bHolePunch'
    end
    object zqtJobOrderd2_Pads: TSmallintField
      FieldName = 'd2_Pads'
    end
    object zqtJobOrderd2_bLaminate: TSmallintField
      FieldName = 'd2_bLaminate'
    end
    object zqtJobOrderd2_bDieCut: TSmallintField
      FieldName = 'd2_bDieCut'
    end
    object zqtJobOrderd2_bStamp: TSmallintField
      FieldName = 'd2_bStamp'
    end
    object zqtJobOrderd2_bNumbered: TSmallintField
      FieldName = 'd2_bNumbered'
    end
    object zqtJobOrderd2_bBooks: TSmallintField
      FieldName = 'd2_bBooks'
    end
    object zqtJobOrderd2_bInk: TSmallintField
      FieldName = 'd2_bInk'
    end
    object zqtJobOrderd2_bBinding: TSmallintField
      FieldName = 'd2_bBinding'
    end
    object zqtJobOrderd2_sOther: TStringField
      FieldName = 'd2_sOther'
    end
    object zqtJobOrderdv_sDelivery: TStringField
      FieldName = 'dv_sDelivery'
    end
    object zqtJobOrderdv_sShipTo: TStringField
      FieldName = 'dv_sShipTo'
      Size = 50
    end
    object zqtJobOrderdv_sCustShipping: TStringField
      FieldName = 'dv_sCustShipping'
      Size = 50
    end
    object zqtJobOrderdv_sAddress: TStringField
      FieldName = 'dv_sAddress'
      Size = 50
    end
    object zqtJobOrderdv_sCity: TStringField
      FieldName = 'dv_sCity'
      Size = 15
    end
    object zqtJobOrderdv_sState: TStringField
      FieldName = 'dv_sState'
      Size = 2
    end
    object zqtJobOrderdv_sZip: TStringField
      FieldName = 'dv_sZip'
      Size = 5
    end
    object zqtJobOrderbill_sBillTo: TStringField
      FieldName = 'bill_sBillTo'
      Size = 50
    end
    object zqtJobOrderbill_sAddress: TStringField
      FieldName = 'bill_sAddress'
      Size = 50
    end
    object zqtJobOrderbill_sCity: TStringField
      FieldName = 'bill_sCity'
      Size = 15
    end
    object zqtJobOrderbill_sState: TStringField
      FieldName = 'bill_sState'
      Size = 2
    end
    object zqtJobOrderbill_sZip: TStringField
      FieldName = 'bill_sZip'
      Size = 5
    end
  end
  object dstJobOrder: TDataSource
    DataSet = zqtJobOrder
    Left = 32
    Top = 88
  end
  object ds_tUser: TDataSource
    DataSet = zq_tUser
    Left = 120
    Top = 88
  end
  object zq_tUser: TZQuery
    Connection = ZConnectionMain
    SQL.Strings = (
      'select * from tUser')
    Params = <>
    Left = 120
    Top = 156
    object zq_tUsersUsername: TStringField
      FieldName = 'sUsername'
      Required = True
    end
    object zq_tUsersPassword: TStringField
      FieldName = 'sPassword'
    end
    object zq_tUsersLevel: TStringField
      FieldName = 'sLevel'
      Size = 1
    end
  end
end
