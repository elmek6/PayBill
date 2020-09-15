object frmWeeklyIncome: TfrmWeeklyIncome
  Left = 279
  Top = 59
  BorderStyle = bsDialog
  Caption = 'Weekly Income'
  ClientHeight = 626
  ClientWidth = 543
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
  object Label3: TLabel
    Left = 12
    Top = 112
    Width = 34
    Height = 13
    Caption = 'CASH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 276
    Width = 50
    Height = 13
    Caption = 'CHECKS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 436
    Width = 85
    Height = 13
    Caption = 'CREDIT CARD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 314
    Top = 92
    Width = 139
    Height = 13
    Alignment = taRightJustify
    Caption = 'Left over cash from last week'
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 132
    Width = 517
    Height = 120
    DataSource = dsWeeklyIncome1
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'xDate'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iJobNum'
        Title.Caption = 'Job #'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sName'
        Title.Caption = 'Name'
        Width = 226
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sDep'
        Title.Caption = 'Dep'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sBal'
        Title.Caption = 'Bal'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAmount'
        Title.Caption = 'Amount'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 12
    Top = 296
    Width = 517
    Height = 120
    DataSource = dsWeeklyIncome2
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'xDate'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iJobNum'
        Title.Caption = 'Job #'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sName'
        Title.Caption = 'Name'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCheckNum'
        Title.Caption = 'Check #'
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sDep'
        Title.Caption = 'Dep'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sBal'
        Title.Caption = 'Bal'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAmount'
        Title.Caption = 'Amount'
        Width = 55
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 12
    Top = 456
    Width = 517
    Height = 120
    DataSource = dsWeeklyIncome3
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'xDate'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iJobNum'
        Title.Caption = 'Job #'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sName'
        Title.Caption = 'Name'
        Width = 230
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sDep'
        Title.Caption = 'Dep'
        Width = 31
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sBal'
        Title.Caption = 'Bal'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAmount'
        Title.Caption = 'Amount'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 372
    Top = 592
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 456
    Top = 592
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkClose
  end
  object BitBtn3: TBitBtn
    Left = 12
    Top = 592
    Width = 109
    Height = 25
    Caption = 'Update Forms'
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 460
    Top = 88
    Width = 69
    Height = 21
    TabOrder = 6
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 8
    Width = 517
    Height = 69
    TabOrder = 7
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 81
      Height = 13
      Caption = 'Start of the week'
    end
    object Label2: TLabel
      Left = 300
      Top = 16
      Width = 108
      Height = 13
      Caption = 'End of the week (auto)'
    end
    object lblCheck: TLabel
      Left = 204
      Top = 16
      Width = 161
      Height = 13
      Caption = '<<-- It isn'#39't Monday! Please Check'
      Color = clYellow
      ParentColor = False
      Visible = False
    end
    object cmdShowTheWeek: TBitBtn
      Left = 12
      Top = 40
      Width = 229
      Height = 21
      Caption = 'Show the week'
      Enabled = False
      TabOrder = 0
    end
    object dtpBas: TDateTimePicker
      Left = 108
      Top = 12
      Width = 85
      Height = 21
      CalAlignment = dtaLeft
      Date = 39105
      Time = 39105
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
      OnChange = dtpBasChange
    end
    object dtpBit: TDateTimePicker
      Left = 420
      Top = 12
      Width = 85
      Height = 21
      CalAlignment = dtaLeft
      Date = 39105
      Time = 39105
      DateFormat = dfShort
      DateMode = dmComboBox
      Enabled = False
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
    object cmdCloseTheWeek: TBitBtn
      Left = 264
      Top = 40
      Width = 241
      Height = 21
      Caption = 'Close the week'
      Enabled = False
      TabOrder = 3
    end
  end
  object dsWeeklyIncome1: TDataSource
    DataSet = zqWeeklyIncome1
    OnUpdateData = dsWeeklyIncome1UpdateData
    Left = 404
    Top = 180
  end
  object zqWeeklyIncome1: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIncome WHERE sType='#39'Cash'#39';')
    Params = <>
    Left = 432
    Top = 180
    object zqWeeklyIncome1xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyIncome1iJobNum: TLargeintField
      FieldName = 'iJobNum'
    end
    object zqWeeklyIncome1sName: TStringField
      FieldName = 'sName'
      Size = 30
    end
    object zqWeeklyIncome1dAmount: TFloatField
      FieldName = 'dAmount'
    end
    object zqWeeklyIncome1sDep: TStringField
      FieldName = 'sDep'
      Size = 5
    end
    object zqWeeklyIncome1sBal: TStringField
      FieldName = 'sBal'
      Size = 5
    end
    object zqWeeklyIncome1sType: TStringField
      FieldName = 'sType'
      Size = 11
    end
  end
  object dsWeeklyIncome2: TDataSource
    DataSet = zqWeeklyIncome2
    OnUpdateData = dsWeeklyIncome2UpdateData
    Left = 404
    Top = 340
  end
  object zqWeeklyIncome2: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIncome WHERE sType='#39'Checks'#39';')
    Params = <>
    Left = 432
    Top = 340
    object zqWeeklyIncome2xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyIncome2iJobNum: TLargeintField
      FieldName = 'iJobNum'
    end
    object zqWeeklyIncome2sName: TStringField
      FieldName = 'sName'
      Size = 30
    end
    object zqWeeklyIncome2dAmount: TFloatField
      FieldName = 'dAmount'
    end
    object zqWeeklyIncome2sDep: TStringField
      FieldName = 'sDep'
      Size = 5
    end
    object zqWeeklyIncome2sBal: TStringField
      FieldName = 'sBal'
      Size = 5
    end
    object zqWeeklyIncome2sType: TStringField
      FieldName = 'sType'
      Size = 11
    end
    object zqWeeklyIncome2sCheckNum: TStringField
      FieldName = 'sCheckNum'
      Size = 5
    end
  end
  object dsWeeklyIncome3: TDataSource
    DataSet = zqWeeklyIncome3
    OnUpdateData = dsWeeklyIncome3UpdateData
    Left = 400
    Top = 496
  end
  object zqWeeklyIncome3: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIncome WHERE sType='#39'Credit Card'#39';')
    Params = <>
    Left = 428
    Top = 496
    object zqWeeklyIncome3xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyIncome3iJobNum: TLargeintField
      FieldName = 'iJobNum'
    end
    object zqWeeklyIncome3sName: TStringField
      FieldName = 'sName'
      Size = 30
    end
    object zqWeeklyIncome3dAmount: TFloatField
      FieldName = 'dAmount'
    end
    object zqWeeklyIncome3sDep: TStringField
      FieldName = 'sDep'
      Size = 5
    end
    object zqWeeklyIncome3sBal: TStringField
      FieldName = 'sBal'
      Size = 5
    end
    object zqWeeklyIncome3sType: TStringField
      FieldName = 'sType'
      Size = 11
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 592
    object NewRecord1: TMenuItem
      Action = actNew
    end
    object Delete1: TMenuItem
      Action = actDel
    end
    object Refresh1: TMenuItem
      Action = actRefresh
    end
  end
  object ActionList1: TActionList
    Left = 300
    Top = 592
    object actNew: TAction
      Caption = 'New Record'
      OnExecute = actNewExecute
    end
    object actDel: TAction
      Caption = 'Delete'
      OnExecute = actDelExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
    end
  end
  object zqWeeks: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIncome WHERE sType='#39'_balance'#39';')
    Params = <>
    Left = 280
    Top = 84
    object DateField1: TDateField
      FieldName = 'xDate'
    end
    object LargeintField1: TLargeintField
      FieldName = 'iJobNum'
    end
    object StringField1: TStringField
      FieldName = 'sName'
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'dAmount'
    end
    object StringField2: TStringField
      FieldName = 'sDep'
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'sBal'
      Size = 5
    end
    object StringField4: TStringField
      FieldName = 'sType'
      Size = 11
    end
  end
  object DataSource1: TDataSource
    DataSet = zqWeeklyIncome1
    OnUpdateData = DataSource1UpdateData
    Left = 252
    Top = 84
  end
end
