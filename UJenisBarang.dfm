inherited fJenisBarang: TfJenisBarang
  Caption = ' Jenis Barang'
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [1]
    Left = 136
    Top = 232
    Width = 202
    Height = 15
    Caption = 'Label1'
  end
  inherited Panel1: TPanel
    object Nama_barang: TLabeledEdit
      Left = 129
      Top = 26
      Width = 338
      Height = 23
      EditLabel.Width = 72
      EditLabel.Height = 15
      EditLabel.Caption = 'Nama barang'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object Kode_barang: TLabeledEdit
      Left = 129
      Top = 53
      Width = 338
      Height = 23
      EditLabel.Width = 69
      EditLabel.Height = 15
      EditLabel.Caption = 'Kode_barang'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object Button2: TButton
      Left = 89
      Top = 130
      Width = 75
      Height = 25
      Action = Insert
      TabOrder = 3
    end
    object Button3: TButton
      Left = 170
      Top = 114
      Width = 75
      Height = 41
      Caption = 'Button3'
      TabOrder = 4
    end
    object id: TLabeledEdit
      Left = 488
      Top = 114
      Width = 121
      Height = 23
      EditLabel.Width = 10
      EditLabel.Height = 15
      EditLabel.Caption = 'id'
      LabelPosition = lpLeft
      TabOrder = 5
    end
  end
  inherited DBGrid1: TDBGrid
    PopupMenu = PopupMenu1
    OnDblClick = DBGrid1DblClick
  end
  object Nama_Merk: TLabeledEdit [4]
    Left = 129
    Top = 82
    Width = 338
    Height = 23
    EditLabel.Width = 64
    EditLabel.Height = 15
    EditLabel.Caption = 'Nama_Merk'
    LabelPosition = lpLeft
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    inherited Insert: TAction
      ShortCut = 16467
      OnExecute = InsertExecute
    end
    inherited Update: TAction
      OnExecute = UpdateExecute
    end
    inherited Delete: TAction
      OnExecute = DeleteExecute
    end
  end
end
