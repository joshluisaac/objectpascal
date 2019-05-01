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
    Top = 84
    Width = 97
    Height = 17
    Caption = 'isValid'
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 144
    Width = 185
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 48
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = Button1Click
  end
  object firstName: TEdit
    Left = 122
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
