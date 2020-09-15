object frmWeeklyExpenses: TfrmWeeklyExpenses
  Left = 266
  Top = 96
  BorderStyle = bsDialog
  Caption = 'Weekly Expenses'
  ClientHeight = 642
  ClientWidth = 489
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
  object Label1: TLabel
    Left = 24
    Top = 104
    Width = 101
    Height = 13
    Caption = 'American Express'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 260
    Width = 144
    Height = 13
    Caption = 'Daily Businiess Expenses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 416
    Width = 158
    Height = 13
    Caption = 'Weekly Businiess Expenses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 312
    Top = 84
    Width = 39
    Height = 13
    Caption = 'Balance'
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 124
    Width = 449
    Height = 120
    DataSource = dsWeeklyExp1
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'xDate'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sMisc'
        Title.Caption = 'Paid To'
        Width = 281
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dSubTotal'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 20
    Top = 280
    Width = 449
    Height = 120
    DataSource = dsWeeklyExp2
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'xDate'
        Title.Caption = 'Date'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sMisc'
        Title.Caption = 'Cash / Misc'
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dSubTotal'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 16
    Top = 436
    Width = 449
    Height = 120
    DataSource = dsWeeklyExp3
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'xDate'
        Title.Caption = 'Date'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sMisc'
        Title.Caption = 'Payroll'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCashCheck'
        PickList.Strings = (
          'Cash'
          'Check')
        Title.Caption = 'Cash/Check'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dSubTotal'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 396
    Top = 604
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 600
    Width = 240
    Height = 25
    DataSource = dsWeeklyExp1
    TabOrder = 4
  end
  object BitBtn6: TBitBtn
    Left = 312
    Top = 604
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 5
    OnClick = BitBtn6Click
  end
  object DBEdit1: TDBEdit
    Left = 364
    Top = 80
    Width = 105
    Height = 21
    TabOrder = 6
  end
  object GroupBox2: TGroupBox
    Left = 20
    Top = 4
    Width = 449
    Height = 69
    TabOrder = 7
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 81
      Height = 13
      Caption = 'Start of the week'
    end
    object Label6: TLabel
      Left = 232
      Top = 16
      Width = 108
      Height = 13
      Caption = 'End of the week (auto)'
    end
    object lblCheck: TLabel
      Left = 184
      Top = 16
      Width = 161
      Height = 13
      Caption = '<<-- It isn'#39't Monday! Please Check'
      Color = clYellow
      ParentColor = False
      Visible = False
    end
    object cmdShowTheWeek: TBitBtn
      Left = 36
      Top = 40
      Width = 181
      Height = 21
      Caption = 'Show the week'
      Enabled = False
      TabOrder = 0
      OnClick = cmdShowTheWeekClick
    end
    object dtpBas: TDateTimePicker
      Left = 92
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
      Left = 348
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
      Left = 228
      Top = 40
      Width = 181
      Height = 21
      Caption = 'Close the week'
      Enabled = False
      TabOrder = 3
      OnClick = cmdShowTheWeekClick
    end
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 564
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object dsWeeklyExp1: TDataSource
    DataSet = zqWeeklyExp1
    OnUpdateData = dsWeeklyExp1UpdateData
    Left = 412
    Top = 172
  end
  object zqWeeklyExp1: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyExp WHERE sType='#39'AE'#39';')
    Params = <>
    Left = 440
    Top = 172
    object zqWeeklyExp1xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyExp1sMisc: TStringField
      FieldName = 'sMisc'
      Size = 30
    end
    object zqWeeklyExp1dSubTotal: TFloatField
      FieldName = 'dSubTotal'
    end
    object zqWeeklyExp1sType: TStringField
      FieldName = 'sType'
      Size = 25
    end
    object zqWeeklyExp1sCashCheck: TStringField
      FieldName = 'sCashCheck'
      Size = 5
    end
  end
  object dsWeeklyExp2: TDataSource
    DataSet = zqWeeklyExp2
    OnUpdateData = dsWeeklyExp2UpdateData
    Left = 412
    Top = 304
  end
  object zqWeeklyExp2: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyExp WHERE sType='#39'DBE'#39';')
    Params = <>
    Left = 440
    Top = 304
    object zqWeeklyExp2xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyExp2sMisc: TStringField
      FieldName = 'sMisc'
      Size = 30
    end
    object zqWeeklyExp2dSubTotal: TFloatField
      FieldName = 'dSubTotal'
    end
    object zqWeeklyExp2sType: TStringField
      FieldName = 'sType'
      Size = 25
    end
    object zqWeeklyExp2sCashCheck: TStringField
      FieldName = 'sCashCheck'
      Size = 5
    end
  end
  object dsWeeklyExp3: TDataSource
    DataSet = zqWeeklyExp3
    OnUpdateData = dsWeeklyExp3UpdateData
    Left = 408
    Top = 468
  end
  object zqWeeklyExp3: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyExp WHERE sType='#39'WBE'#39';')
    Params = <>
    Left = 436
    Top = 468
    object zqWeeklyExp3xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyExp3sMisc: TStringField
      FieldName = 'sMisc'
      Size = 30
    end
    object zqWeeklyExp3dSubTotal: TFloatField
      FieldName = 'dSubTotal'
    end
    object zqWeeklyExp3sType: TStringField
      FieldName = 'sType'
      Size = 25
    end
    object zqWeeklyExp3sCashCheck: TStringField
      FieldName = 'sCashCheck'
      Size = 5
    end
  end
  object ActionList1: TActionList
    Left = 264
    Top = 564
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
  object PopupMenu1: TPopupMenu
    Left = 300
    Top = 564
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
  object zqWeeks: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyExp WHERE sType='#39'_balance'#39';')
    Params = <>
    Left = 244
    Top = 84
    object zqWeeksxDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeekssMisc: TStringField
      FieldName = 'sMisc'
      Size = 30
    end
    object zqWeeksdSubTotal: TFloatField
      FieldName = 'dSubTotal'
    end
    object zqWeekssType: TStringField
      FieldName = 'sType'
      Size = 25
    end
    object zqWeekssCashCheck: TStringField
      FieldName = 'sCashCheck'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = zqWeeks
    Left = 212
    Top = 84
  end
end
