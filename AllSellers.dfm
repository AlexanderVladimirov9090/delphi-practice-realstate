object Sellers: TSellers
  Left = 0
  Top = 0
  Caption = 'Sellers'
  ClientHeight = 249
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
    DataSource = SellerData
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = idCustomerAndEmployee
  end
  object Exitbtn: TButton
    Left = 8
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
    OnClick = ExitbtnClick
  end
  object RegisterPropertybtn: TButton
    Left = 232
    Top = 126
    Width = 97
    Height = 25
    Caption = 'Register Property'
    TabOrder = 2
    OnClick = RegisterPropertybtnClick
  end
  object Refreshbtn: TButton
    Left = 120
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 3
    OnClick = RefreshbtnClick
  end
  object AgencyconnectionConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AgencyConnection')
    Connected = True
    LoginPrompt = False
    Left = 371
    Top = 134
  end
  object SellerTable: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      
        'SELECT customer_id, name, phone, employee_id FROM Seller INNER J' +
        'OIN Customer ON Seller.customer_id=Customer.ID')
    Left = 411
    Top = 174
  end
  object SellerData: TDataSource
    DataSet = SellerTable
    Left = 344
    Top = 176
  end
end
