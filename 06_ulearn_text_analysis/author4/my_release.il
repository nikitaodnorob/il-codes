// Type: TextAnalysis.FrequencyAnalysisTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: F7249998-8718-4DC3-813B-A3A031F9D982
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author4\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.FrequencyAnalysisTask
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass3_0'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public int32 mostFreq

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance bool
      '<GetMostFreqGramm>b__1'(
        valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32> pair
      ) cil managed
    {
      .maxstack 8

      // [59 116 - 59 138]
      IL_0000: ldarga.s     pair
      IL_0002: call         instance !1/*int32*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Value()
      IL_0007: ldarg.0      // this
      IL_0008: ldfld        int32 TextAnalysis.FrequencyAnalysisTask/'<>c__DisplayClass3_0'::mostFreq
      IL_000d: ceq
      IL_000f: ret

    } // end of method '<>c__DisplayClass3_0'::'<GetMostFreqGramm>b__1'
  } // end of class '<>c__DisplayClass3_0'

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class TextAnalysis.FrequencyAnalysisTask/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, int32> '<>9__3_0'

    .field public static class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, string> '<>9__3_2'

    .field public static class [mscorlib]System.Comparison`1<string> '<>9__3_3'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void TextAnalysis.FrequencyAnalysisTask/'<>c'::.ctor()
      IL_0005: stsfld       class TextAnalysis.FrequencyAnalysisTask/'<>c' TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9'
      IL_000a: ret

    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32
      '<GetMostFreqGramm>b__3_0'(
        valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32> pair
      ) cil managed
    {
      .maxstack 8

      // [58 127 - 58 137]
      IL_0000: ldarga.s     pair
      IL_0002: call         instance !1/*int32*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Value()
      IL_0007: ret

    } // end of method '<>c'::'<GetMostFreqGramm>b__3_0'

    .method assembly hidebysig instance string
      '<GetMostFreqGramm>b__3_2'(
        valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32> pair
      ) cil managed
    {
      .maxstack 8

      // [59 234 - 59 242]
      IL_0000: ldarga.s     pair
      IL_0002: call         instance !0/*string*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Key()
      IL_0007: ret

    } // end of method '<>c'::'<GetMostFreqGramm>b__3_2'

    .method assembly hidebysig instance int32
      '<GetMostFreqGramm>b__3_3'(
        string x,
        string y
      ) cil managed
    {
      .maxstack 8

      // [60 49 - 60 76]
      IL_0000: ldarg.1      // x
      IL_0001: ldarg.2      // y
      IL_0002: call         int32 [mscorlib]System.String::CompareOrdinal(string, string)
      IL_0007: ret

    } // end of method '<>c'::'<GetMostFreqGramm>b__3_3'
  } // end of class '<>c'

  .method private hidebysig static void
    AddGrammToResult(
      class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>> gramms,
      string curGramm,
      string nextGramm
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32> dictionary,
      [1] class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32> V_1,
      [2] string V_2
    )

    // [20 7 - 20 41]
    IL_0000: ldarg.0      // gramms
    IL_0001: ldarg.1      // curGramm
    IL_0002: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::ContainsKey(!0/*string*/)
    IL_0007: brtrue.s     IL_0026

    // [22 9 - 22 75]
    IL_0009: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::.ctor()
    IL_000e: stloc.0      // dictionary

    // [23 9 - 23 41]
    IL_000f: ldarg.0      // gramms
    IL_0010: ldarg.1      // curGramm
    IL_0011: ldloc.0      // dictionary
    IL_0012: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::Add(!0/*string*/, !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/)

    // [24 9 - 24 43]
    IL_0017: ldarg.0      // gramms
    IL_0018: ldarg.1      // curGramm
    IL_0019: callvirt     instance !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Item(!0/*string*/)
    IL_001e: ldarg.2      // nextGramm
    IL_001f: ldc.i4.1
    IL_0020: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::Add(!0/*string*/, !1/*int32*/)
    IL_0025: ret

    // [26 12 - 26 57]
    IL_0026: ldarg.0      // gramms
    IL_0027: ldarg.1      // curGramm
    IL_0028: callvirt     instance !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Item(!0/*string*/)
    IL_002d: ldarg.2      // nextGramm
    IL_002e: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::ContainsKey(!0/*string*/)
    IL_0033: brtrue.s     IL_0044

    // [27 9 - 27 40]
    IL_0035: ldarg.0      // gramms
    IL_0036: ldarg.1      // curGramm
    IL_0037: callvirt     instance !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Item(!0/*string*/)
    IL_003c: ldarg.2      // nextGramm
    IL_003d: ldc.i4.1
    IL_003e: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::set_Item(!0/*string*/, !1/*int32*/)
    IL_0043: ret

    // [29 9 - 29 38]
    IL_0044: ldarg.0      // gramms
    IL_0045: ldarg.1      // curGramm
    IL_0046: callvirt     instance !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Item(!0/*string*/)
    IL_004b: stloc.1      // V_1
    IL_004c: ldarg.2      // nextGramm
    IL_004d: stloc.2      // V_2
    IL_004e: ldloc.1      // V_1
    IL_004f: ldloc.2      // V_2
    IL_0050: ldloc.1      // V_1
    IL_0051: ldloc.2      // V_2
    IL_0052: callvirt     instance !1/*int32*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::get_Item(!0/*string*/)
    IL_0057: ldc.i4.1
    IL_0058: add
    IL_0059: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::set_Item(!0/*string*/, !1/*int32*/)
    IL_005e: ret

  } // end of method FrequencyAnalysisTask::AddGrammToResult

  .method private hidebysig static void
    ProcessGramm2(
      class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>> gramms,
      class [mscorlib]System.Collections.Generic.List`1<string> sentence,
      int32 wordIndex
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] string nextGramm,
      [1] string curGramm
    )

    // [37 7 - 37 43]
    IL_0000: ldarg.2      // wordIndex
    IL_0001: ldarg.1      // sentence
    IL_0002: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0007: ldc.i4.1
    IL_0008: sub
    IL_0009: blt.s        IL_000c

    // [38 9 - 38 16]
    IL_000b: ret

    // [39 7 - 39 49]
    IL_000c: ldarg.1      // sentence
    IL_000d: ldarg.2      // wordIndex
    IL_000e: ldc.i4.1
    IL_000f: add
    IL_0010: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0015: stloc.0      // nextGramm

    // [40 7 - 40 44]
    IL_0016: ldarg.1      // sentence
    IL_0017: ldarg.2      // wordIndex
    IL_0018: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_001d: stloc.1      // curGramm

    // [41 7 - 41 74]
    IL_001e: ldarg.0      // gramms
    IL_001f: ldloc.1      // curGramm
    IL_0020: ldloc.0      // nextGramm
    IL_0021: call         void TextAnalysis.FrequencyAnalysisTask::AddGrammToResult(class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>, string, string)
    IL_0026: ret

  } // end of method FrequencyAnalysisTask::ProcessGramm2

  .method private hidebysig static void
    ProcessGramm3(
      class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>> gramms,
      class [mscorlib]System.Collections.Generic.List`1<string> sentence,
      int32 wordIndex
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] string nextGramm,
      [1] string curGramm
    )

    // [49 7 - 49 43]
    IL_0000: ldarg.2      // wordIndex
    IL_0001: ldarg.1      // sentence
    IL_0002: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0007: ldc.i4.2
    IL_0008: sub
    IL_0009: blt.s        IL_000c

    // [50 9 - 50 16]
    IL_000b: ret

    // [51 7 - 51 49]
    IL_000c: ldarg.1      // sentence
    IL_000d: ldarg.2      // wordIndex
    IL_000e: ldc.i4.2
    IL_000f: add
    IL_0010: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0015: stloc.0      // nextGramm

    // [52 7 - 52 76]
    IL_0016: ldarg.1      // sentence
    IL_0017: ldarg.2      // wordIndex
    IL_0018: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_001d: ldstr        " "
    IL_0022: ldarg.1      // sentence
    IL_0023: ldarg.2      // wordIndex
    IL_0024: ldc.i4.1
    IL_0025: add
    IL_0026: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_002b: call         string [mscorlib]System.String::Concat(string, string, string)
    IL_0030: stloc.1      // curGramm

    // [53 7 - 53 74]
    IL_0031: ldarg.0      // gramms
    IL_0032: ldloc.1      // curGramm
    IL_0033: ldloc.0      // nextGramm
    IL_0034: call         void TextAnalysis.FrequencyAnalysisTask::AddGrammToResult(class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>, string, string)
    IL_0039: ret

  } // end of method FrequencyAnalysisTask::ProcessGramm3

  .method private hidebysig static string
    GetMostFreqGramm(
      class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32> gramms
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class TextAnalysis.FrequencyAnalysisTask/'<>c__DisplayClass3_0' V_0,
      [1] valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32> V_1
    )

    IL_0000: newobj       instance void TextAnalysis.FrequencyAnalysisTask/'<>c__DisplayClass3_0'::.ctor()
    IL_0005: stloc.0      // V_0

    // [58 7 - 58 180]
    IL_0006: ldloc.0      // V_0
    IL_0007: ldarg.0      // gramms
    IL_0008: ldsfld       class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, int32> TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9__3_0'
    IL_000d: dup

    IL_000e: brtrue.s     IL_0027
    IL_0010: pop
    IL_0011: ldsfld       class TextAnalysis.FrequencyAnalysisTask/'<>c' TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9'
    IL_0016: ldftn        instance int32 TextAnalysis.FrequencyAnalysisTask/'<>c'::'<GetMostFreqGramm>b__3_0'(valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>)
    IL_001c: newobj       instance void class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, int32>::.ctor(object, native int)
    IL_0021: dup
    IL_0022: stsfld       class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, int32> TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9__3_0'
    IL_0027: call         class [System.Core]System.Linq.IOrderedEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/> [System.Core]System.Linq.Enumerable::OrderByDescending<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/>, class [mscorlib]System.Func`2<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/, !!1/*int32*/>)
    IL_002c: call         !!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/ [System.Core]System.Linq.Enumerable::First<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/>)
    IL_0031: stloc.1      // V_1
    IL_0032: ldloca.s     V_1
    IL_0034: call         instance !1/*int32*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Value()
    IL_0039: stfld        int32 TextAnalysis.FrequencyAnalysisTask/'<>c__DisplayClass3_0'::mostFreq

    // [59 7 - 59 261]
    IL_003e: ldarg.0      // gramms
    IL_003f: ldloc.0      // V_0
    IL_0040: ldftn        instance bool TextAnalysis.FrequencyAnalysisTask/'<>c__DisplayClass3_0'::'<GetMostFreqGramm>b__1'(valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>)
    IL_0046: newobj       instance void class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, bool>::.ctor(object, native int)
    IL_004b: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/> [System.Core]System.Linq.Enumerable::Where<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/>, class [mscorlib]System.Func`2<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/, bool>)
    IL_0050: ldsfld       class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, string> TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9__3_2'
    IL_0055: dup

    IL_0056: brtrue.s     IL_006f
    IL_0058: pop
    IL_0059: ldsfld       class TextAnalysis.FrequencyAnalysisTask/'<>c' TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9'
    IL_005e: ldftn        instance string TextAnalysis.FrequencyAnalysisTask/'<>c'::'<GetMostFreqGramm>b__3_2'(valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>)
    IL_0064: newobj       instance void class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, string>::.ctor(object, native int)
    IL_0069: dup
    IL_006a: stsfld       class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, string> TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9__3_2'
    IL_006f: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*string*/> [System.Core]System.Linq.Enumerable::Select<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>, string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/>, class [mscorlib]System.Func`2<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>*/, !!1/*string*/>)
    IL_0074: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*string*/> [System.Core]System.Linq.Enumerable::ToList<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_0079: dup
    IL_007a: ldsfld       class [mscorlib]System.Comparison`1<string> TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9__3_3'
    IL_007f: dup
    IL_0080: brtrue.s     IL_0099
    IL_0082: pop

    // [60 7 - 60 78]
    IL_0083: ldsfld       class TextAnalysis.FrequencyAnalysisTask/'<>c' TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9'
    IL_0088: ldftn        instance int32 TextAnalysis.FrequencyAnalysisTask/'<>c'::'<GetMostFreqGramm>b__3_3'(string, string)
    IL_008e: newobj       instance void class [mscorlib]System.Comparison`1<string>::.ctor(object, native int)
    IL_0093: dup

    IL_0094: stsfld       class [mscorlib]System.Comparison`1<string> TextAnalysis.FrequencyAnalysisTask/'<>c'::'<>9__3_3'
    IL_0099: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Sort(class [mscorlib]System.Comparison`1<!0/*string*/>)

    // [61 7 - 61 22]
    IL_009e: ldc.i4.0
    IL_009f: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_00a4: ret

  } // end of method FrequencyAnalysisTask::GetMostFreqGramm

  .method public hidebysig static class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>
    GetMostFrequentNextWords(
      class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> text
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>> gramms,
      [1] class [mscorlib]System.Collections.Generic.Dictionary`2<string, string> frequentNextWords,
      [2] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>> V_2,
      [3] class [mscorlib]System.Collections.Generic.List`1<string> sentence,
      [4] int32 wordIndex,
      [5] valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>> V_5,
      [6] valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>> keyValuePair
    )

    // [67 7 - 67 109]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::.ctor()
    IL_0005: stloc.0      // gramms

    // [68 41 - 68 45]
    IL_0006: ldarg.0      // text
    IL_0007: callvirt     instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0/*class [mscorlib]System.Collections.Generic.List`1<string>*/> class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::GetEnumerator()
    IL_000c: stloc.2      // V_2
    .try
    {

      IL_000d: br.s         IL_003e
      // start of loop, entry point: IL_003e

        // [68 16 - 68 37]
        IL_000f: ldloca.s     V_2
        IL_0011: call         instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Current()
        IL_0016: stloc.3      // sentence

        // [70 14 - 70 31]
        IL_0017: ldc.i4.0
        IL_0018: stloc.s      wordIndex

        IL_001a: br.s         IL_0034
        // start of loop, entry point: IL_0034

          // [72 11 - 72 75]
          IL_001c: ldloc.0      // gramms
          IL_001d: ldloc.3      // sentence
          IL_001e: ldloc.s      wordIndex
          IL_0020: call         void TextAnalysis.FrequencyAnalysisTask::ProcessGramm2(class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>, class [mscorlib]System.Collections.Generic.List`1<string>, int32)

          // [73 11 - 73 75]
          IL_0025: ldloc.0      // gramms
          IL_0026: ldloc.3      // sentence
          IL_0027: ldloc.s      wordIndex
          IL_0029: call         void TextAnalysis.FrequencyAnalysisTask::ProcessGramm3(class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>, class [mscorlib]System.Collections.Generic.List`1<string>, int32)

          // [70 61 - 70 72]
          IL_002e: ldloc.s      wordIndex
          IL_0030: ldc.i4.1
          IL_0031: add
          IL_0032: stloc.s      wordIndex

          // [70 33 - 70 59]
          IL_0034: ldloc.s      wordIndex
          IL_0036: ldloc.3      // sentence
          IL_0037: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
          IL_003c: blt.s        IL_001c
        // end of loop

        IL_003e: ldloca.s     V_2
        IL_0040: call         instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>::MoveNext()
        IL_0045: brtrue.s     IL_000f
      // end of loop
      IL_0047: leave.s      IL_0057
    } // end of .try
    finally
    {
      IL_0049: ldloca.s     V_2
      IL_004b: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>
      IL_0051: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0056: endfinally
    } // end of finally

    // [76 7 - 76 86]
    IL_0057: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::.ctor()
    IL_005c: stloc.1      // frequentNextWords

    // [77 78 - 77 84]
    IL_005d: ldloc.0      // gramms
    IL_005e: callvirt     instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0/*string*/, !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/> class [mscorlib]System.Collections.Generic.Dictionary`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::GetEnumerator()
    IL_0063: stloc.s      V_5
    .try
    {

      IL_0065: br.s         IL_0098
      // start of loop, entry point: IL_0098

        // [77 16 - 77 74]
        IL_0067: ldloca.s     V_5
        IL_0069: call         instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0/*string*/, !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Current()
        IL_006e: stloc.s      keyValuePair

        // [79 9 - 79 42]
        IL_0070: ldloca.s     keyValuePair
        IL_0072: call         instance !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Value()
        IL_0077: callvirt     instance int32 class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>::get_Count()
        IL_007c: ldc.i4.0
        IL_007d: ble.s        IL_0098

        // [80 11 - 80 110]
        IL_007f: ldloc.1      // frequentNextWords
        IL_0080: ldloca.s     keyValuePair
        IL_0082: call         instance !0/*string*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Key()
        IL_0087: ldloca.s     keyValuePair
        IL_0089: call         instance !1/*class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::get_Value()
        IL_008e: call         string TextAnalysis.FrequencyAnalysisTask::GetMostFreqGramm(class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>)
        IL_0093: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::Add(!0/*string*/, !1/*string*/)

        IL_0098: ldloca.s     V_5
        IL_009a: call         instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>::MoveNext()
        IL_009f: brtrue.s     IL_0067
      // end of loop
      IL_00a1: leave.s      IL_00b1
    } // end of .try
    finally
    {
      IL_00a3: ldloca.s     V_5
      IL_00a5: constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<string, class [mscorlib]System.Collections.Generic.Dictionary`2<string, int32>>
      IL_00ab: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_00b0: endfinally
    } // end of finally

    // [82 7 - 82 32]
    IL_00b1: ldloc.1      // frequentNextWords
    IL_00b2: ret

  } // end of method FrequencyAnalysisTask::GetMostFrequentNextWords
} // end of class TextAnalysis.FrequencyAnalysisTask

