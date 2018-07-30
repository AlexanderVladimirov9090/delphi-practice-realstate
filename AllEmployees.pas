unit AllEmployees;
   {All employees are stored here.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TEmployees = class(TForm)
    AgencyconnectionConnection: TFDConnection;
    EmployeeTable: TFDQuery;
    EmployeeData: TDataSource;
    DBGrid1: TDBGrid;
    Exit: TButton;
    Refresh: TButton;
    procedure ExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Employees: TEmployees;

implementation

{$R *.dfm}

{Closes the form.}
procedure TEmployees.ExitClick(Sender: TObject);
begin
  Employees.Close;
end;

{Refreshes the dataset}
procedure TEmployees.FormCreate(Sender: TObject);
begin
  EmployeeData.DataSet.Refresh;
end;

{This button refresh the dataset.}
procedure TEmployees.RefreshClick(Sender: TObject);
begin
  EmployeeData.DataSet.Refresh;
end;
end.
