program RealEstateAgency;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  RegisterAgency in 'RegisterAgency.pas' {RegAgency},
  dmAgency in 'dmAgency.pas' {Form3},
  AllAgencies in 'AllAgencies.pas' {Agencies},
  RegisterEmployee in 'RegisterEmployee.pas' {RegEmployee},
  dmEmployee in 'dmEmployee.pas' {Form4},
  AllEmployees in 'AllEmployees.pas' {Employees},
  RegisterCustomer in 'RegisterCustomer.pas' {RegCustomer},
  dmCustomer in 'dmCustomer.pas' {Form2},
  AllCustomers in 'AllCustomers.pas' {FormCustomers},
  RegisterBuyer in 'RegisterBuyer.pas' {Buyer},
  dmBuyer in 'dmBuyer.pas' {Form1},
  AllBuyers in 'AllBuyers.pas' {Buyers},
  RegSeller in 'RegSeller.pas' {RegisterSeller},
  dmSeller in 'dmSeller.pas' {Form5},
  AllSellers in 'AllSellers.pas' {Sellers},
  RegisterProperty in 'RegisterProperty.pas' {RegProperty},
  dmProperty in 'dmProperty.pas' {Form6},
  AllProperties in 'AllProperties.pas' {Properties};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRegAgency, RegAgency);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TAgencies, Agencies);
  Application.CreateForm(TRegEmployee, RegEmployee);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TEmployees, Employees);
  Application.CreateForm(TRegCustomer, RegCustomer);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormCustomers, FormCustomers);
  Application.CreateForm(TBuyer, Buyer);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TBuyers, Buyers);
  Application.CreateForm(TRegisterSeller, RegisterSeller);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TSellers, Sellers);
  Application.CreateForm(TRegProperty, RegProperty);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TProperties, Properties);
  Application.Run;
end.