// Type: TextAnalysis.SentencesParserTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: F7249998-8718-4DC3-813B-A3A031F9D982
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author4\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.SentencesParserTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<string>
    GetWordsFromSentence(
      string sentence
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<string> wordsFromSentence,
      [1] string str,
      [2] class [mscorlib]System.Collections.Generic.IEnumerator`1<char> V_2,
      [3] char c
    )

    // [16 7 - 16 58]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005: stloc.0      // wordsFromSentence

    // [17 7 - 17 22]
    IL_0006: ldstr        ""
    IL_000b: stloc.1      // str

    // [18 26 - 18 84]
    IL_000c: ldarg.0      // sentence
    IL_000d: ldstr        " "
    IL_0012: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Core]System.Linq.Enumerable::Concat<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0017: callvirt     instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0/*char*/> class [mscorlib]System.Collections.Generic.IEnumerable`1<char>::GetEnumerator()
    IL_001c: stloc.2      // V_2
    .try
    {

      IL_001d: br.s         IL_005e
      // start of loop, entry point: IL_005e

        // [18 16 - 18 22]
        IL_001f: ldloc.2      // V_2
        IL_0020: callvirt     instance !0/*char*/ class [mscorlib]System.Collections.Generic.IEnumerator`1<char>::get_Current()
        IL_0025: stloc.3      // c

        // [20 9 - 20 44]
        IL_0026: ldloc.3      // c
        IL_0027: call         bool [mscorlib]System.Char::IsLetter(char)
        IL_002c: brtrue.s     IL_0050

        IL_002e: ldloc.3      // c
        IL_002f: ldc.i4.s     39 // 0x27
        IL_0031: beq.s        IL_0050

        // [22 11 - 22 30]
        IL_0033: ldloc.1      // str
        IL_0034: callvirt     instance int32 [mscorlib]System.String::get_Length()
        IL_0039: ldc.i4.0
        IL_003a: ble.s        IL_0048

        // [23 13 - 23 49]
        IL_003c: ldloc.0      // wordsFromSentence
        IL_003d: ldloc.1      // str
        IL_003e: callvirt     instance string [mscorlib]System.String::ToLower()
        IL_0043: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

        // [24 11 - 24 19]
        IL_0048: ldstr        ""
        IL_004d: stloc.1      // str

        IL_004e: br.s         IL_005e

        // [27 11 - 27 30]
        IL_0050: ldloc.1      // str
        IL_0051: ldloca.s     c
        IL_0053: call         instance string [mscorlib]System.Char::ToString()
        IL_0058: call         string [mscorlib]System.String::Concat(string, string)
        IL_005d: stloc.1      // str

        IL_005e: ldloc.2      // V_2
        IL_005f: callvirt     instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
        IL_0064: brtrue.s     IL_001f
      // end of loop
      IL_0066: leave.s      IL_0072
    } // end of .try
    finally
    {
      IL_0068: ldloc.2      // V_2
      IL_0069: brfalse.s    IL_0071
      IL_006b: ldloc.2      // V_2
      IL_006c: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0071: endfinally
    } // end of finally

    // [29 7 - 29 32]
    IL_0072: ldloc.0      // wordsFromSentence
    IL_0073: ret

  } // end of method SentencesParserTask::GetWordsFromSentence

  .method public hidebysig static class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>
    ParseSentences(
      string text
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> sentences,
      [1] string[] V_1,
      [2] int32 V_2,
      [3] string sentence,
      [4] class [mscorlib]System.Collections.Generic.List`1<string> wordsFromSentence
    )

    // [34 7 - 34 62]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::.ctor()
    IL_0005: stloc.0      // sentences
    IL_0006: ldarg.0      // text
    IL_0007: ldc.i4.7
    IL_0008: newarr       [mscorlib]System.Char
    IL_000d: dup
    IL_000e: ldtoken      field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=14' '<PrivateImplementationDetails>'::'6636D3C470C7DAE8C795FC9021F84921D6C5EB58440E0CA6462B65D402D05A74'
    IL_0013: call         void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array, valuetype [mscorlib]System.RuntimeFieldHandle)

    // [46 35 - 46 53]
    IL_0018: callvirt     instance string[] [mscorlib]System.String::Split(char[])

    IL_001d: stloc.1      // V_1
    IL_001e: ldc.i4.0
    IL_001f: stloc.2      // V_2
    IL_0020: br.s         IL_004c
    // start of loop, entry point: IL_004c

      // [46 16 - 46 31]
      IL_0022: ldloc.1      // V_1
      IL_0023: ldloc.2      // V_2
      IL_0024: ldelem.ref
      IL_0025: stloc.3      // sentence

      // [48 9 - 48 34]
      IL_0026: ldloc.3      // sentence
      IL_0027: callvirt     instance int32 [mscorlib]System.String::get_Length()
      IL_002c: brfalse.s    IL_0048

      // [50 11 - 50 94]
      IL_002e: ldloc.3      // sentence
      IL_002f: call         class [mscorlib]System.Collections.Generic.List`1<string> TextAnalysis.SentencesParserTask::GetWordsFromSentence(string)
      IL_0034: stloc.s      wordsFromSentence

      // [51 11 - 51 43]
      IL_0036: ldloc.s      wordsFromSentence
      IL_0038: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_003d: ldc.i4.0
      IL_003e: ble.s        IL_0048

      // [52 13 - 52 45]
      IL_0040: ldloc.0      // sentences
      IL_0041: ldloc.s      wordsFromSentence
      IL_0043: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::Add(!0/*class [mscorlib]System.Collections.Generic.List`1<string>*/)

      IL_0048: ldloc.2      // V_2
      IL_0049: ldc.i4.1
      IL_004a: add
      IL_004b: stloc.2      // V_2
      IL_004c: ldloc.2      // V_2
      IL_004d: ldloc.1      // V_1
      IL_004e: ldlen
      IL_004f: conv.i4
      IL_0050: blt.s        IL_0022
    // end of loop

    // [55 7 - 55 24]
    IL_0052: ldloc.0      // sentences
    IL_0053: ret

  } // end of method SentencesParserTask::ParseSentences
} // end of class TextAnalysis.SentencesParserTask

