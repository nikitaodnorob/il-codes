// Type: TextAnalysis.FrequencyAnalysisTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: AD588C4C-32A0-4675-934A-DF8CF883169F
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author2\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.FrequencyAnalysisTask
    extends [mscorlib]System.Object
{

  .class nested private auto ansi beforefieldinit
    Pair
      extends [mscorlib]System.Object
  {

    .field private string '<Word>k__BackingField'
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
        = (01 00 00 00 )

    .field private int32 '<Count>k__BackingField'
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
        = (01 00 00 00 )

    .method public hidebysig specialname rtspecialname instance void
      .ctor(
        string word
      ) cil managed
    {
      .maxstack 8

      // [89 37 - 89 42]
      IL_0000: ldarg.0      // this
      IL_0001: ldc.i4.1
      IL_0002: stfld        int32 TextAnalysis.FrequencyAnalysisTask/Pair::'<Count>k__BackingField'
      IL_0007: ldarg.0      // this
      IL_0008: call         instance void [mscorlib]System.Object::.ctor()

      // [85 35 - 85 51]
      IL_000d: ldarg.0      // this
      IL_000e: ldarg.1      // word
      IL_000f: call         instance void TextAnalysis.FrequencyAnalysisTask/Pair::set_Word(string)
      IL_0014: ret

    } // end of method Pair::.ctor

    .method public hidebysig specialname instance string
      get_Word() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
        = (01 00 00 00 )
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: ldfld        string TextAnalysis.FrequencyAnalysisTask/Pair::'<Word>k__BackingField'
      IL_0006: ret

    } // end of method Pair::get_Word

    .method public hidebysig specialname instance void
      set_Word(
        string 'value'
      ) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
        = (01 00 00 00 )
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: ldarg.1      // 'value'
      IL_0002: stfld        string TextAnalysis.FrequencyAnalysisTask/Pair::'<Word>k__BackingField'
      IL_0007: ret

    } // end of method Pair::set_Word

    .method public hidebysig specialname instance int32
      get_Count() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
        = (01 00 00 00 )
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: ldfld        int32 TextAnalysis.FrequencyAnalysisTask/Pair::'<Count>k__BackingField'
      IL_0006: ret

    } // end of method Pair::get_Count

    .method public hidebysig specialname instance void
      set_Count(
        int32 'value'
      ) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
        = (01 00 00 00 )
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: ldarg.1      // 'value'
      IL_0002: stfld        int32 TextAnalysis.FrequencyAnalysisTask/Pair::'<Count>k__BackingField'
      IL_0007: ret

    } // end of method Pair::set_Count

    .property instance string Word()
    {
      .get instance string TextAnalysis.FrequencyAnalysisTask/Pair::get_Word()
      .set instance void TextAnalysis.FrequencyAnalysisTask/Pair::set_Word(string)
    } // end of property Pair::Word

    .property instance int32 Count()
    {
      .get instance int32 TextAnalysis.FrequencyAnalysisTask/Pair::get_Count()
      .set instance void TextAnalysis.FrequencyAnalysisTask/Pair::set_Count(int32)
    } // end of property Pair::Count
  } // end of class Pair

  .field private static class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> counts

  .method public hidebysig static class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>
    GetMostFrequentNextWords(
      class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> text
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>> V_0,
      [1] class [mscorlib]System.Collections.Generic.List`1<string> stringList,
      [2] int32 index,
      [3] string V_3,
      [4] string V_4
    )

    // [18 7 - 18 96]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::.ctor()
    IL_0005: stsfld       class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> TextAnalysis.FrequencyAnalysisTask::counts

    // [19 43 - 19 47]
    IL_000a: ldarg.0      // text
    IL_000b: callvirt     instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0/*class [mscorlib]System.Collections.Generic.List`1<string>*/> class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::GetEnumerator()
    IL_0010: stloc.0      // V_0
    .try
    {

      IL_0011: br.s         IL_007c
      // start of loop, entry point: IL_007c

        // [19 16 - 19 39]
        IL_0013: ldloca.s     V_0
        IL_0015: call         instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Current()
        IL_001a: stloc.1      // stringList

        // [21 14 - 21 27]
        IL_001b: ldc.i4.0
        IL_001c: stloc.2      // index

        IL_001d: br.s         IL_0071
        // start of loop, entry point: IL_0071

          // [23 11 - 23 44]
          IL_001f: ldloc.2      // index
          IL_0020: ldloc.1      // stringList
          IL_0021: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
          IL_0026: ldc.i4.2
          IL_0027: sub
          IL_0028: bge.s        IL_0056

          // [24 13 - 24 115]
          IL_002a: ldloc.1      // stringList
          IL_002b: ldloc.2      // index
          IL_002c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_0031: ldstr        " "
          IL_0036: ldloc.1      // stringList
          IL_0037: ldloc.2      // index
          IL_0038: ldc.i4.1
          IL_0039: add
          IL_003a: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_003f: call         string [mscorlib]System.String::Concat(string, string, string)
          IL_0044: ldloc.1      // stringList
          IL_0045: ldloc.2      // index
          IL_0046: ldc.i4.2
          IL_0047: add
          IL_0048: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_004d: stloc.s      V_4
          IL_004f: ldloc.s      V_4
          IL_0051: call         void TextAnalysis.FrequencyAnalysisTask::AddGramm(string, string)

          // [25 11 - 25 83]
          IL_0056: ldloc.1      // stringList
          IL_0057: ldloc.2      // index
          IL_0058: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_005d: ldloc.1      // stringList
          IL_005e: ldloc.2      // index
          IL_005f: ldc.i4.1
          IL_0060: add
          IL_0061: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_0066: stloc.3      // V_3
          IL_0067: ldloc.3      // V_3
          IL_0068: call         void TextAnalysis.FrequencyAnalysisTask::AddGramm(string, string)

          // [21 59 - 21 66]
          IL_006d: ldloc.2      // index
          IL_006e: ldc.i4.1
          IL_006f: add
          IL_0070: stloc.2      // index

          // [21 29 - 21 57]
          IL_0071: ldloc.2      // index
          IL_0072: ldloc.1      // stringList
          IL_0073: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
          IL_0078: ldc.i4.1
          IL_0079: sub
          IL_007a: blt.s        IL_001f
        // end of loop

        IL_007c: ldloca.s     V_0
        IL_007e: call         instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>::MoveNext()
        IL_0083: brtrue.s     IL_0013
      // end of loop
      IL_0085: leave.s      IL_0095
    } // end of .try
    finally
    {
      IL_0087: ldloca.s     V_0
      IL_0089: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>
      IL_008f: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0094: endfinally
    } // end of finally

    // [28 7 - 28 54]
    IL_0095: call         class [mscorlib]System.Collections.Generic.Dictionary`2<string, string> TextAnalysis.FrequencyAnalysisTask::FindFrequencies()
    IL_009a: ret

  } // end of method FrequencyAnalysisTask::GetMostFrequentNextWords

  .method public hidebysig static void
    AddGramm(
      string key,
      string word
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair> V_0,
      [1] class TextAnalysis.FrequencyAnalysisTask/Pair pair,
      [2] int32 V_2
    )

    // [33 7 - 33 57]
    IL_0000: ldsfld       class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> TextAnalysis.FrequencyAnalysisTask::counts
    IL_0005: ldarg.0      // key
    IL_0006: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::ContainsKey(!0/*string*/)
    IL_000b: brfalse.s    IL_0078

    // [35 53 - 35 86]
    IL_000d: ldsfld       class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> TextAnalysis.FrequencyAnalysisTask::counts
    IL_0012: ldarg.0      // key
    IL_0013: callvirt     instance !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Item(!0/*string*/)
    IL_0018: callvirt     instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/> class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::GetEnumerator()
    IL_001d: stloc.0      // V_0
    .try
    {

      IL_001e: br.s         IL_0048
      // start of loop, entry point: IL_0048

        // [35 18 - 35 49]
        IL_0020: ldloca.s     V_0
        IL_0022: call         instance !0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/ valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair>::get_Current()
        IL_0027: stloc.1      // pair

        // [37 11 - 37 33]
        IL_0028: ldloc.1      // pair
        IL_0029: callvirt     instance string TextAnalysis.FrequencyAnalysisTask/Pair::get_Word()
        IL_002e: ldarg.1      // word
        IL_002f: call         bool [mscorlib]System.String::op_Equality(string, string)
        IL_0034: brfalse.s    IL_0048

        // [39 13 - 39 25]
        IL_0036: ldloc.1      // pair
        IL_0037: dup
        IL_0038: callvirt     instance int32 TextAnalysis.FrequencyAnalysisTask/Pair::get_Count()
        IL_003d: stloc.2      // V_2
        IL_003e: ldloc.2      // V_2
        IL_003f: ldc.i4.1
        IL_0040: add
        IL_0041: callvirt     instance void TextAnalysis.FrequencyAnalysisTask/Pair::set_Count(int32)

        // [40 13 - 40 20]
        IL_0046: leave.s      IL_0094

        IL_0048: ldloca.s     V_0
        IL_004a: call         instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair>::MoveNext()
        IL_004f: brtrue.s     IL_0020
      // end of loop
      IL_0051: leave.s      IL_0061
    } // end of .try
    finally
    {
      IL_0053: ldloca.s     V_0
      IL_0055: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair>
      IL_005b: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0060: endfinally
    } // end of finally

    // [43 9 - 43 84]
    IL_0061: ldsfld       class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> TextAnalysis.FrequencyAnalysisTask::counts
    IL_0066: ldarg.0      // key
    IL_0067: callvirt     instance !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Item(!0/*string*/)
    IL_006c: ldarg.1      // word
    IL_006d: newobj       instance void TextAnalysis.FrequencyAnalysisTask/Pair::.ctor(string)
    IL_0072: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::Add(!0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/)
    IL_0077: ret

    // [46 9 - 49 11]
    IL_0078: ldsfld       class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> TextAnalysis.FrequencyAnalysisTask::counts
    IL_007d: ldarg.0      // key
    IL_007e: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::.ctor()
    IL_0083: dup

    IL_0084: ldarg.1      // word
    IL_0085: newobj       instance void TextAnalysis.FrequencyAnalysisTask/Pair::.ctor(string)
    IL_008a: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::Add(!0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/)
    IL_008f: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::Add(!0/*string*/, !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/)
    IL_0094: ret

  } // end of method FrequencyAnalysisTask::AddGramm

  .method public hidebysig static class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>
    FindFrequencies() cil managed
  {
    .maxstack 4
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.Dictionary`2<string, string> frequencies,
      [1] valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> V_1,
      [2] valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> count,
      [3] class TextAnalysis.FrequencyAnalysisTask/Pair pair1,
      [4] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair> V_4,
      [5] class TextAnalysis.FrequencyAnalysisTask/Pair pair2
    )

    // [54 7 - 54 80]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::.ctor()
    IL_0005: stloc.0      // frequencies

    // [55 80 - 55 108]
    IL_0006: ldsfld       class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>> TextAnalysis.FrequencyAnalysisTask::counts
    IL_000b: callvirt     instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0/*string*/, !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/> class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::GetEnumerator()
    IL_0010: stloc.1      // V_1
    .try
    {

      IL_0011: br           IL_00df
      // start of loop, entry point: IL_00df

        // [55 16 - 55 76]
        IL_0016: ldloca.s     V_1
        IL_0018: call         instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0/*string*/, !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Current()
        IL_001d: stloc.2      // count

        // [57 9 - 57 36]
        IL_001e: ldloca.s     count
        IL_0020: call         instance !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Value()
        IL_0025: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::get_Count()
        IL_002a: ldc.i4.1
        IL_002b: bne.un.s     IL_0051

        // [59 11 - 59 58]
        IL_002d: ldloc.0      // frequencies
        IL_002e: ldloca.s     count
        IL_0030: call         instance !0/*string*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Key()
        IL_0035: ldloca.s     count
        IL_0037: call         instance !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Value()
        IL_003c: ldc.i4.0
        IL_003d: callvirt     instance !0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/ class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::get_Item(int32)
        IL_0042: callvirt     instance string TextAnalysis.FrequencyAnalysisTask/Pair::get_Word()
        IL_0047: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::Add(!0/*string*/, !1/*string*/)

        IL_004c: br           IL_00df

        // [63 11 - 63 60]
        IL_0051: ldloca.s     count
        IL_0053: call         instance !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Value()
        IL_0058: ldc.i4.0
        IL_0059: callvirt     instance !0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/ class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::get_Item(int32)
        IL_005e: stloc.3      // pair1

        // [64 56 - 64 67]
        IL_005f: ldloca.s     count
        IL_0061: call         instance !1/*class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Value()
        IL_0066: callvirt     instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/> class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>::GetEnumerator()
        IL_006b: stloc.s      V_4
        .try
        {

          IL_006d: br.s         IL_00b3
          // start of loop, entry point: IL_00b3

            // [64 20 - 64 52]
            IL_006f: ldloca.s     V_4
            IL_0071: call         instance !0/*class TextAnalysis.FrequencyAnalysisTask/Pair*/ valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair>::get_Current()
            IL_0076: stloc.s      pair2

            // [66 13 - 66 44]
            IL_0078: ldloc.s      pair2
            IL_007a: callvirt     instance int32 TextAnalysis.FrequencyAnalysisTask/Pair::get_Count()
            IL_007f: ldloc.3      // pair1
            IL_0080: callvirt     instance int32 TextAnalysis.FrequencyAnalysisTask/Pair::get_Count()
            IL_0085: blt.s        IL_00b3

            // [68 15 - 68 46]
            IL_0087: ldloc.3      // pair1
            IL_0088: callvirt     instance int32 TextAnalysis.FrequencyAnalysisTask/Pair::get_Count()
            IL_008d: ldloc.s      pair2
            IL_008f: callvirt     instance int32 TextAnalysis.FrequencyAnalysisTask/Pair::get_Count()
            IL_0094: bne.un.s     IL_00b0

            // [70 17 - 70 71]
            IL_0096: ldloc.3      // pair1
            IL_0097: callvirt     instance string TextAnalysis.FrequencyAnalysisTask/Pair::get_Word()
            IL_009c: ldloc.s      pair2
            IL_009e: callvirt     instance string TextAnalysis.FrequencyAnalysisTask/Pair::get_Word()
            IL_00a3: call         int32 [mscorlib]System.String::CompareOrdinal(string, string)
            IL_00a8: ldc.i4.0
            IL_00a9: ble.s        IL_00b3

            // [71 19 - 71 32]
            IL_00ab: ldloc.s      pair2
            IL_00ad: stloc.3      // pair1

            IL_00ae: br.s         IL_00b3

            // [74 17 - 74 30]
            IL_00b0: ldloc.s      pair2
            IL_00b2: stloc.3      // pair1

            IL_00b3: ldloca.s     V_4
            IL_00b5: call         instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair>::MoveNext()
            IL_00ba: brtrue.s     IL_006f
          // end of loop
          IL_00bc: leave.s      IL_00cc
        } // end of .try
        finally
        {
          IL_00be: ldloca.s     V_4
          IL_00c0: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class TextAnalysis.FrequencyAnalysisTask/Pair>
          IL_00c6: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
          IL_00cb: endfinally
        } // end of finally

        // [77 11 - 77 49]
        IL_00cc: ldloc.0      // frequencies
        IL_00cd: ldloca.s     count
        IL_00cf: call         instance !0/*string*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::get_Key()
        IL_00d4: ldloc.3      // pair1
        IL_00d5: callvirt     instance string TextAnalysis.FrequencyAnalysisTask/Pair::get_Word()
        IL_00da: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::Add(!0/*string*/, !1/*string*/)

        IL_00df: ldloca.s     V_1
        IL_00e1: call         instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>::MoveNext()
        IL_00e6: brtrue       IL_0016
      // end of loop
      IL_00eb: leave.s      IL_00fb
    } // end of .try
    finally
    {
      IL_00ed: ldloca.s     V_1
      IL_00ef: constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.List`1<class TextAnalysis.FrequencyAnalysisTask/Pair>>
      IL_00f5: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_00fa: endfinally
    } // end of finally

    // [80 7 - 80 26]
    IL_00fb: ldloc.0      // frequencies
    IL_00fc: ret

  } // end of method FrequencyAnalysisTask::FindFrequencies
} // end of class TextAnalysis.FrequencyAnalysisTask

// Type: TextAnalysis.SentencesParserTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: AD588C4C-32A0-4675-934A-DF8CF883169F
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author2\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.SentencesParserTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>
    ParseSentences(
      string text
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> sentences,
      [1] class [System]System.Text.RegularExpressions.Regex regex,
      [2] string[] V_2,
      [3] int32 V_3,
      [4] string input,
      [5] class [mscorlib]System.Collections.Generic.List`1<string> stringList,
      [6] string[] V_6,
      [7] int32 V_7,
      [8] string str2
    )

    // [16 7 - 16 62]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::.ctor()
    IL_0005: stloc.0      // sentences

    // [17 7 - 17 72]
    IL_0006: ldarg.0      // text
    IL_0007: ldc.i4.7
    IL_0008: newarr       [mscorlib]System.Char
    IL_000d: dup
    IL_000e: ldtoken      field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=14' '<PrivateImplementationDetails>'::'44D2AD5DA064453B33C68A494FE7070189A8960A832A1370D4D5C2816822FF05'
    IL_0013: call         void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array, valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0018: callvirt     instance string[] [mscorlib]System.String::Split(char[])

    // [18 7 - 18 45]
    IL_001d: ldstr        "[^'a-zA-Z]+"
    IL_0022: newobj       instance void [System]System.Text.RegularExpressions.Regex::.ctor(string)
    IL_0027: stloc.1      // regex

    // [19 32 - 19 40]
    IL_0028: stloc.2      // V_2

    IL_0029: ldc.i4.0
    IL_002a: stloc.3      // V_3
    IL_002b: br           IL_00b2
    // start of loop, entry point: IL_00b2

      // [19 16 - 19 28]
      IL_0030: ldloc.2      // V_2
      IL_0031: ldloc.3      // V_3
      IL_0032: ldelem.ref
      IL_0033: stloc.s      input

      // [21 9 - 21 53]
      IL_0035: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
      IL_003a: stloc.s      stringList

      // [22 9 - 22 68]
      IL_003c: ldloc.1      // regex
      IL_003d: ldloc.s      input
      IL_003f: ldstr        " "
      IL_0044: callvirt     instance string [System]System.Text.RegularExpressions.Regex::Replace(string, string)
      IL_0049: callvirt     instance string [mscorlib]System.String::ToLower()
      IL_004e: ldc.i4.1
      IL_004f: newarr       [mscorlib]System.Char
      IL_0054: dup
      IL_0055: ldc.i4.0
      IL_0056: ldc.i4.s     32 // 0x20
      IL_0058: stelem.i2
      IL_0059: callvirt     instance string [mscorlib]System.String::Trim(char[])

      // [23 9 - 23 44]
      IL_005e: ldc.i4.1
      IL_005f: newarr       [mscorlib]System.Char
      IL_0064: dup
      IL_0065: ldc.i4.0
      IL_0066: ldc.i4.s     32 // 0x20
      IL_0068: stelem.i2

      // [24 33 - 24 52]
      IL_0069: callvirt     instance string[] [mscorlib]System.String::Split(char[])

      IL_006e: stloc.s      V_6
      IL_0070: ldc.i4.0
      IL_0071: stloc.s      V_7
      IL_0073: br.s         IL_0094
      // start of loop, entry point: IL_0094

        // [24 18 - 24 29]
        IL_0075: ldloc.s      V_6
        IL_0077: ldloc.s      V_7
        IL_0079: ldelem.ref
        IL_007a: stloc.s      str2

        // [26 11 - 26 43]
        IL_007c: ldloc.s      str2
        IL_007e: call         bool [mscorlib]System.String::IsNullOrEmpty(string)
        IL_0083: brtrue.s     IL_008e

        // [27 13 - 27 33]
        IL_0085: ldloc.s      stringList
        IL_0087: ldloc.s      str2
        IL_0089: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

        IL_008e: ldloc.s      V_7
        IL_0090: ldc.i4.1
        IL_0091: add
        IL_0092: stloc.s      V_7
        IL_0094: ldloc.s      V_7
        IL_0096: ldloc.s      V_6
        IL_0098: ldlen
        IL_0099: conv.i4
        IL_009a: blt.s        IL_0075
      // end of loop

      // [29 9 - 29 34]
      IL_009c: ldloc.s      stringList
      IL_009e: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_00a3: ldc.i4.0
      IL_00a4: ble.s        IL_00ae

      // [30 11 - 30 36]
      IL_00a6: ldloc.0      // sentences
      IL_00a7: ldloc.s      stringList
      IL_00a9: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::Add(!0/*class [mscorlib]System.Collections.Generic.List`1<string>*/)

      IL_00ae: ldloc.3      // V_3
      IL_00af: ldc.i4.1
      IL_00b0: add
      IL_00b1: stloc.3      // V_3
      IL_00b2: ldloc.3      // V_3
      IL_00b3: ldloc.2      // V_2
      IL_00b4: ldlen
      IL_00b5: conv.i4
      IL_00b6: blt          IL_0030
    // end of loop

    // [32 7 - 32 24]
    IL_00bb: ldloc.0      // sentences
    IL_00bc: ret

  } // end of method SentencesParserTask::ParseSentences
} // end of class TextAnalysis.SentencesParserTask

