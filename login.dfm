object frmLogin: TfrmLogin
  Left = 305
  Top = 78
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 152
  ClientWidth = 248
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
    Left = 24
    Top = 40
    Width = 51
    Height = 13
    Caption = 'User name'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblReenter: TLabel
    Left = 24
    Top = 87
    Width = 67
    Height = 13
    Caption = 'Re-enter Pass'
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 116
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 140
    Top = 116
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object txtPassword: TEdit
    Left = 96
    Top = 60
    Width = 121
    Height = 21
    PasswordChar = #215
    TabOrder = 1
  end
  object dblUser: TDBLookupComboBox
    Left = 96
    Top = 36
    Width = 137
    Height = 21
    KeyField = 'sUsername'
    ListSource = frmDM1.ds_tUser
    TabOrder = 0
    OnClick = dblUserClick
  end
  object txtReenter: TEdit
    Left = 96
    Top = 83
    Width = 121
    Height = 21
    PasswordChar = #215
    TabOrder = 2
    Visible = False
  end
end