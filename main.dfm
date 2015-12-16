object Form1: TForm1
  Left = 368
  Top = 169
  Width = 466
  Height = 493
  Caption = 'replacer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 12
    Width = 45
    Height = 13
    Caption = 'Directory:'
  end
  object Label2: TLabel
    Left = 19
    Top = 100
    Width = 56
    Height = 13
    Caption = 'Text to find:'
  end
  object Label3: TLabel
    Left = 19
    Top = 124
    Width = 65
    Height = 13
    Caption = 'Replace with:'
  end
  object Label4: TLabel
    Left = 25
    Top = 323
    Width = 26
    Height = 13
    Caption = 'Logs:'
  end
  object Label5: TLabel
    Left = 19
    Top = 38
    Width = 25
    Height = 13
    Caption = 'Filter:'
  end
  object Label6: TLabel
    Left = 19
    Top = 61
    Width = 33
    Height = 13
    Caption = 'Except'
  end
  object Edit1: TEdit
    Left = 105
    Top = 9
    Width = 278
    Height = 21
    Hint = 'Folder or single file'
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 389
    Top = 8
    Width = 33
    Height = 21
    Hint = 'Open directory'
    Anchors = [akTop, akRight]
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 105
    Top = 98
    Width = 321
    Height = 21
    Hint = 'find (you can also use REPLACEFROM=AAAREPLACEUNTIL=BBB format)'
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 105
    Top = 124
    Width = 321
    Height = 21
    Hint = 'replace'
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 22
    Top = 199
    Width = 97
    Height = 17
    Hint = 'upper/lower case compare'
    Caption = 'Case Sensitive'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 22
    Top = 223
    Width = 121
    Height = 17
    Hint = 'will not match if before and after chars are not: _ a-z A-Z 0-9'
    Caption = 'Whole words only'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object Button2: TButton
    Left = 22
    Top = 282
    Width = 97
    Height = 25
    Hint = 'Start work'
    Caption = '&Replace All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 22
    Top = 344
    Width = 409
    Height = 90
    Hint = 'logs (replacerlog.dat)'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    Lines.Strings = (
      'command line:'
      'example:'
      
        '   replacer.exe /run /quiet /hide /exit /subdirs /dir="C:\myproj' +
        'ect" /filter="*.java" /find="XXX" /replace="YYY" /except="somefi' +
        'le.java"'
      'parameters:'
      '    exit: will quit (close) when task is terminated'
      '    run: auto start'
      '    hide: will hide its user interface'
      '    options (same as on the GUI)'
      '    dir: directory'
      '    filter: filter'
      '    except: except files'
      '    find: string to find'
      '    replace: string to replace with'
      '    rmode: 0: replace, 1: replace line, 2: prefix line'
      '    case: case sensitive'
      '    nocase: not case sensitive'
      '    whole: whole strings only'
      '    subdirs: include subdirectories'
      '    nosubdirs: don'#39't go to subdirectories'
      
        '    other parameters: noexit,norun,runforce,runscript,custom,qui' +
        'et'
      ''
      'Logs:')
    ParentShowHint = False
    ReadOnly = True
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 7
    WordWrap = False
  end
  object Edit4: TEdit
    Left = 105
    Top = 33
    Width = 319
    Height = 21
    Hint = 
      'File name filter.  Use * for all files. Separate multiple filter' +
      's with ; or , (semicolon or comma)'
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Text = '*.*'
  end
  object CheckBox3: TCheckBox
    Left = 22
    Top = 249
    Width = 97
    Height = 17
    Hint = 'include subdirectories and system and hidden files'
    Caption = 'Include subdirs and all file types'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object Button3: TButton
    Left = 333
    Top = 250
    Width = 92
    Height = 25
    Hint = 'open script file'
    Anchors = [akTop, akRight]
    Caption = 'Exec &Script'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 232
    Top = 286
    Width = 65
    Height = 20
    Anchors = [akTop, akRight]
    Caption = 'Classify'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 305
    Top = 285
    Width = 57
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'Insert'
    TabOrder = 12
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 369
    Top = 285
    Width = 57
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'Transl'
    TabOrder = 13
    OnClick = Button6Click
  end
  object RadioGroup1: TRadioGroup
    Left = 23
    Top = 152
    Width = 402
    Height = 33
    Anchors = [akLeft, akTop, akRight]
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Replace'
      'Replace line'
      'Prefix line')
    TabOrder = 14
  end
  object CheckBox4: TCheckBox
    Left = 325
    Top = 223
    Width = 101
    Height = 17
    Hint = 'Use custom replacer function'
    Alignment = taLeftJustify
    Anchors = [akTop, akRight]
    Caption = 'Custome parse'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object Edit5: TEdit
    Left = 105
    Top = 57
    Width = 319
    Height = 21
    Hint = 'filenames separated by comma to be excluded'
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object OpenDialog1: TOpenDialog
    Title = 'Load Script File'
    Left = 259
    Top = 242
  end
  object tm_start: TTimer
    Interval = 1
    OnTimer = tm_startTimer
    Left = 203
    Top = 290
  end
end
