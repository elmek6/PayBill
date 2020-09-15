object frmF1Search: TfrmF1Search
  Left = 323
  Top = 210
  Width = 631
  Height = 399
  Caption = 'Field Filter'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 236
    Width = 121
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Search text'
  end
  object Label2: TLabel
    Left = 308
    Top = 236
    Width = 121
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Field'
  end
  object Bevel1: TBevel
    Left = 20
    Top = 316
    Width = 589
    Height = 5
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 20
    Top = 336
    Width = 275
    Height = 13
    Caption = 'When your job is done don'#39't forget the filter deactive again'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 24
    Width = 593
    Height = 193
    DataSource = frmDM1.dstJobOrder
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'iJobNum'
        Title.Caption = 'Job#'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xOrderDate'
        Title.Caption = 'Order Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sSalesPerson'
        Title.Caption = 'Sales Person'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'm_sAccount'
        Title.Caption = 'Acct Name'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'm_sPhone'
        Title.Caption = 'Phone'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sPrinter'
        Title.Caption = 'Printer'
        Visible = True
      end>
  end
  object txtSearchText: TEdit
    Left = 184
    Top = 252
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cboFieldName: TComboBox
    Left = 308
    Top = 252
    Width = 125
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'iJobNum'
    Items.Strings = (
      'iJobNum'
      'xOrderDate'
      'sSalesPerson'
      'm_sAccount'
      'm_sPhone'
      'sPrinter')
  end
  object BitBtn3: TBitBtn
    Left = 184
    Top = 280
    Width = 249
    Height = 25
    Caption = 'Filter'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 536
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Close'
    Default = True
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn1: TBitBtn
    Left = 444
    Top = 336
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Stop Filter'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
end
