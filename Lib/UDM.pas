unit UDM;

interface

uses
  System.SysUtils,
  System.Classes,
  VCL.DBGrids,
  UniProvider,
  MySQLUniProvider,
  Data.DB,
  DBAccess,
  Uni, MemDS;

type
  TDM = class(TDataModule)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    UniStoredProc1: TUniStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FitGrid(Grid: TDBGrid); // Ctrl+Shift+C
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDataModule1 }

procedure TDM.FitGrid(Grid: TDBGrid);
const
  C_Add = 3;
var
  ds: TDataSet;
  bm: TBookmark;
  i : Integer;
  w : Integer;
  a : Array of Integer;
begin

  ds := Grid.DataSource.DataSet;
  if Assigned(ds) then
  begin
    ds.DisableControls;
    bm := ds.GetBookmark;
    try
      ds.First;
      SetLength(a, Grid.Columns.Count);
      while not ds.Eof do
      begin
        for i := 0 to Grid.Columns.Count - 1 do
        begin
          if Assigned(Grid.Columns[i].Field) then
          begin
            w    := Grid.Canvas.TextWidth(ds.FieldByName(Grid.Columns[i].Field.FieldName).DisplayText);
            a[i] := 65; // NILAI MINIMUM SIZE GRID
            if a[i] < w then
              a[i] := w;
          end;
        end;
        ds.Next;
      end;
      for i                   := 0 to Grid.Columns.Count - 1 do
        Grid.Columns[i].Width := a[i] + C_Add;
      ds.GotoBookmark(bm);
    finally
      ds.FreeBookmark(bm);
      ds.EnableControls;
    end;
  end;
end;

end.
