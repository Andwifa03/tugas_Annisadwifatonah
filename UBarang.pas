unit Ubarang;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  UInduk,
  Data.DB,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  MemDS,
  DBAccess,
  Uni,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfBarang = class(TfInduk)
    procedure TampilDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBarang: TfBarang;

implementation

{$R *.dfm}

uses UDM;

procedure TfBarang.TampilDataExecute(Sender: TObject);
begin
  inherited;
  with UniStoredProc1 do
  begin
    SQL.Clear;
    CreateProcCall('merk_view');
    ExecProc;
  end;

  { Fit Grid }
  DM.FitGrid(DBGrid1);
end;

end.
