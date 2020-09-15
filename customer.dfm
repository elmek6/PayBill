object frmCustomer: TfrmCustomer
  Left = 18
  Top = 121
  Width = 984
  Height = 480
  Caption = 'frmCustomer'
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
  object Label8: TLabel
    Left = 35
    Top = 36
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Acoount'
  end
  object Label9: TLabel
    Left = 22
    Top = 60
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Acct Name'
  end
  object Label10: TLabel
    Left = 37
    Top = 84
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Address'
  end
  object Label11: TLabel
    Left = 9
    Top = 108
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'City, State Zip'
  end
  object Label12: TLabel
    Left = 44
    Top = 132
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Phone'
  end
  object Label13: TLabel
    Left = 58
    Top = 156
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fax'
  end
  object Label14: TLabel
    Left = 47
    Top = 180
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-mail'
  end
  object Label15: TLabel
    Left = 7
    Top = 204
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'Contact Name'
  end
  object Label16: TLabel
    Left = 48
    Top = 228
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cell #'
  end
  object Label17: TLabel
    Left = 47
    Top = 252
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-mail'
  end
  object DBEdit8: TDBEdit
    Left = 84
    Top = 32
    Width = 101
    Height = 21
    DataField = 'sAccount'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit9: TDBEdit
    Left = 84
    Top = 56
    Width = 101
    Height = 21
    DataField = 'sAcctName'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit10: TDBEdit
    Left = 84
    Top = 80
    Width = 141
    Height = 21
    DataField = 'sAddress'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit11: TDBEdit
    Left = 84
    Top = 104
    Width = 141
    Height = 21
    DataField = 'sCity'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit12: TDBEdit
    Left = 84
    Top = 128
    Width = 101
    Height = 21
    DataField = 'sPhone'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit13: TDBEdit
    Left = 84
    Top = 152
    Width = 101
    Height = 21
    DataField = 'sFax'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit14: TDBEdit
    Left = 84
    Top = 176
    Width = 141
    Height = 21
    DataField = 'sEMail'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit15: TDBEdit
    Left = 84
    Top = 200
    Width = 101
    Height = 21
    DataField = 'sContactName'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit16: TDBEdit
    Left = 84
    Top = 224
    Width = 141
    Height = 21
    DataField = 'sCellNum'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit17: TDBEdit
    Left = 84
    Top = 248
    Width = 141
    Height = 21
    DataField = 'sCEMail'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 280
    Width = 937
    Height = 141
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 320
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = frmDM1.ZConnectionMain
    SQL.Strings = (
      'SELECT * FROM tCustomer;')
    Params = <>
    DataSource = frmDM1.dstJobOrder
    Left = 320
    Top = 72
  end
end
