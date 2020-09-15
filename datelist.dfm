object frmDateList: TfrmDateList
  Left = 771
  Top = 103
  BorderStyle = bsSingle
  Caption = 'Date List'
  ClientHeight = 276
  ClientWidth = 173
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
  object ListBox1: TListBox
    Left = 8
    Top = 12
    Width = 153
    Height = 193
    ItemHeight = 13
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 212
    Width = 157
    Height = 25
    Caption = 'Add next week'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 90
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Show'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 244
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
end
