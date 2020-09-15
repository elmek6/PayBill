object frmSettings: TfrmSettings
  Left = 319
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Settings'
  ClientHeight = 395
  ClientWidth = 420
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
  object PageControl1: TPageControl
    Left = 16
    Top = 12
    Width = 385
    Height = 333
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'General'
      object Label5: TLabel
        Left = 16
        Top = 24
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Wall paper'
      end
      object Label2: TLabel
        Left = 16
        Top = 152
        Width = 44
        Height = 13
        Caption = 'Tax Rate'
      end
      object txtWallPaper: TEdit
        Left = 16
        Top = 40
        Width = 313
        Height = 21
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 336
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object chkCalendar: TCheckBox
        Left = 16
        Top = 92
        Width = 97
        Height = 17
        Caption = 'Show calendar'
        TabOrder = 2
      end
      object txtTax: TEdit
        Left = 72
        Top = 148
        Width = 49
        Height = 21
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'User'
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 27
        Height = 13
        Caption = 'Users'
      end
      object Label6: TLabel
        Left = 220
        Top = 24
        Width = 137
        Height = 53
        Alignment = taCenter
        AutoSize = False
        Caption = 'If you create a new account Password will be asked on login form'
        WordWrap = True
      end
      object Label7: TLabel
        Left = 12
        Top = 256
        Width = 49
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Add'
      end
      object Label8: TLabel
        Left = 60
        Top = 256
        Width = 45
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Del'
      end
      object Label9: TLabel
        Left = 108
        Top = 256
        Width = 49
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Save'
      end
      object Label10: TLabel
        Left = 156
        Top = 256
        Width = 49
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Delete'
      end
      object DBGrid1: TDBGrid
        Left = 12
        Top = 24
        Width = 189
        Height = 213
        DataSource = frmDM1.ds_tUser
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sUsername'
            Title.Caption = 'Username'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sLevel'
            PickList.Strings = (
              'M'
              'U')
            Title.Caption = 'Level'
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 12
        Top = 272
        Width = 192
        Height = 25
        DataSource = frmDM1.ds_tUser
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Data Base'
      ImageIndex = 2
      object Label3: TLabel
        Left = 40
        Top = 24
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'user'
      end
      object Label4: TLabel
        Left = 40
        Top = 48
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'host'
      end
      object txtDBUser: TEdit
        Left = 72
        Top = 20
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object txtHost: TEdit
        Left = 72
        Top = 44
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'localhost'
      end
      object BitBtn4: TBitBtn
        Left = 72
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Test'
        Enabled = False
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 120
        Width = 357
        Height = 173
        Caption = 'Advanced'
        TabOrder = 3
        object Label12: TLabel
          Left = 16
          Top = 32
          Width = 28
          Height = 13
          Caption = 'Query'
        end
        object Edit1: TEdit
          Left = 60
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Items'
      ImageIndex = 3
      object Label13: TLabel
        Left = 12
        Top = 20
        Width = 16
        Height = 13
        Caption = 'File'
      end
      object cboFiles: TComboBox
        Left = 44
        Top = 16
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Sales Persons'
        Items.Strings = (
          'Sales Persons'
          'Artists'
          'Printers'
          'Size'
          'Art')
      end
      object Memo1: TMemo
        Left = 12
        Top = 52
        Width = 345
        Height = 145
        ScrollBars = ssBoth
        TabOrder = 1
        WordWrap = False
      end
      object BitBtn1: TBitBtn
        Left = 216
        Top = 16
        Width = 69
        Height = 21
        Caption = 'Load'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 292
        Top = 16
        Width = 67
        Height = 21
        Caption = 'Save'
        TabOrder = 3
        OnClick = BitBtn2Click
      end
    end
  end
  object BitBtn6: TBitBtn
    Left = 240
    Top = 360
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn6Click
    Kind = bkOK
  end
  object BitBtn7: TBitBtn
    Left = 324
    Top = 360
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Jpeg|*.jpg'
    Left = 324
  end
end
