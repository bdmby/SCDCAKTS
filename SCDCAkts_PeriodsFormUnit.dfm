object SCDCAkts_PeriodsForm: TSCDCAkts_PeriodsForm
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1080#1086#1076#1099' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
  ClientHeight = 672
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  DesignSize = (
    1031
    672)
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAkts_PeriodDBGridEh: TDBGridEh
    Left = 8
    Top = 39
    Width = 1015
    Height = 625
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SCDCAkts_PeriodsFDTableDataSource
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 550
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SearchPanel.Location = splHorzScrollBarExtraPanelEh
    TabOrder = 0
    OnRowDetailPanelShow = SCDCAkts_PeriodDBGridEhRowDetailPanelShow
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'periodId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 91
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'contractId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
        Visible = False
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'periodName'
        Footers = <>
        Title.Caption = #1055#1077#1088#1080#1086#1076
        Width = 159
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'directorId'
        Footers = <>
        LookupParams.KeyFieldNames = 'directorId'
        LookupParams.LookupDataSet = DirectorPersonFDQuery
        LookupParams.LookupDisplayFieldName = 'directorName'
        LookupParams.LookupKeyFieldNames = 'directorId'
        Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Width = 321
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'assigneeId'
        Footers = <>
        LookupParams.KeyFieldNames = 'assigneeId'
        LookupParams.LookupDataSet = AssigneePersonFDQuery
        LookupParams.LookupDisplayFieldName = 'assigneeName'
        LookupParams.LookupKeyFieldNames = 'assigneeId'
        Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100
        Width = 383
      end>
    object RowDetailData: TRowDetailPanelControlEh
      DesignSize = (
        937
        548)
      object AktsDBGridEh: TDBGridEh
        Left = 8
        Top = 40
        Width = 921
        Height = 498
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = AktsFDQueryDataSource
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SearchPanel.Location = splHorzScrollBarExtraPanelEh
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aktId'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
            Width = 89
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'periodId'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1055#1077#1088#1080#1086#1076
            Visible = False
            Width = 94
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aktNumber'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072
            Width = 93
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aktDate'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
            Width = 91
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'subjectId'
            Footers = <>
            LookupParams.KeyFieldNames = 'subjectId'
            LookupParams.LookupDataSet = SCDCAkts_DataModule.SubjectsFDTable
            LookupParams.LookupDisplayFieldName = 'subjectName'
            LookupParams.LookupKeyFieldNames = 'subjectId'
            Title.Caption = #1052#1086#1076#1091#1083#1100
            Width = 334
          end
          item
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' (BYN)'
            Width = 110
          end
          item
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'laboriousness'
            Footers = <>
            Title.Caption = #1058#1088#1091#1076#1086#1105#1084#1082#1086#1089#1090#1100' ('#1085#1086#1088#1084#1086'/'#1095#1072#1089#1099')'
            Width = 148
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object AktPrintBitBtn: TBitBtn
        Left = 8
        Top = 9
        Width = 89
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000C0C0C05D534A
          44392E483D32483D32483D32483D32483D32483D32483D32483D32483D32483D
          3244392E5D534AC0C0C0C0C0C06F665EE6DDD48F837893877C93877C93877C93
          877C93877C93877C93877C93877C8F8378E6DDD46F665EC0C0C07D746A696058
          F8F2EB53483D594E43594E43594E43594E43594E43594E43594E43594E435348
          3DF8F2EB6960587D746A7D746AC8BCB1C0B5AAC5BDB4C9C3BACAC4BBCAC4BBCA
          C4BBCAC4BBCAC4BBCAC4BBC9C3BAC5BDB4C0B5AAC8BCB17D746A82776ED5CDC3
          F7F7F9E3AC75902300932800932800932800932800932800932800902300E3AC
          75F7F7F9D5CDC382776E867B71E3DEDCF5A12DDB7100DE7800DF7900DF7900DF
          7900DF7900DF7900DF7900DE7800DB7100F5A12DE3DEDC867B718B8175F0EFF0
          FF9400FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF97
          00FF9400F0EFF08B817591857BF8F8FBFF9300FFEBA8FFE9A3FFE9A3FFE9A3FF
          E9A3FFE9A3FFE9A3FFE9A3FFE9A3FFEBA8FF9300F8F8FB91857B91857BF8F8FB
          FF9900555152382D25382D25382D25382D25382D25382D25382D25382D255551
          52FF9900F8F8FB91857BC0C0C0A39D9AFF9B007C7774FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7774FF9B00A39D9AC0C0C0C0C0C0C0C0C0
          C0C0C07F7975FFFFFFF8F5F1F9F5F2F9F5F2F9F5F2F9F6F2F9F6F3FFFFFF7E79
          75C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0887E73FFFFFFFAF8F6FAF8F6FA
          F8F6FAF9F7FEFDFCF2EEEAD5CFC99E9287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C08E8277FFFFFFFCFBFAFCFBFAFCFBFAFFFFFEBE9E9D625A51675E569488
          7DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C092877BFFFFFFFEFEFDFEFEFDFE
          FEFDFFFFFFC88F8FFFFFFFFFFFFFAB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0988C80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9192FFFFFFAB9F94C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A194889D90839C8F829C8F829C
          8F829C90839E9387AB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        TabOrder = 1
        OnClick = AktPrintBitBtnClick
      end
      object ReportDesignBitBtn: TBitBtn
        Left = 816
        Top = 9
        Width = 107
        Height = 25
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000333333333333
          3333993366CCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C033333399BFFF6699FF6699FF005500C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04D80E5CCE5FF
          99BFFF005500228822005500C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C06699FFCCE5FF116F11339933228822228822005500C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0228822
          66CC664DB34D339933228822228822005500C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C022882266CC664DB34D33993322882222
          8822005500C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C022882266CC664DB34D339933228822228822005500C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C022882266CC664DB34D33
          9933228822228822005500C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C022882266CC664DB34D339933228822228822005500C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C022882266
          CC664DB34D339933228822228822005500C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C022882266CC664DB34D3399332288222288
          22005500C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C022882266CC664DB34D339933228822228822666666C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C022882266CC664DB34D3399
          33888888BBBBBB666666C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C022882266CC66AAAAAACCCCCC8888883333CCC0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0999999DDDD
          DDAAAAAA6666DD3333CCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C09999996666FF6666FFC0C0C0}
        TabOrder = 2
        OnClick = ReportDesignBitBtnClick
      end
    end
  end
  object AktsPrintBitBtn: TBitBtn
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1086#1074
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000C0C0C05D534A
      44392E483D32483D32483D32483D32483D32483D32483D32483D32483D32483D
      3244392E5D534AC0C0C0C0C0C06F665EE6DDD48F837893877C93877C93877C93
      877C93877C93877C93877C93877C8F8378E6DDD46F665EC0C0C07D746A696058
      F8F2EB53483D594E43594E43594E43594E43594E43594E43594E43594E435348
      3DF8F2EB6960587D746A7D746AC8BCB1C0B5AAC5BDB4C9C3BACAC4BBCAC4BBCA
      C4BBCAC4BBCAC4BBCAC4BBC9C3BAC5BDB4C0B5AAC8BCB17D746A82776ED5CDC3
      F7F7F9E3AC75902300932800932800932800932800932800932800902300E3AC
      75F7F7F9D5CDC382776E867B71E3DEDCF5A12DDB7100DE7800DF7900DF7900DF
      7900DF7900DF7900DF7900DE7800DB7100F5A12DE3DEDC867B718B8175F0EFF0
      FF9400FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF97
      00FF9400F0EFF08B817591857BF8F8FBFF9300FFEBA8FFE9A3FFE9A3FFE9A3FF
      E9A3FFE9A3FFE9A3FFE9A3FFE9A3FFEBA8FF9300F8F8FB91857B91857BF8F8FB
      FF9900555152382D25382D25382D25382D25382D25382D25382D25382D255551
      52FF9900F8F8FB91857BC0C0C0A39D9AFF9B007C7774FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7774FF9B00A39D9AC0C0C0C0C0C0C0C0C0
      C0C0C07F7975FFFFFFF8F5F1F9F5F2F9F5F2F9F5F2F9F6F2F9F6F3FFFFFF7E79
      75C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0887E73FFFFFFFAF8F6FAF8F6FA
      F8F6FAF9F7FEFDFCF2EEEAD5CFC99E9287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C08E8277FFFFFFFCFBFAFCFBFAFCFBFAFFFFFEBE9E9D625A51675E569488
      7DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C092877BFFFFFFFEFEFDFEFEFDFE
      FEFDFFFFFFC88F8FFFFFFFFFFFFFAB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0988C80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9192FFFFFFAB9F94C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A194889D90839C8F829C8F829C
      8F829C90839E9387AB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    TabOrder = 1
    OnClick = AktsPrintBitBtnClick
  end
  object CopyAktsBitBtn: TBitBtn
    Left = 136
    Top = 8
    Width = 129
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090#1099
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF9393930000000000000000000000000000000000
      000000000000009B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C2
      C2C2BCBCBCBCBCBCBBBBBBBBBBBBBBBBBBBBBBBBA0A0A02B2B2BFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000AFAFAFE8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8C0C0C0000000FFFFFFFFFFFFFFFFFF000000000000000000A37F8800
      0000A3A3A3EBEBEBEBEBEBEAEAEAEAEAEAEAEAEAC1C1C1000000939393000000
      000000000000D2C1C5A37F88A37F88A37F88000000A5A5A5EEEEEEEEEEEEEEEE
      EEEBEBEBC3C3C3000000000000C2C2C2BCBCBC000000D2C1C5A37F88A37F88A3
      7F88A37F88000000EEEEEEEEEEEEEEEEEEECECECC4C4C4000000000000FDFDFD
      E8E8E8000000F8F6F7D2C1C5D6C6CAD2C1C5F3EFF0000000EFEFEFEFEFEFEEEE
      EEEEEEEEC5C5C5000000000000FDFDFDECECEC000000F8F6F7F8F6F7D2C1C5F6
      F3F4000000A7A7A7F0F0F0E2E2E2858585494B4B161616000000000000FDFDFD
      EEEEEE000000000000000000F8F6F7000000A7A7A7F1F1F1F1F1F1ADADAD7676
      765D5D5D404040000000000000FEFEFEEEEEEEEEEEEEEEEEEE000000000000B0
      B0B0F1F1F1F1F1F1F1F1F1C3C3C3FBFBFBA8A8A8000000B3B3B3000000FEFEFE
      EFEFEFEFEFEFEFEFEFEFEFEF000000FEFEFEFEFEFEFEFEFEFDFDFDE0E0E0C1C1
      C1000000ACACACFFFFFF000000FEFEFEF1F1F1F1F1F1F0F0F0E2E2E259595900
      0000000000000000000000000000000000B3B3B3FFFFFFFFFFFF000000FEFEFE
      F1F1F1F1F1F1F1F1F1ADADAD7676765D5D5D404040000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FEFEFEF1F1F1F1F1F1F1F1F1C3C3C3FBFBFBA8
      A8A8000000B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFE
      FEFEFEFEFEFEFDFDFDE0E0E0C1C1C1000000ACACACFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFACACAC000000000000000000000000000000000000B3
      B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 2
    OnClick = CopyAktsBitBtnClick
  end
  object RecalcBitBtn: TBitBtn
    Left = 280
    Top = 8
    Width = 121
    Height = 25
    Caption = #1055#1077#1088#1077#1089#1095#1105#1090' '#1089#1091#1084#1084
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFF8F8F8
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F8F8F8FFFFFFE9EBEA77BC9B74BB9972BA9670B8956EB7936CB69169
      B58E68B48D65B48B63B28961B1875FB0855DAF8370AA8BF8F8F8E5E7E66ECEA2
      6CCA9E6AC49965C89865C2955FC4925FC1905ABF8C58BF8A56BA8651BE8552B8
      8249BA7E5EB084F7F7F7E5E7E673D1A7C1E7D5CAE5D999D1B7B6E2CE87CBAAEE
      F3F0BCD8C9BCDCCBDFE0DF90CDADC5E2D577C29B62B287F7F7F7E5E7E678D3AB
      90D6B7A0D3BC7BCEA89CD3B977C9A298D2B683C9A6BEE2D0C9E2D66BC19694CC
      AF5FC08E66B48BF7F7F7E5E7E67DD5AFC7EADBDEEDE6A2D7BFD7EDE39ED3BAE0
      F1E9B8D9C9CBEADBF1F2F197D2B5DCEAE380C7A369B58EF7F7F7E5E7E681D6B2
      97D8BC9ED2BB84D1AF98D1B780CDAA96D2B686CAAA89CFAE91CAAE75CAA192CB
      AE68C3966DB792F7F7F7E5E7E685D8B6C3E9D9D0EADEA3D9C2D3ECE19FD6BED7
      EFE5B5DBC9BBE4D1C4E1D498D4B8CDE7DB83CBA870B996F7F7F7E5E7E689D9B9
      A4DCC5ABD7C490D4B7A0D6BE8CD0B2A4D8C093CFB498D5BA93CDB283CEAC93CE
      B275C8A074BB99F7F7F7E5E7E68DDBBCBDE8D7CAE9DCA2DBC3C7EADB9ED8C0CA
      EBDDAFDCC8B0E2CDC1E2D398D7BBC2E5D686CFAD78BC9DF7F7F7E6E7E691DCC0
      A0DEC6B3E3D0B2E3CFB1E2CEAFE2CDAEE1CCACE1CBABE0C9AAE0C8A8DFC7A6DE
      C57CD2AB7CBEA0F7F7F7E6E7E795DEC3CEE8DEF5F4F4F5F4F4F5F4F4F5F4F4F5
      F4F4F5F4F4F5F4F4F5F4F4F5F4F4F5F4F49EDAC07FC0A3F7F7F7E6E7E799DFC6
      C9E2D8EAE9E8EAE9E8EAE9E8EAE9E8EAE9E8EAE9E8EAE9E8EAE9E8EAE9E8EAE9
      E89ED8BF83C1A6F7F7F7E6E7E79DE1CAB1DDCEC4DDD4C4DDD3C3DDD2C2DCD2C1
      DCD1C0DCD0BFDBD0BFDBCFBEDBCEBDDACD8ED6B886C3A8F7F7F7E7E8E7A1E2CD
      9EE1CB9CE0C99AE0C797DFC595DEC493DDC290DCC08EDBBE8CDABC89DABA87D9
      B885D8B689C4ABF8F8F8FCFCFCE7E9E8E7E8E8E6E8E7E6E8E7E6E8E7E6E8E7E6
      E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7E6E8E7EAEBEBFFFFFF}
    TabOrder = 3
    OnClick = RecalcBitBtnClick
  end
  object SCDCAkts_PeriodsFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 728
  end
  object SCDCAkts_PeriodsFDTableDataSource: TDataSource
    DataSet = PeriodsFDQuery
    Left = 168
    Top = 8
  end
  object DirectorPersonFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from v_directorpersons dp'
      '  where (dp.customerid = :aCustomerId)')
    Left = 344
    ParamData = <
      item
        Name = 'ACUSTOMERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object AssigneePersonFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from v_assigneepersons ap'
      '  where (ap.customerId = :aCustomerId)')
    Left = 584
    ParamData = <
      item
        Name = 'ACUSTOMERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object GetCustomerFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select c.customerId'
      '  from contracts c'
      '  where (c.contractId = :aContractId)')
    Left = 464
    ParamData = <
      item
        Name = 'ACONTRACTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PeriodsFDQuery: TFDQuery
    BeforeDelete = PeriodsFDQueryBeforeDelete
    OnNewRecord = PeriodsFDQueryNewRecord
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from periods p'
      '  where (p.contractId = :aContractId)')
    Left = 240
    ParamData = <
      item
        Name = 'ACONTRACTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object AktsFDQuery: TFDQuery
    OnNewRecord = AktsFDQueryNewRecord
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from akts a'
      '  where (a.periodId = :aPeriodId)')
    Left = 862
    ParamData = <
      item
        Name = 'APERIODID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object AktsFDQueryDataSource: TDataSource
    DataSet = AktsFDQuery
    Left = 960
  end
  object frxAktDBDataset: TfrxDBDataset
    UserName = 'Akts'
    CloseDataSource = True
    DataSet = AktsReportFDQuery
    BCDToCurrency = False
    Left = 182
    Top = 203
  end
  object AktsReportFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      
        'select a.aktId, a.aktNumber, a.aktDate, c.contractNumber, c.cont' +
        'ractDate, ct.customerName, ct.customerAccount, ct.customerBank, ' +
        'ct.customerUNP, dp.personPosition, dp.personName, ap.personPosit' +
        'ion, ap.personName, cl.clientName, s.subjectName, a.amount, a.la' +
        'boriousness'
      '  from akts a'
      '  inner join periods p on (p.periodId = a.periodId)'
      '  inner join subjects s on (s.subjectId = a.subjectId)'
      '  inner join contracts c on (c.contractId = p.contractId)'
      '  inner join customers ct on (ct.customerId = c.customerId)'
      '  inner join clients cl on (cl.clientId = c.clientId)'
      '  inner join persons dp on (dp.personId = p.directorId)'
      '  inner join persons ap on (ap.personId = p.assigneeId)'
      '  where (a.aktId = nvl(:aAktId, a.aktId))')
    Left = 278
    Top = 203
    ParamData = <
      item
        Name = 'AAKTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frxAktReport: TfrxReport
    Version = '5.5'
    DataSet = frxAktDBDataset
    DataSetName = 'Akts'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42611.915991250000000000
    ReportOptions.LastChange = 42612.651131215300000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 94
    Top = 202
  end
  object frxAktDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 94
    Top = 370
  end
  object frxAktPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 94
    Top = 258
  end
  object frxAktRTFExport: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 94
    Top = 314
  end
end
