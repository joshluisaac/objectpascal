object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 51
    Height = 13
    Caption = 'First Name'
  end
  object isValid: TCheckBox
    Left = 48
    Top = 6
    Width = 97
    Height = 17
    Caption = 'isValid'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 249
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object firstName: TEdit
    Left = 122
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object listNames: TListBox
    Left = 48
    Top = 56
    Width = 276
    Height = 97
    ItemHeight = 13
    TabOrder = 3
  end
end
