object Employees: TEmployees
  Left = 0
  Top = 0
  Caption = 'Employees'
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
    DataSource = EmployeeData
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
  object Refresh: TButton
    Left = 120
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = RefreshClick
  end
  object AgencyconnectionConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AgencyConnection')
    Connected = True
    LoginPrompt = False
    Left = 363
    Top = 130
  end
  object EmployeeTable: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 363
    Top = 178
  end
  object EmployeeData: TDataSource
    DataSet = EmployeeTable
    Left = 208
    Top = 168
  end
end
