object fInduk: TfInduk
  Left = 0
  Top = 0
  Caption = 'fInduk'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 161
    Width = 624
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 97
    ExplicitWidth = 344
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 161
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 130
      Width = 75
      Height = 25
      Action = TampilData
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 164
    Width = 624
    Height = 277
    Align = alClient
    DataSource = UniDataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniStoredProc1
    Left = 440
    Top = 256
  end
  object UniStoredProc1: TUniStoredProc
    Connection = DM.UniConnection1
    Left = 440
    Top = 200
  end
  object ActionList1: TActionList
    Left = 440
    Top = 312
    object TampilData: TAction
      Category = 'Standart'
      Caption = 'Tampil Data'
      ShortCut = 116
      OnExecute = TampilDataExecute
    end
    object Insert: TAction
      Category = 'Standart'
      Caption = 'Simpan'
      ShortCut = 16457
    end
    object Update: TAction
      Category = 'Standart'
      Caption = 'Ubah'
      ShortCut = 16469
    end
    object Delete: TAction
      Category = 'Standart'
      Caption = 'Hapus'
      ShortCut = 46
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 376
    object ampilData1: TMenuItem
      Action = TampilData
    end
    object Insert1: TMenuItem
      Action = Insert
    end
    object Update1: TMenuItem
      Action = Update
    end
    object Delete1: TMenuItem
      Action = Delete
    end
  end
end
