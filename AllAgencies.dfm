object Agencies: TAgencies
  Left = 0
  Top = 0
  Caption = 'Agencies'
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
  object AgencyGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 505
    Height = 120
    Align = alTop
    DataSource = AgencyDataSource
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
    Left = 104
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
    Left = 306
    Top = 146
  end
  object AgencyTable: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM AGENCY')
    Left = 418
    Top = 146
  end
  object AgencyDataSource: TDataSource
    DataSet = AgencyTable
    Left = 184
    Top = 146
  end
end
