object Form1: TForm1
  Left = 520
  Top = 291
  BorderStyle = bsDialog
  Caption = 'M'#233'todo de doolittle'
  ClientHeight = 641
  ClientWidth = 1332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 167
    Top = 32
    Width = 192
    Height = 32
    Caption = 'llene los datos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 374
    Top = 32
    Width = 190
    Height = 32
    Caption = 'en la matriz A:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 509
    Top = 551
    Width = 164
    Height = 24
    Caption = 'Decimales con ","'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 509
    Top = 581
    Width = 114
    Height = 24
    Caption = 'Ej: 5.2 = 5,2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Shape1: TShape
    Left = 770
    Top = 32
    Width = 5
    Height = 585
    Brush.Color = clPurple
    Pen.Style = psClear
    Pen.Width = 0
    Visible = False
  end
  object Label6: TLabel
    Left = 781
    Top = 141
    Width = 49
    Height = 32
    Caption = 'L = '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 781
    Top = 445
    Width = 44
    Height = 32
    Caption = 'U ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel
    Left = 1146
    Top = 56
    Width = 157
    Height = 32
    Caption = 'Soluciones:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 181
    Top = 84
    Width = 75
    Height = 24
    Caption = 'Orden: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel
    Left = 176
    Top = 320
    Width = 42
    Height = 32
    Caption = 'A ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel
    Left = 386
    Top = 70
    Width = 202
    Height = 32
    Caption = 'y en la matriz b'
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 615
    Top = 320
    Width = 41
    Height = 32
    Caption = 'b ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label12: TLabel
    Left = 1146
    Top = 289
    Width = 39
    Height = 32
    Caption = 'x ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label13: TLabel
    Left = 1191
    Top = 593
    Width = 111
    Height = 24
    Caption = 'Versi'#243'n 1.1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 320
    Width = 161
    Height = 321
    Cursor = crHandPoint
    BevelOuter = bvNone
    Caption = 'Resolver sistema'
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnClick = Panel2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 161
    Height = 321
    Cursor = crHandPoint
    BevelOuter = bvNone
    Caption = 'Factorizar Matriz'
    Color = clFuchsia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnClick = Panel1Click
  end
  object MatrizA: TStringGrid
    Left = 224
    Top = 133
    Width = 385
    Height = 385
    BevelInner = bvNone
    BevelKind = bkFlat
    DefaultColWidth = 70
    DefaultRowHeight = 70
    FixedColor = clGrayText
    FixedCols = 0
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GridLineWidth = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object DimF: TComboBox
    Left = 262
    Top = 82
    Width = 97
    Height = 30
    Color = clPurple
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = '5'
    Visible = False
    OnChange = DimFChange
    Items.Strings = (
      '2'
      '3'
      '4'
      '5')
  end
  object Button1: TButton
    Left = 278
    Top = 551
    Width = 161
    Height = 49
    Cursor = crHandPoint
    Caption = 'Doolittle'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object MatrizL: TStringGrid
    Left = 836
    Top = 18
    Width = 285
    Height = 287
    BevelInner = bvNone
    BevelKind = bkFlat
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedColor = clGrayText
    FixedCols = 0
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GridLineWidth = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object MatrizU: TStringGrid
    Left = 831
    Top = 320
    Width = 285
    Height = 289
    BevelInner = bvNone
    BevelKind = bkFlat
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedColor = clGrayText
    FixedCols = 0
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GridLineWidth = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object MatrizB: TStringGrid
    Left = 662
    Top = 133
    Width = 93
    Height = 385
    BevelInner = bvNone
    BevelKind = bkFlat
    ColCount = 1
    DefaultColWidth = 70
    DefaultRowHeight = 70
    FixedColor = clGrayText
    FixedCols = 0
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GridLineWidth = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object MatrizX: TStringGrid
    Left = 1191
    Top = 108
    Width = 93
    Height = 385
    BevelInner = bvNone
    BevelKind = bkFlat
    ColCount = 1
    DefaultColWidth = 70
    DefaultRowHeight = 70
    FixedColor = clGrayText
    FixedCols = 0
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GridLineWidth = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 8
    Visible = False
  end
end
