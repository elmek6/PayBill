object frmPO: TfrmPO
  Left = 237
  Top = 98
  BorderStyle = bsDialog
  Caption = 'PO'
  ClientHeight = 499
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 12
    Top = 464
    Width = 240
    Height = 25
    DataSource = dsPO
    TabOrder = 0
  end
  object dbgPO: TDBGrid
    Left = 8
    Top = 112
    Width = 613
    Height = 333
    DataSource = dsPO
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgPOCellClick
    OnTitleClick = dbgPOTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'iPO'
        Title.Caption = 'PO #'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sPrinter'
        Title.Caption = 'Printer'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iJobNum'
        Title.Caption = 'Job #'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'm_sAccount'
        Title.Caption = 'Account / Company'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tj_sSizeWH'
        Title.Caption = 'Size'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tj_dTotalQty'
        Title.Caption = 'Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sUV'
        PickList.Strings = (
          'Yes'
          'No')
        Title.Caption = 'UV'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tj_sPaperStock'
        Title.Caption = 'Stock'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 63
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 440
    Top = 464
    Width = 83
    Height = 25
    Caption = 'Print PO Page'
    TabOrder = 2
  end
  object BitBtn4: TBitBtn
    Left = 544
    Top = 464
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 617
    Height = 97
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Search'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 4
        Width = 593
        Height = 57
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 28
          Width = 25
          Height = 13
          Caption = 'PO #'
        end
        object txtSearch: TEdit
          Left = 56
          Top = 24
          Width = 97
          Height = 21
          TabOrder = 0
        end
        object BitBtn5: TBitBtn
          Left = 164
          Top = 24
          Width = 75
          Height = 21
          Caption = 'Search'
          TabOrder = 1
          OnClick = BitBtn5Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filter / Create PO'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 8
        Top = 4
        Width = 229
        Height = 57
        Caption = 'Filter'
        TabOrder = 0
        object Label2: TLabel
          Left = 12
          Top = 28
          Width = 30
          Height = 13
          Caption = 'Printer'
        end
        object BitBtn1: TBitBtn
          Left = 160
          Top = 24
          Width = 57
          Height = 21
          Caption = 'Filter'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object cboPrinter: TComboBox
          Left = 52
          Top = 24
          Width = 97
          Height = 19
          Style = csOwnerDrawFixed
          ItemHeight = 13
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 244
        Top = 4
        Width = 145
        Height = 57
        TabOrder = 1
        object Label3: TLabel
          Left = 12
          Top = 28
          Width = 47
          Height = 13
          Caption = 'New PO#'
        end
        object txtPO: TEdit
          Left = 68
          Top = 24
          Width = 61
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 456
        Top = 4
        Width = 145
        Height = 57
        TabOrder = 2
        object BitBtn2: TBitBtn
          Left = 14
          Top = 24
          Width = 91
          Height = 25
          Caption = 'Print Cover Page'
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
    end
  end
  object zqPO: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tJobOrder;')
    Params = <>
    Left = 40
    Top = 448
    object zqPOiJobNum: TIntegerField
      FieldName = 'iJobNum'
    end
    object zqPOxDateSent: TDateField
      FieldName = 'xDateSent'
    end
    object zqPOiPO: TIntegerField
      FieldName = 'iPO'
    end
    object zqPOiInvoice: TIntegerField
      FieldName = 'iInvoice'
    end
    object zqPOsPrinter: TStringField
      FieldName = 'sPrinter'
      Size = 10
    end
    object zqPOxOrderDate: TDateField
      FieldName = 'xOrderDate'
    end
    object zqPOsSalesPerson: TStringField
      FieldName = 'sSalesPerson'
    end
    object zqPOsArtist: TStringField
      FieldName = 'sArtist'
    end
    object zqPOsSpecial: TMemoField
      FieldName = 'sSpecial'
      BlobType = ftMemo
    end
    object zqPOpr_dArt: TFloatField
      FieldName = 'pr_dArt'
    end
    object zqPOpr_dColorProof: TFloatField
      FieldName = 'pr_dColorProof'
    end
    object zqPOpr_dPrint: TFloatField
      FieldName = 'pr_dPrint'
    end
    object zqPOpr_dAdditional: TFloatField
      FieldName = 'pr_dAdditional'
    end
    object zqPOpr_dTotal: TFloatField
      FieldName = 'pr_dTotal'
    end
    object zqPOpr_dTax: TFloatField
      FieldName = 'pr_dTax'
    end
    object zqPOpr_dSubtotal: TFloatField
      FieldName = 'pr_dSubtotal'
    end
    object zqPOpr_dDelivery: TFloatField
      FieldName = 'pr_dDelivery'
    end
    object zqPOpr_dTotalTotal: TFloatField
      FieldName = 'pr_dTotalTotal'
    end
    object zqPOpr_dDeposit: TFloatField
      FieldName = 'pr_dDeposit'
    end
    object zqPOpr_dBalance: TFloatField
      FieldName = 'pr_dBalance'
    end
    object zqPOpr_bDepCC: TSmallintField
      FieldName = 'pr_bDepCC'
    end
    object zqPOpr_bDepCash: TSmallintField
      FieldName = 'pr_bDepCash'
    end
    object zqPOpr_bDepCK: TSmallintField
      FieldName = 'pr_bDepCK'
    end
    object zqPOpr_bBalCC: TSmallintField
      FieldName = 'pr_bBalCC'
    end
    object zqPOpr_bBalCash: TSmallintField
      FieldName = 'pr_bBalCash'
    end
    object zqPOpr_bBalCK: TSmallintField
      FieldName = 'pr_bBalCK'
    end
    object zqPOpr_sCKNum: TStringField
      FieldName = 'pr_sCKNum'
      Size = 10
    end
    object zqPOpr_sCKName: TStringField
      FieldName = 'pr_sCKName'
      Size = 30
    end
    object zqPOpr_sCKDate: TDateField
      FieldName = 'pr_sCKDate'
    end
    object zqPOpr_sCCNum: TStringField
      FieldName = 'pr_sCCNum'
    end
    object zqPOpr_sCCName: TStringField
      FieldName = 'pr_sCCName'
      Size = 30
    end
    object zqPOpr_sCCType: TStringField
      FieldName = 'pr_sCCType'
      Size = 15
    end
    object zqPOpr_sCCExpDate: TStringField
      FieldName = 'pr_sCCExpDate'
      Size = 5
    end
    object zqPOpr_sCCSec: TStringField
      FieldName = 'pr_sCCSec'
      Size = 4
    end
    object zqPOsUV: TStringField
      FieldName = 'sUV'
      Size = 3
    end
    object zqPOtj_sSizeWH: TStringField
      FieldName = 'tj_sSizeWH'
      Size = 5
    end
    object zqPOtj_sFSizeWH: TStringField
      FieldName = 'tj_sFSizeWH'
      Size = 5
    end
    object zqPOtj_dTotalQty: TFloatField
      FieldName = 'tj_dTotalQty'
    end
    object zqPOtj_sLots: TStringField
      FieldName = 'tj_sLots'
      Size = 5
    end
    object zqPOtj_sColors: TStringField
      FieldName = 'tj_sColors'
      Size = 5
    end
    object zqPOtj_sPaperStock: TStringField
      FieldName = 'tj_sPaperStock'
    end
    object zqPOm_sAccount: TStringField
      FieldName = 'm_sAccount'
      Required = True
      Size = 40
    end
    object zqPOm_sAddress: TStringField
      FieldName = 'm_sAddress'
      Size = 40
    end
    object zqPOm_sCity: TStringField
      FieldName = 'm_sCity'
      Size = 15
    end
    object zqPOm_sState: TStringField
      FieldName = 'm_sState'
      Size = 2
    end
    object zqPOm_sZip: TStringField
      FieldName = 'm_sZip'
      Size = 5
    end
    object zqPOm_sPhone: TStringField
      FieldName = 'm_sPhone'
    end
    object zqPOm_sFax: TStringField
      FieldName = 'm_sFax'
    end
    object zqPOm_sEMail: TStringField
      FieldName = 'm_sEMail'
      Size = 50
    end
    object zqPOm_sContName: TStringField
      FieldName = 'm_sContName'
      Size = 50
    end
    object zqPOm_sContCell: TStringField
      FieldName = 'm_sContCell'
    end
    object zqPOm_sContEMail: TStringField
      FieldName = 'm_sContEMail'
      Size = 50
    end
    object zqPOart_sArt: TStringField
      FieldName = 'art_sArt'
      Size = 35
    end
    object zqPOfold_bHalf: TSmallintField
      FieldName = 'fold_bHalf'
    end
    object zqPOfold_bTri: TSmallintField
      FieldName = 'fold_bTri'
    end
    object zqPOfold_bGate: TSmallintField
      FieldName = 'fold_bGate'
    end
    object zqPOfold_bLip: TSmallintField
      FieldName = 'fold_bLip'
    end
    object zqPOfold_sOther: TStringField
      FieldName = 'fold_sOther'
      Size = 30
    end
    object zqPOhp_bStandard: TSmallintField
      FieldName = 'hp_bStandard'
    end
    object zqPOhp_b1d8: TSmallintField
      FieldName = 'hp_b1d8'
    end
    object zqPOhp_b3d16: TSmallintField
      FieldName = 'hp_b3d16'
    end
    object zqPOhp_b1d4: TSmallintField
      FieldName = 'hp_b1d4'
    end
    object zqPOhp_b1d2: TSmallintField
      FieldName = 'hp_b1d2'
    end
    object zqPOhp_sOther: TStringField
      FieldName = 'hp_sOther'
      Size = 30
    end
    object zqPOpads_sPads: TStringField
      FieldName = 'pads_sPads'
      Size = 10
    end
    object zqPOpads_sPages: TStringField
      FieldName = 'pads_sPages'
      Size = 10
    end
    object zqPOpads_sOther: TStringField
      FieldName = 'pads_sOther'
      Size = 30
    end
    object zqPObooks_sBooks: TStringField
      FieldName = 'books_sBooks'
      Size = 5
    end
    object zqPObooks_sPages: TStringField
      FieldName = 'books_sPages'
      Size = 5
    end
    object zqPObooks_sOther: TStringField
      FieldName = 'books_sOther'
      Size = 30
    end
    object zqPOlam_b3mill: TSmallintField
      FieldName = 'lam_b3mill'
    end
    object zqPOlam_b5mill: TSmallintField
      FieldName = 'lam_b5mill'
    end
    object zqPOlam_10mill: TSmallintField
      FieldName = 'lam_10mill'
    end
    object zqPOlam_bShiny: TSmallintField
      FieldName = 'lam_bShiny'
    end
    object zqPOlam_bMatte: TSmallintField
      FieldName = 'lam_bMatte'
    end
    object zqPOlam_bGloss: TSmallintField
      FieldName = 'lam_bGloss'
    end
    object zqPOlam_bCapsulation: TSmallintField
      FieldName = 'lam_bCapsulation'
    end
    object zqPOlam_sOther: TStringField
      FieldName = 'lam_sOther'
      Size = 30
    end
    object zqPObin_bSaddleS: TSmallintField
      FieldName = 'bin_bSaddleS'
    end
    object zqPObin_bGlued: TSmallintField
      FieldName = 'bin_bGlued'
    end
    object zqPObin_sOther: TStringField
      FieldName = 'bin_sOther'
      Size = 30
    end
    object zqPOstamp_bFoil: TSmallintField
      FieldName = 'stamp_bFoil'
    end
    object zqPOstamp_bEmboss: TSmallintField
      FieldName = 'stamp_bEmboss'
    end
    object zqPOstamp_sOther: TStringField
      FieldName = 'stamp_sOther'
      Size = 30
    end
    object zqPOink_bRaised: TSmallintField
      FieldName = 'ink_bRaised'
    end
    object zqPOink_bPMS: TSmallintField
      FieldName = 'ink_bPMS'
    end
    object zqPOink_sPantone: TStringField
      FieldName = 'ink_sPantone'
      Size = 15
    end
    object zqPOink_sOther: TStringField
      FieldName = 'ink_sOther'
      Size = 30
    end
    object zqPOdc_bRoundC: TSmallintField
      FieldName = 'dc_bRoundC'
    end
    object zqPOdc_bCustomS: TSmallintField
      FieldName = 'dc_bCustomS'
    end
    object zqPOdc_bCircle: TSmallintField
      FieldName = 'dc_bCircle'
    end
    object zqPOdc_sDiameter: TSmallintField
      FieldName = 'dc_sDiameter'
    end
    object zqPOdc_sOther: TStringField
      FieldName = 'dc_sOther'
      Size = 30
    end
    object zqPOnum_sStart: TStringField
      FieldName = 'num_sStart'
      Size = 10
    end
    object zqPOnum_sFinish: TStringField
      FieldName = 'num_sFinish'
      Size = 10
    end
    object zqPOnum_sOther: TStringField
      FieldName = 'num_sOther'
      Size = 30
    end
    object zqPOd2_bFold: TSmallintField
      FieldName = 'd2_bFold'
    end
    object zqPOd2_bHolePunch: TSmallintField
      FieldName = 'd2_bHolePunch'
    end
    object zqPOd2_Pads: TSmallintField
      FieldName = 'd2_Pads'
    end
    object zqPOd2_bLaminate: TSmallintField
      FieldName = 'd2_bLaminate'
    end
    object zqPOd2_bDieCut: TSmallintField
      FieldName = 'd2_bDieCut'
    end
    object zqPOd2_bStamp: TSmallintField
      FieldName = 'd2_bStamp'
    end
    object zqPOd2_bNumbered: TSmallintField
      FieldName = 'd2_bNumbered'
    end
    object zqPOd2_bBooks: TSmallintField
      FieldName = 'd2_bBooks'
    end
    object zqPOd2_bInk: TSmallintField
      FieldName = 'd2_bInk'
    end
    object zqPOd2_bBinding: TSmallintField
      FieldName = 'd2_bBinding'
    end
    object zqPOd2_sOther: TStringField
      FieldName = 'd2_sOther'
    end
    object zqPOdv_sDelivery: TStringField
      FieldName = 'dv_sDelivery'
    end
    object zqPOdv_sShipTo: TStringField
      FieldName = 'dv_sShipTo'
      Size = 50
    end
    object zqPOdv_sCustShipping: TStringField
      FieldName = 'dv_sCustShipping'
      Size = 50
    end
    object zqPOdv_sAddress: TStringField
      FieldName = 'dv_sAddress'
      Size = 50
    end
    object zqPOdv_sCity: TStringField
      FieldName = 'dv_sCity'
      Size = 15
    end
    object zqPOdv_sState: TStringField
      FieldName = 'dv_sState'
      Size = 2
    end
    object zqPOdv_sZip: TStringField
      FieldName = 'dv_sZip'
      Size = 5
    end
    object zqPObill_sBillTo: TStringField
      FieldName = 'bill_sBillTo'
      Size = 50
    end
    object zqPObill_sAddress: TStringField
      FieldName = 'bill_sAddress'
      Size = 50
    end
    object zqPObill_sCity: TStringField
      FieldName = 'bill_sCity'
      Size = 15
    end
    object zqPObill_sState: TStringField
      FieldName = 'bill_sState'
      Size = 2
    end
    object zqPObill_sZip: TStringField
      FieldName = 'bill_sZip'
      Size = 5
    end
  end
  object dsPO: TDataSource
    DataSet = zqPO
    Left = 8
    Top = 448
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 448
    object Add1: TMenuItem
      Caption = 'Add to PO'
      OnClick = Add1Click
    end
    object DelPO1: TMenuItem
      Caption = 'Delete from PO'
      OnClick = DelPO1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PrinttheJO1: TMenuItem
      Caption = 'Print the JO'
    end
  end
end
