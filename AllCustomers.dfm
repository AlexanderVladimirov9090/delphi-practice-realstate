object FormCustomers: TFormCustomers
  Left = 0
  Top = 0
  Caption = 'FormCustomer'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 505
    Height = 120
    Align = alTop
    DataSource = CustomerData
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = getID
  end
  object Exit: TButton
    Left = 8
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
    OnClick = ExitClick
  end
  object RegisterBuyer: TButton
    Left = 216
    Top = 126
    Width = 90
    Height = 25
    Caption = 'Register Buyer'
    TabOrder = 2
    OnClick = RegisterBuyerClick
  end
  object RegisterSeller: TButton
    Left = 312
    Top = 126
    Width = 81
    Height = 25
    Caption = 'Register Seller'
    TabOrder = 3
    OnClick = RegisterSellerClick
  end
  object Refresh: TButton
    Left = 120
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 4
    OnClick = RefreshClick
  end
  object AgencyconnectionConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AgencyConnection')
    Connected = True
    LoginPrompt = False
    Left = 354
    Top = 170
  end
  object CustomerTable: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 410
    Top = 138
  end
  object CustomerData: TDataSource
    DataSet = CustomerTable
    Left = 248
    Top = 152
  end
end
