object frmVenDtl: TfrmVenDtl
  Left = 116
  Top = 116
  BorderStyle = bsDialog
  Caption = 'Vendor Detail'
  ClientHeight = 467
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 412
    Width = 89
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Start'
  end
  object Label2: TLabel
    Left = 124
    Top = 412
    Width = 89
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'End'
  end
  object Label3: TLabel
    Left = 228
    Top = 412
    Width = 89
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Printer'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 845
    Height = 381
    DataSource = frmDM1.dstJobOrder
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'xOrderDate'
        Title.Caption = 'Order Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ov_iPONum'
        Title.Caption = 'PO#'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JobNum'
        Title.Caption = 'Job #'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sAccount'
        Title.Caption = 'Account/Company'
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_dTotalQty'
        Title.Caption = 'Total Qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_sSizeWH'
        Title.Caption = 'Size'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bUV'
        PickList.Strings = (
          'X'
          ' -')
        Title.Caption = 'UV'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pr_dBalance'
        Title.Caption = 'Balance'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sPrinter'
        Title.Caption = 'Printer'
        Width = 56
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 620
    Top = 400
    Width = 240
    Height = 25
    DataSource = frmDM1.dstJobOrder
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 788
    Top = 436
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 680
    Top = 436
    Width = 75
    Height = 25
    Caption = 'Print...'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 20
    Top = 428
    Width = 93
    Height = 21
    CalAlignment = dtaLeft
    Date = 39117.1938308449
    Time = 39117.1938308449
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object DateTimePicker2: TDateTimePicker
    Left = 124
    Top = 428
    Width = 93
    Height = 21
    CalAlignment = dtaLeft
    Date = 39117.1938308449
    Time = 39117.1938308449
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 228
    Top = 428
    Width = 93
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'ComboBox1'
  end
  object BitBtn3: TBitBtn
    Left = 332
    Top = 428
    Width = 75
    Height = 21
    Caption = 'BitBtn3'
    TabOrder = 7
  end
end
