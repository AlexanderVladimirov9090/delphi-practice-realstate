object RegCustomer: TRegCustomer
  Left = 0
  Top = 0
  Caption = 'RegCustomer'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CustomerName: TEdit
    Left = 176
    Top = 32
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 0
  end
  object CustomerPhone: TEdit
    Left = 176
    Top = 59
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 1
  end
  object Registerbtn: TButton
    Left = 200
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 2
    OnClick = RegisterbtnClick
  end
  object Name: TStaticText
    Left = 111
    Top = 36
    Width = 42
    Height = 20
    Caption = 'Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Phone: TStaticText
    Left = 111
    Top = 63
    Width = 44
    Height = 20
    Caption = 'Phone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