// Type: TextAnalysis.TextGeneratorTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: AD588C4C-32A0-4675-934A-DF8CF883169F
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author2\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.TextGeneratorTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static string
    ContinuePhrase(
      class [mscorlib]System.Collections.Generic.Dictionary`2<string, string> nextWords,
      string phraseBeginning,
      int32 wordsCount
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] string[] strArray,
      [1] int32 length,
      [2] string 'key1[77-102], key2[128-146]'
    )

    // [18 7 - 18 51]
    IL_0000: ldarg.0      // nextWords
    IL_0001: callvirt     instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Count()
    IL_0006: brfalse.s    IL_000b

    IL_0008: ldarg.2      // wordsCount
    IL_0009: brtrue.s     IL_000d

    // [19 9 - 19 32]
    IL_000b: ldarg.1      // phraseBeginning
    IL_000c: ret

    // [20 7 - 20 63]
    IL_000d: ldarg.1      // phraseBeginning
    IL_000e: ldc.i4.1
    IL_000f: newarr       [mscorlib]System.Char
    IL_0014: dup
    IL_0015: ldc.i4.0
    IL_0016: ldc.i4.s     32 // 0x20
    IL_0018: stelem.i2
    IL_0019: callvirt     instance string [mscorlib]System.String::Trim(char[])
    IL_001e: ldc.i4.1
    IL_001f: newarr       [mscorlib]System.Char
    IL_0024: dup
    IL_0025: ldc.i4.0
    IL_0026: ldc.i4.s     32 // 0x20
    IL_0028: stelem.i2
    IL_0029: callvirt     instance string[] [mscorlib]System.String::Split(char[])
    IL_002e: stloc.0      // strArray

    // [21 7 - 21 35]
    IL_002f: ldloc.0      // strArray
    IL_0030: ldlen
    IL_0031: conv.i4
    IL_0032: stloc.1      // length

    // [23 7 - 23 136]
    IL_0033: ldloc.1      // length
    IL_0034: ldc.i4.1
    IL_0035: ble.s        IL_0079

    IL_0037: ldarg.0      // nextWords
    IL_0038: ldloc.0      // strArray
    IL_0039: ldloc.1      // length
    IL_003a: ldc.i4.2
    IL_003b: sub
    IL_003c: ldelem.ref
    IL_003d: ldstr        " "
    IL_0042: ldloc.0      // strArray
    IL_0043: ldloc.1      // length
    IL_0044: ldc.i4.1
    IL_0045: sub
    IL_0046: ldelem.ref
    IL_0047: call         string [mscorlib]System.String::Concat(string, string, string)
    IL_004c: dup
    IL_004d: stloc.2      // key1
    IL_004e: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
    IL_0053: brfalse.s    IL_0079
    IL_0055: ldarg.0      // nextWords
    IL_0056: ldloc.2      // key1
    IL_0057: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
    IL_005c: brfalse.s    IL_0079

    // [25 9 - 25 66]
    IL_005e: ldarg.1      // phraseBeginning
    IL_005f: ldstr        " "
    IL_0064: ldarg.0      // nextWords
    IL_0065: ldloc.2      // key1
    IL_0066: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
    IL_006b: call         string [mscorlib]System.String::Concat(string, string, string)
    IL_0070: starg.s      phraseBeginning

    // [26 9 - 26 21]
    IL_0072: ldarg.2      // wordsCount
    IL_0073: ldc.i4.1
    IL_0074: sub
    IL_0075: starg.s      wordsCount

    IL_0077: br.s         IL_00a7

    // [30 9 - 30 52]
    IL_0079: ldloc.0      // strArray
    IL_007a: ldloc.0      // strArray
    IL_007b: ldlen
    IL_007c: conv.i4
    IL_007d: ldc.i4.1
    IL_007e: sub
    IL_007f: ldelem.ref
    IL_0080: stloc.2      // key2

    // [31 9 - 31 42]
    IL_0081: ldarg.0      // nextWords
    IL_0082: ldloc.2      // key2
    IL_0083: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
    IL_0088: brfalse.s    IL_00a5

    // [33 9 - 33 66]
    IL_008a: ldarg.1      // phraseBeginning
    IL_008b: ldstr        " "
    IL_0090: ldarg.0      // nextWords
    IL_0091: ldloc.2      // key2
    IL_0092: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
    IL_0097: call         string [mscorlib]System.String::Concat(string, string, string)
    IL_009c: starg.s      phraseBeginning

    // [34 9 - 34 21]
    IL_009e: ldarg.2      // wordsCount
    IL_009f: ldc.i4.1
    IL_00a0: sub
    IL_00a1: starg.s      wordsCount

    IL_00a3: br.s         IL_00a7

    // [32 11 - 32 34]
    IL_00a5: ldarg.1      // phraseBeginning
    IL_00a6: ret

    // [36 7 - 36 122]
    IL_00a7: ldarg.2      // wordsCount
    IL_00a8: ldc.i4.0
    IL_00a9: ble.s        IL_00b4

    IL_00ab: ldarg.0      // nextWords
    IL_00ac: ldarg.1      // phraseBeginning
    IL_00ad: ldarg.2      // wordsCount
    IL_00ae: call         string TextAnalysis.TextGeneratorTask::ContinuePhrase(class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>, string, int32)
    IL_00b3: ret
    IL_00b4: ldarg.1      // phraseBeginning
    IL_00b5: ret

  } // end of method TextGeneratorTask::ContinuePhrase
} // end of class TextAnalysis.TextGeneratorTask