// Type: TextAnalysis.TextGeneratorTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: F7249998-8718-4DC3-813B-A3A031F9D982
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author4\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.TextGeneratorTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<string>
    GetWordsOfSentence(
      string sentence
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] string str,
      [1] class [mscorlib]System.Collections.Generic.List`1<string> wordsOfSentence,
      [2] class [mscorlib]System.Collections.Generic.IEnumerator`1<char> V_2,
      [3] char c
    )

    // [16 7 - 16 22]
    IL_0000: ldstr        ""
    IL_0005: stloc.0      // str

    // [17 7 - 17 56]
    IL_0006: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_000b: stloc.1      // wordsOfSentence

    // [18 26 - 18 84]
    IL_000c: ldarg.0      // sentence
    IL_000d: ldstr        " "
    IL_0012: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*char*/> [System.Core]System.Linq.Enumerable::Concat<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*char*/>, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*char*/>)
    IL_0017: callvirt     instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0/*char*/> class [mscorlib]System.Collections.Generic.IEnumerable`1<char>::GetEnumerator()
    IL_001c: stloc.2      // V_2
    .try
    {

      IL_001d: br.s         IL_005e
      // start of loop, entry point: IL_005e

        // [18 16 - 18 22]
        IL_001f: ldloc.2      // V_2
        IL_0020: callvirt     instance !0/*char*/ class [mscorlib]System.Collections.Generic.IEnumerator`1<char>::get_Current()
        IL_0025: stloc.3      // c

        // [20 9 - 20 43]
        IL_0026: ldloc.3      // c
        IL_0027: call         bool [mscorlib]System.Char::IsLetter(char)
        IL_002c: brtrue.s     IL_0033

        IL_002e: ldloc.3      // c
        IL_002f: ldc.i4.s     39 // 0x27
        IL_0031: bne.un.s     IL_0043

        // [22 11 - 22 30]
        IL_0033: ldloc.0      // str
        IL_0034: ldloca.s     c
        IL_0036: call         instance string [mscorlib]System.Char::ToString()
        IL_003b: call         string [mscorlib]System.String::Concat(string, string)
        IL_0040: stloc.0      // str

        IL_0041: br.s         IL_005e

        // [26 11 - 26 30]
        IL_0043: ldloc.0      // str
        IL_0044: callvirt     instance int32 [mscorlib]System.String::get_Length()
        IL_0049: ldc.i4.0
        IL_004a: ble.s        IL_0058

        // [27 13 - 27 47]
        IL_004c: ldloc.1      // wordsOfSentence
        IL_004d: ldloc.0      // str
        IL_004e: callvirt     instance string [mscorlib]System.String::ToLower()
        IL_0053: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

        // [28 11 - 28 19]
        IL_0058: ldstr        ""
        IL_005d: stloc.0      // str

        IL_005e: ldloc.2      // V_2
        IL_005f: callvirt     instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
        IL_0064: brtrue.s     IL_001f
      // end of loop
      IL_0066: leave.s      IL_0072
    } // end of .try
    finally
    {
      IL_0068: ldloc.2      // V_2
      IL_0069: brfalse.s    IL_0071
      IL_006b: ldloc.2      // V_2
      IL_006c: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0071: endfinally
    } // end of finally

    // [31 7 - 31 30]
    IL_0072: ldloc.1      // wordsOfSentence
    IL_0073: ret

  } // end of method TextGeneratorTask::GetWordsOfSentence

  .method private hidebysig static string
    GetLastTwoWords(
      class [mscorlib]System.Collections.Generic.List`1<string> sentence
    ) cil managed
  {
    .maxstack 8

    // [34 69 - 34 134]
    IL_0000: ldarg.0      // sentence
    IL_0001: ldarg.0      // sentence
    IL_0002: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0007: ldc.i4.2
    IL_0008: sub
    IL_0009: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_000e: ldstr        " "
    IL_0013: call         string [mscorlib]System.String::Concat(string, string)
    IL_0018: ldarg.0      // sentence
    IL_0019: ldarg.0      // sentence
    IL_001a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_001f: ldc.i4.1
    IL_0020: sub
    IL_0021: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0026: call         string [mscorlib]System.String::Concat(string, string)
    IL_002b: ret

  } // end of method TextGeneratorTask::GetLastTwoWords

  .method public hidebysig static string
    ContinuePhrase(
      class [mscorlib]System.Collections.Generic.Dictionary`2<string, string> nextWords,
      string phraseBeginning,
      int32 wordsCount
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<string> wordsOfSentence,
      [1] int32 index,
      [2] string lastTwoWords,
      [3] string key
    )

    // [41 7 - 41 91]
    IL_0000: ldarg.1      // phraseBeginning
    IL_0001: call         class [mscorlib]System.Collections.Generic.List`1<string> TextAnalysis.TextGeneratorTask::GetWordsOfSentence(string)
    IL_0006: stloc.0      // wordsOfSentence

    // [42 12 - 42 25]
    IL_0007: ldc.i4.0
    IL_0008: stloc.1      // index

    IL_0009: br           IL_00a8
    // start of loop, entry point: IL_00a8

      // [44 9 - 44 117]
      IL_000e: ldloc.0      // wordsOfSentence
      IL_000f: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0014: ldc.i4.2
      IL_0015: blt.s        IL_004f

      IL_0017: ldarg.0      // nextWords
      IL_0018: ldloc.0      // wordsOfSentence
      IL_0019: call         string TextAnalysis.TextGeneratorTask::GetLastTwoWords(class [mscorlib]System.Collections.Generic.List`1<string>)
      IL_001e: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
      IL_0023: brfalse.s    IL_004f

      // [46 11 - 46 83]
      IL_0025: ldloc.0      // wordsOfSentence
      IL_0026: call         string TextAnalysis.TextGeneratorTask::GetLastTwoWords(class [mscorlib]System.Collections.Generic.List`1<string>)
      IL_002b: stloc.2      // lastTwoWords

      // [47 11 - 47 55]
      IL_002c: ldloc.0      // wordsOfSentence
      IL_002d: ldarg.0      // nextWords
      IL_002e: ldloc.2      // lastTwoWords
      IL_002f: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_0034: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

      // [48 11 - 48 76]
      IL_0039: ldarg.1      // phraseBeginning
      IL_003a: ldstr        " "
      IL_003f: ldarg.0      // nextWords
      IL_0040: ldloc.2      // lastTwoWords
      IL_0041: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_0046: call         string [mscorlib]System.String::Concat(string, string, string)
      IL_004b: starg.s      phraseBeginning

      IL_004d: br.s         IL_00a4

      // [50 14 - 50 114]
      IL_004f: ldloc.0      // wordsOfSentence
      IL_0050: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0055: ldc.i4.1
      IL_0056: blt.s        IL_00a0

      IL_0058: ldarg.0      // nextWords
      IL_0059: ldloc.0      // wordsOfSentence
      IL_005a: ldloc.0      // wordsOfSentence
      IL_005b: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0060: ldc.i4.1
      IL_0061: sub
      IL_0062: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_0067: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
      IL_006c: brfalse.s    IL_00a0

      // [52 11 - 52 66]
      IL_006e: ldloc.0      // wordsOfSentence
      IL_006f: ldloc.0      // wordsOfSentence
      IL_0070: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0075: ldc.i4.1
      IL_0076: sub
      IL_0077: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_007c: stloc.3      // key

      // [53 11 - 53 46]
      IL_007d: ldloc.0      // wordsOfSentence
      IL_007e: ldarg.0      // nextWords
      IL_007f: ldloc.3      // key
      IL_0080: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_0085: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

      // [54 11 - 54 67]
      IL_008a: ldarg.1      // phraseBeginning
      IL_008b: ldstr        " "
      IL_0090: ldarg.0      // nextWords
      IL_0091: ldloc.3      // key
      IL_0092: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_0097: call         string [mscorlib]System.String::Concat(string, string, string)
      IL_009c: starg.s      phraseBeginning

      IL_009e: br.s         IL_00a4
      IL_00a0: ldc.i4.0
      IL_00a1: pop

      // [57 11 - 57 17]
      IL_00a2: br.s         IL_00af

      // [42 47 - 42 54]
      IL_00a4: ldloc.1      // index
      IL_00a5: ldc.i4.1
      IL_00a6: add
      IL_00a7: stloc.1      // index

      // [42 27 - 42 45]
      IL_00a8: ldloc.1      // index
      IL_00a9: ldarg.2      // wordsCount
      IL_00aa: blt          IL_000e
    // end of loop

    // [59 7 - 59 30]
    IL_00af: ldarg.1      // phraseBeginning
    IL_00b0: ret

  } // end of method TextGeneratorTask::ContinuePhrase
} // end of class TextAnalysis.TextGeneratorTask
