object frmWeeklyIO: TfrmWeeklyIO
  Left = 284
  Top = 24
  BorderStyle = bsDialog
  Caption = 'Weekly In & Out'
  ClientHeight = 601
  ClientWidth = 585
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
    Left = 20
    Top = 16
    Width = 89
    Height = 13
    Caption = '1. Weekly In && Out'
  end
  object Label2: TLabel
    Left = 132
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Week of'
  end
  object Label3: TLabel
    Left = 44
    Top = 52
    Width = 17
    Height = 13
    Caption = 'CC:'
  end
  object Label4: TLabel
    Left = 204
    Top = 52
    Width = 39
    Height = 13
    Caption = 'CHECK:'
  end
  object Label5: TLabel
    Left = 428
    Top = 28
    Width = 81
    Height = 13
    Caption = 'BANK BALANCE'
  end
  object Label6: TLabel
    Left = 20
    Top = 84
    Width = 140
    Height = 13
    Caption = 'CHECKS PENDING OUT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 20
    Top = 248
    Width = 113
    Height = 13
    Caption = 'VENDOR BALANCE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 20
    Top = 408
    Width = 139
    Height = 13
    Caption = 'BANK DEPOSITS MADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 180
    Top = 12
    Width = 93
    Height = 21
    CalAlignment = dtaLeft
    Date = 39063.587517037
    Time = 39063.587517037
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 104
    Width = 541
    Height = 120
    DataSource = dsWeeklyIO1
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
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCheckNum'
        Title.Caption = 'Check #'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sName'
        Title.Caption = 'Name'
        Width = 322
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
    Left = 20
    Top = 268
    Width = 541
    Height = 120
    DataSource = dsWeeklyIO2
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
        FieldName = 'iJobNum'
        Title.Caption = 'Job #'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sVBType'
        Width = 361
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAmount'
        Title.Caption = 'Amount'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 20
    Top = 428
    Width = 541
    Height = 120
    DataSource = dsWeeklyIO3
    PopupMenu = PopupMenu1
    TabOrder = 3
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
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iJobNum'
        Title.Caption = 'Job #'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sName'
        Title.Caption = 'Name'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCheckNum'
        Title.Caption = 'Check #'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sDep1'
        PickList.Strings = (
          'X'
          ' - ')
        Title.Caption = 'Dep'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sBal1'
        PickList.Strings = (
          'X'
          ' - ')
        Title.Caption = 'Bal'
        Title.Font.Charset = TURKISH_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAmount'
        Title.Caption = 'Amount'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCash'
        Title.Caption = 'Cash'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sDep2'
        PickList.Strings = (
          'X'
          ' - ')
        Title.Caption = 'Dep'
        Title.Font.Charset = TURKISH_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 28
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sBal2'
        PickList.Strings = (
          'X'
          ' - ')
        Title.Caption = 'Bal'
        Title.Font.Charset = TURKISH_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 28
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 380
    Top = 564
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 464
    Top = 564
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkClose
  end
  object DBNavigator1: TDBNavigator
    Left = 64
    Top = 564
    Width = 240
    Height = 25
    DataSource = dsWeeklyIO3
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 244
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 428
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object dsWeeklyIO1: TDataSource
    DataSet = zqWeeklyIO1
    OnUpdateData = dsWeeklyIO1UpdateData
    Left = 412
    Top = 136
  end
  object zqWeeklyIO1: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIO WHERE sIOType='#39'Checks Pending Out'#39';')
    Params = <>
    Left = 440
    Top = 136
    object zqWeeklyIO1xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyIO1sIOType: TStringField
      FieldName = 'sIOType'
      Size = 18
    end
    object zqWeeklyIO1sCheckNum: TStringField
      FieldName = 'sCheckNum'
      Size = 5
    end
    object zqWeeklyIO1sName: TStringField
      FieldName = 'sName'
      Size = 30
    end
    object zqWeeklyIO1dAmount: TFloatField
      FieldName = 'dAmount'
    end
  end
  object dsWeeklyIO2: TDataSource
    DataSet = zqWeeklyIO2
    OnUpdateData = dsWeeklyIO2UpdateData
    Left = 412
    Top = 312
  end
  object zqWeeklyIO2: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIO WHERE sIOType='#39'Vendor Balance'#39';')
    Params = <>
    Left = 440
    Top = 312
    object zqWeeklyIO2xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyIO2sIOType: TStringField
      FieldName = 'sIOType'
      Size = 18
    end
    object zqWeeklyIO2dAmount: TFloatField
      FieldName = 'dAmount'
    end
    object zqWeeklyIO2iJobNum: TLargeintField
      FieldName = 'iJobNum'
    end
    object zqWeeklyIO2sVBType: TStringField
      FieldName = 'sVBType'
      Size = 2
    end
  end
  object dsWeeklyIO3: TDataSource
    DataSet = zqWeeklyIO3
    OnUpdateData = dsWeeklyIO3UpdateData
    Left = 408
    Top = 468
  end
  object zqWeeklyIO3: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWeeklyIO WHERE sIOType='#39'BDM'#39';')
    Params = <>
    Left = 436
    Top = 468
    object zqWeeklyIO3xDate: TDateField
      FieldName = 'xDate'
    end
    object zqWeeklyIO3sIOType: TStringField
      FieldName = 'sIOType'
      Size = 18
    end
    object zqWeeklyIO3sCheckNum: TStringField
      FieldName = 'sCheckNum'
      Size = 5
    end
    object zqWeeklyIO3sName: TStringField
      FieldName = 'sName'
      Size = 30
    end
    object zqWeeklyIO3dAmount: TFloatField
      FieldName = 'dAmount'
    end
    object zqWeeklyIO3iJobNum: TLargeintField
      FieldName = 'iJobNum'
    end
    object zqWeeklyIO3sDep1: TStringField
      FieldName = 'sDep1'
      Size = 1
    end
    object zqWeeklyIO3sBal1: TStringField
      FieldName = 'sBal1'
      Size = 1
    end
    object zqWeeklyIO3dCash: TFloatField
      FieldName = 'dCash'
    end
    object zqWeeklyIO3sDep2: TStringField
      FieldName = 'sDep2'
      Size = 1
    end
    object zqWeeklyIO3sBal2: TStringField
      FieldName = 'sBal2'
      Size = 1
    end
  end
  object ActionList1: TActionList
    Left = 308
    Top = 560
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
    Left = 344
    Top = 560
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
end
