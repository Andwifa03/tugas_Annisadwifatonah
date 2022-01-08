object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'FMain'
  ClientHeight = 463
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 528
    Top = 128
    object DataMaster1: TMenuItem
      Action = DataMaster
      object Jenisbarang1: TMenuItem
        Action = Jenis_barang
        Caption = 'merk'
      end
      object Barang1: TMenuItem
        Action = Barang
        Caption = 'tugass1'
      end
    end
    object ransaksi1: TMenuItem
      Action = Transaksi
    end
    object Laporan1: TMenuItem
      Action = Laporan
    end
  end
  object ActionList1: TActionList
    Left = 528
    Top = 200
    object Jenis_barang: TAction
      Category = 'Fitur'
      Caption = 'Jenis_barang'
      OnExecute = Jenis_barangExecute
    end
    object DataMaster: TAction
      Category = 'Control'
      Caption = 'DataMaster'
      OnExecute = DataMasterExecute
    end
    object Transaksi: TAction
      Category = 'Control'
      Caption = 'Transaksi'
      OnExecute = TransaksiExecute
    end
    object Laporan: TAction
      Category = 'Control'
      Caption = 'Laporan'
      OnExecute = LaporanExecute
    end
    object Barang: TAction
      Category = 'Fitur'
      Caption = 'Barang'
      OnExecute = BarangExecute
    end
  end
end
