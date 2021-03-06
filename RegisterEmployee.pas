unit RegisterEmployee;
  {Register form of employee.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmEmployee;

type
  TRegEmployee = class(TForm)
    EmployeePhone: TEdit;
    EmployeeName: TEdit;
    AgencyName: TEdit;
    Name: TStaticText;
    Phone: TStaticText;
    AgencyN: TStaticText;
    Register: TButton;
    procedure RegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegEmployee: TRegEmployee;

implementation

{$R *.dfm}

  {This button register employee to the database.}
procedure TRegEmployee.RegisterClick(Sender: TObject);
begin
  if (EmployeeName.Text<>'') and (EmployeePhone.Text <>'') and (AgencyName.Text<>'') then begin
  with dmEmployee.Form4.qrEmployee do
  begin
    dmEmployee.Form4.qrEmployee.Close;
    dmEmployee.Form4.qrEmployee.SQL.Clear;
    dmEmployee.Form4.qrEmployee.SQL.Add('INSERT INTO EMPLOYEE (NAME, PHONE, AGENCY_ID)');
    dmEmployee.Form4.qrEmployee.SQL.Add('VALUES ('''+EmployeeName.Text+''',');
    dmEmployee.Form4.qrEmployee.SQL.Add(' '''+EmployeePhone.Text+''',');
    dmEmployee.Form4.qrEmployee.SQL.Add(' (SELECT id FROM AGENCY WHERE AGENCY_NAME='''+AgencyName.Text +'''))');
    dmEmployee.Form4.qrEmployee.ExecSQL;
    RegEmployee.Close;
  end;
  end
    else begin
        ShowMessage('No Empty Values!');
   end;
end;
end.
