// Type: TextAnalysis.FrequencyAnalysisTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 45EF58A1-14C8-487C-A89A-29731F2CA6CA
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author3\bin\Release\TextAnalysis.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  TextAnalysis.FrequencyAnalysisTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>
    GetMostFrequentNextWords(
      class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> text
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] class [System]System.Collections.Generic.SortedDictionary`2<string, int32> sortedDictionary,
      [1] class [mscorlib]System.Collections.Generic.Dictionary`2<string, string> frequentNextWords,
      [2] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>> V_2,
      [3] class [mscorlib]System.Collections.Generic.List`1<string> stringList,
      [4] int32 index,
      [5] string key,
      [6] string V_6,
      [7] int32 V_7,
      [8] int32 index_V_8,
      [9] string key_V_9,
      [10] valuetype [System]System.Collections.Generic.SortedDictionary`2/Enumerator<string, int32> V_10,
      [11] valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32> keyValuePair,
      [12] string[] strArray,
      [13] string key1,
      [14] string strA,
      [15] string key2
    )

    // [16 7 - 16 91]
    IL_0000: newobj       instance void class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::.ctor()
    IL_0005: stloc.0      // sortedDictionary

    // [17 43 - 17 47]
    IL_0006: ldarg.0      // text
    IL_0007: callvirt     instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0/*class [mscorlib]System.Collections.Generic.List`1<string>*/> class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::GetEnumerator()
    IL_000c: stloc.2      // V_2
    .try
    {

      IL_000d: br           IL_0105
      // start of loop, entry point: IL_0105

        // [17 16 - 17 39]
        IL_0012: ldloca.s     V_2
        IL_0014: call         instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Current()
        IL_0019: stloc.3      // stringList

        // [19 14 - 19 27]
        IL_001a: ldc.i4.1
        IL_001b: stloc.s      index

        IL_001d: br.s         IL_0072
        // start of loop, entry point: IL_0072

          // [21 11 - 21 71]
          IL_001f: ldloc.3      // stringList
          IL_0020: ldloc.s      index
          IL_0022: ldc.i4.1
          IL_0023: sub
          IL_0024: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_0029: ldstr        " "
          IL_002e: ldloc.3      // stringList
          IL_002f: ldloc.s      index
          IL_0031: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_0036: call         string [mscorlib]System.String::Concat(string, string, string)
          IL_003b: stloc.s      key

          // [22 11 - 22 49]
          IL_003d: ldloc.0      // sortedDictionary
          IL_003e: ldloc.s      key
          IL_0040: callvirt     instance bool class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::ContainsKey(!0/*string*/)
          IL_0045: brfalse.s    IL_0063

          // [23 13 - 23 36]
          IL_0047: ldloc.0      // sortedDictionary
          IL_0048: ldloc.s      key
          IL_004a: stloc.s      V_6
          IL_004c: dup

          IL_004d: ldloc.s      V_6
          IL_004f: callvirt     instance !1/*int32*/ class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::get_Item(!0/*string*/)
          IL_0054: stloc.s      V_7
          IL_0056: ldloc.s      V_6
          IL_0058: ldloc.s      V_7
          IL_005a: ldc.i4.1
          IL_005b: add
          IL_005c: callvirt     instance void class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::set_Item(!0/*string*/, !1/*int32*/)
          IL_0061: br.s         IL_006c

          // [25 13 - 25 41]
          IL_0063: ldloc.0      // sortedDictionary
          IL_0064: ldloc.s      key
          IL_0066: ldc.i4.1
          IL_0067: callvirt     instance void class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::Add(!0/*string*/, !1/*int32*/)

          // [19 55 - 19 62]
          IL_006c: ldloc.s      index
          IL_006e: ldc.i4.1
          IL_006f: add
          IL_0070: stloc.s      index

          // [19 29 - 19 53]
          IL_0072: ldloc.s      index
          IL_0074: ldloc.3      // stringList
          IL_0075: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
          IL_007a: blt.s        IL_001f
        // end of loop

        // [27 14 - 27 27]
        IL_007c: ldc.i4.2
        IL_007d: stloc.s      index_V_8

        IL_007f: br.s         IL_00f8
        // start of loop, entry point: IL_00f8
          IL_0081: ldc.i4.5
          IL_0082: newarr       [mscorlib]System.String
          IL_0087: dup

          // [29 11 - 29 101]
          IL_0088: ldc.i4.0
          IL_0089: ldloc.3      // stringList
          IL_008a: ldloc.s      index_V_8
          IL_008c: ldc.i4.2
          IL_008d: sub
          IL_008e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_0093: stelem.ref
          IL_0094: dup
          IL_0095: ldc.i4.1
          IL_0096: ldstr        " "
          IL_009b: stelem.ref
          IL_009c: dup
          IL_009d: ldc.i4.2
          IL_009e: ldloc.3      // stringList
          IL_009f: ldloc.s      index_V_8
          IL_00a1: ldc.i4.1
          IL_00a2: sub
          IL_00a3: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_00a8: stelem.ref
          IL_00a9: dup
          IL_00aa: ldc.i4.3
          IL_00ab: ldstr        " "
          IL_00b0: stelem.ref
          IL_00b1: dup
          IL_00b2: ldc.i4.4
          IL_00b3: ldloc.3      // stringList
          IL_00b4: ldloc.s      index_V_8
          IL_00b6: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
          IL_00bb: stelem.ref
          IL_00bc: call         string [mscorlib]System.String::Concat(string[])
          IL_00c1: stloc.s      key_V_9

          // [30 11 - 30 49]
          IL_00c3: ldloc.0      // sortedDictionary
          IL_00c4: ldloc.s      key_V_9
          IL_00c6: callvirt     instance bool class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::ContainsKey(!0/*string*/)
          IL_00cb: brfalse.s    IL_00e9

          // [31 13 - 31 36]
          IL_00cd: ldloc.0      // sortedDictionary
          IL_00ce: ldloc.s      key_V_9
          IL_00d0: stloc.s      V_6
          IL_00d2: dup

          IL_00d3: ldloc.s      V_6
          IL_00d5: callvirt     instance !1/*int32*/ class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::get_Item(!0/*string*/)
          IL_00da: stloc.s      V_7
          IL_00dc: ldloc.s      V_6
          IL_00de: ldloc.s      V_7
          IL_00e0: ldc.i4.1
          IL_00e1: add
          IL_00e2: callvirt     instance void class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::set_Item(!0/*string*/, !1/*int32*/)
          IL_00e7: br.s         IL_00f2

          // [33 13 - 33 41]
          IL_00e9: ldloc.0      // sortedDictionary
          IL_00ea: ldloc.s      key_V_9
          IL_00ec: ldc.i4.1
          IL_00ed: callvirt     instance void class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::Add(!0/*string*/, !1/*int32*/)

          // [27 55 - 27 62]
          IL_00f2: ldloc.s      index_V_8
          IL_00f4: ldc.i4.1
          IL_00f5: add
          IL_00f6: stloc.s      index_V_8

          // [27 29 - 27 53]
          IL_00f8: ldloc.s      index_V_8
          IL_00fa: ldloc.3      // stringList
          IL_00fb: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
          IL_0100: blt          IL_0081
        // end of loop

        IL_0105: ldloca.s     V_2
        IL_0107: call         instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>::MoveNext()
        IL_010c: brtrue       IL_0012
      // end of loop
      IL_0111: leave.s      IL_0121
    } // end of .try
    finally
    {
      IL_0113: ldloca.s     V_2
      IL_0115: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class [mscorlib]System.Collections.Generic.List`1<string>>
      IL_011b: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0120: endfinally
    } // end of finally

    // [36 7 - 36 86]
    IL_0121: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::.ctor()
    IL_0126: stloc.1      // frequentNextWords

    // [37 58 - 37 74]
    IL_0127: ldloc.0      // sortedDictionary
    IL_0128: callvirt     instance valuetype [System]System.Collections.Generic.SortedDictionary`2/Enumerator<!0/*string*/, !1/*int32*/> class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::GetEnumerator()
    IL_012d: stloc.s      V_10
    .try
    {

      IL_012f: br           IL_01ea
      // start of loop, entry point: IL_01ea

        // [37 16 - 37 54]
        IL_0134: ldloca.s     V_10
        IL_0136: call         instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0/*string*/, !1/*int32*/> valuetype [System]System.Collections.Generic.SortedDictionary`2/Enumerator<string, int32>::get_Current()
        IL_013b: stloc.s      keyValuePair

        // [39 9 - 39 56]
        IL_013d: ldloca.s     keyValuePair
        IL_013f: call         instance !0/*string*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Key()
        IL_0144: ldc.i4.1
        IL_0145: newarr       [mscorlib]System.Char
        IL_014a: dup
        IL_014b: ldc.i4.0
        IL_014c: ldc.i4.s     32 // 0x20
        IL_014e: stelem.i2
        IL_014f: callvirt     instance string[] [mscorlib]System.String::Split(char[])
        IL_0154: stloc.s      strArray

        // [40 9 - 40 34]
        IL_0156: ldloc.s      strArray
        IL_0158: ldc.i4.0
        IL_0159: ldelem.ref
        IL_015a: stloc.s      key1

        // [41 9 - 41 33]
        IL_015c: ldloc.s      strArray
        IL_015e: ldlen
        IL_015f: conv.i4
        IL_0160: ldc.i4.2
        IL_0161: ble.s        IL_0175

        // [42 11 - 42 42]
        IL_0163: ldloc.s      key1
        IL_0165: ldstr        " "
        IL_016a: ldloc.s      strArray
        IL_016c: ldc.i4.1
        IL_016d: ldelem.ref
        IL_016e: call         string [mscorlib]System.String::Concat(string, string, string)
        IL_0173: stloc.s      key1

        // [43 9 - 43 52]
        IL_0175: ldloc.s      strArray
        IL_0177: ldloc.s      strArray
        IL_0179: ldlen
        IL_017a: conv.i4
        IL_017b: ldc.i4.1
        IL_017c: sub
        IL_017d: ldelem.ref
        IL_017e: stloc.s      strA

        // [44 9 - 44 50]
        IL_0180: ldloc.1      // frequentNextWords
        IL_0181: ldloc.s      key1
        IL_0183: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
        IL_0188: brtrue.s     IL_0196

        // [46 11 - 46 44]
        IL_018a: ldloc.1      // frequentNextWords
        IL_018b: ldloc.s      key1
        IL_018d: ldloc.s      strA
        IL_018f: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::Add(!0/*string*/, !1/*string*/)

        IL_0194: br.s         IL_01ea

        // [50 11 - 50 61]
        IL_0196: ldloc.s      key1
        IL_0198: ldstr        " "
        IL_019d: ldloc.1      // frequentNextWords
        IL_019e: ldloc.s      key1
        IL_01a0: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
        IL_01a5: call         string [mscorlib]System.String::Concat(string, string, string)
        IL_01aa: stloc.s      key2

        // [51 11 - 51 167]
        IL_01ac: ldloc.0      // sortedDictionary
        IL_01ad: ldloc.s      key2
        IL_01af: callvirt     instance !1/*int32*/ class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::get_Item(!0/*string*/)
        IL_01b4: ldloca.s     keyValuePair
        IL_01b6: call         instance !1/*int32*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Value()
        IL_01bb: blt.s        IL_01e0

        IL_01bd: ldloc.0      // sortedDictionary
        IL_01be: ldloc.s      key2
        IL_01c0: callvirt     instance !1/*int32*/ class [System]System.Collections.Generic.SortedDictionary`2<string, int32>::get_Item(!0/*string*/)
        IL_01c5: ldloca.s     keyValuePair
        IL_01c7: call         instance !1/*int32*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<string, int32>::get_Value()
        IL_01cc: bne.un.s     IL_01ea
        IL_01ce: ldloc.s      strA
        IL_01d0: ldloc.1      // frequentNextWords
        IL_01d1: ldloc.s      key1
        IL_01d3: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
        IL_01d8: call         int32 [mscorlib]System.String::CompareOrdinal(string, string)
        IL_01dd: ldc.i4.0
        IL_01de: bge.s        IL_01ea

        // [52 13 - 52 43]
        IL_01e0: ldloc.1      // frequentNextWords
        IL_01e1: ldloc.s      key1
        IL_01e3: ldloc.s      strA
        IL_01e5: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::set_Item(!0/*string*/, !1/*string*/)

        IL_01ea: ldloca.s     V_10
        IL_01ec: call         instance bool valuetype [System]System.Collections.Generic.SortedDictionary`2/Enumerator<string, int32>::MoveNext()
        IL_01f1: brtrue       IL_0134
      // end of loop
      IL_01f6: leave.s      IL_0206
    } // end of .try
    finally
    {
      IL_01f8: ldloca.s     V_10
      IL_01fa: constrained. valuetype [System]System.Collections.Generic.SortedDictionary`2/Enumerator<string, int32>
      IL_0200: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_0205: endfinally
    } // end of finally

    // [55 7 - 55 32]
    IL_0206: ldloc.1      // frequentNextWords
    IL_0207: ret

  } // end of method FrequencyAnalysisTask::GetMostFrequentNextWords
} // end of class TextAnalysis.FrequencyAnalysisTask

// Type: TextAnalysis.SentencesParserTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 45EF58A1-14C8-487C-A89A-29731F2CA6CA
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author3\bin\Release\TextAnalysis.exe
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
    .maxstack 4
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> sentences,
      [1] string[] V_1,
      [2] int32 V_2,
      [3] string str3,
      [4] class [mscorlib]System.Collections.Generic.List`1<string> stringList,
      [5] string V_5,
      [6] int32 V_6,
      [7] char c
    )

    // [15 7 - 15 62]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::.ctor()
    IL_0005: stloc.0      // sentences
    IL_0006: ldarg.0      // text
    IL_0007: ldc.i4.7
    IL_0008: newarr       [mscorlib]System.Char
    IL_000d: dup
    IL_000e: ldtoken      field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=14' '<PrivateImplementationDetails>'::DF8B231AF6E0326475E67A148DB31C9519B1F575AAD270EF1B6A8237FD849211
    IL_0013: call         void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array, valuetype [mscorlib]System.RuntimeFieldHandle)

    // [27 31 - 27 50]
    IL_0018: callvirt     instance string[] [mscorlib]System.String::Split(char[])

    IL_001d: stloc.1      // V_1
    IL_001e: ldc.i4.0
    IL_001f: stloc.2      // V_2
    IL_0020: br           IL_00cd
    // start of loop, entry point: IL_00cd
      IL_0025: ldloc.1      // V_1
      IL_0026: ldloc.2      // V_2
      IL_0027: ldelem.ref
      IL_0028: ldstr        ""
      IL_002d: stloc.3      // str3
      IL_002e: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
      IL_0033: stloc.s      stringList
      IL_0035: stloc.s      V_5
      IL_0037: ldc.i4.0
      IL_0038: stloc.s      V_6
      IL_003a: br.s         IL_008c
      // start of loop, entry point: IL_008c

        // [31 18 - 31 24]
        IL_003c: ldloc.s      V_5
        IL_003e: ldloc.s      V_6
        IL_0040: callvirt     instance char [mscorlib]System.String::get_Chars(int32)
        IL_0045: stloc.s      c

        // [33 11 - 33 45]
        IL_0047: ldloc.s      c
        IL_0049: call         bool [mscorlib]System.Char::IsLetter(char)
        IL_004e: brtrue.s     IL_0056

        IL_0050: ldloc.s      c
        IL_0052: ldc.i4.s     39 // 0x27
        IL_0054: bne.un.s     IL_0066

        // [34 13 - 34 33]
        IL_0056: ldloc.3      // str3
        IL_0057: ldloca.s     c
        IL_0059: call         instance string [mscorlib]System.Char::ToString()
        IL_005e: call         string [mscorlib]System.String::Concat(string, string)
        IL_0063: stloc.3      // str3

        IL_0064: br.s         IL_0086

        // [35 16 - 35 31]
        IL_0066: ldloc.3      // str3
        IL_0067: ldstr        ""
        IL_006c: call         bool [mscorlib]System.String::op_Inequality(string, string)
        IL_0071: brfalse.s    IL_0086

        // [37 13 - 37 43]
        IL_0073: ldloc.s      stringList
        IL_0075: ldloc.3      // str3
        IL_0076: callvirt     instance string [mscorlib]System.String::ToLower()
        IL_007b: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

        // [38 13 - 38 22]
        IL_0080: ldstr        ""
        IL_0085: stloc.3      // str3

        IL_0086: ldloc.s      V_6
        IL_0088: ldc.i4.1
        IL_0089: add
        IL_008a: stloc.s      V_6
        IL_008c: ldloc.s      V_6
        IL_008e: ldloc.s      V_5
        IL_0090: callvirt     instance int32 [mscorlib]System.String::get_Length()
        IL_0095: blt.s        IL_003c
      // end of loop

      // [41 9 - 41 24]
      IL_0097: ldloc.3      // str3
      IL_0098: ldstr        ""
      IL_009d: call         bool [mscorlib]System.String::op_Inequality(string, string)
      IL_00a2: brfalse.s    IL_00b7

      // [42 11 - 42 41]
      IL_00a4: ldloc.s      stringList
      IL_00a6: ldloc.3      // str3
      IL_00a7: callvirt     instance string [mscorlib]System.String::ToLower()
      IL_00ac: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)
      IL_00b1: ldstr        ""
      IL_00b6: stloc.3      // V_3

      // [43 9 - 43 34]
      IL_00b7: ldloc.s      stringList
      IL_00b9: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_00be: ldc.i4.0
      IL_00bf: ble.s        IL_00c9

      // [44 11 - 44 36]
      IL_00c1: ldloc.0      // sentences
      IL_00c2: ldloc.s      stringList
      IL_00c4: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::Add(!0/*class [mscorlib]System.Collections.Generic.List`1<string>*/)

      IL_00c9: ldloc.2      // V_2
      IL_00ca: ldc.i4.1
      IL_00cb: add
      IL_00cc: stloc.2      // V_2
      IL_00cd: ldloc.2      // V_2
      IL_00ce: ldloc.1      // V_1
      IL_00cf: ldlen
      IL_00d0: conv.i4
      IL_00d1: blt          IL_0025
    // end of loop

    // [46 7 - 46 24]
    IL_00d6: ldloc.0      // sentences
    IL_00d7: ret

  } // end of method SentencesParserTask::ParseSentences
} // end of class TextAnalysis.SentencesParserTask

// Type: TextAnalysis.TextGeneratorTask 
// Assembly: TextAnalysis, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 45EF58A1-14C8-487C-A89A-29731F2CA6CA
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\06_ulearn_text_analysis\author3\bin\Release\TextAnalysis.exe
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
    .maxstack 5
    .locals init (
      [0] string str,
      [1] class [mscorlib]System.Collections.Generic.List`1<string> list,
      [2] int32 index,
      [3] string 'key1[46-113], key2[139-169], key2[169-171]'
    )

    // [19 7 - 19 35]
    IL_0000: ldarg.1      // phraseBeginning
    IL_0001: stloc.0      // str

    // [20 7 - 20 94]
    IL_0002: ldarg.1      // phraseBeginning
    IL_0003: ldc.i4.1
    IL_0004: newarr       [mscorlib]System.Char
    IL_0009: dup
    IL_000a: ldc.i4.0
    IL_000b: ldc.i4.s     32 // 0x20
    IL_000d: stelem.i2
    IL_000e: callvirt     instance string[] [mscorlib]System.String::Split(char[])
    IL_0013: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*string*/> [System.Core]System.Linq.Enumerable::ToList<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_0018: stloc.1      // list

    // [21 12 - 21 25]
    IL_0019: ldc.i4.0
    IL_001a: stloc.2      // index

    IL_001b: br           IL_00bd
    // start of loop, entry point: IL_00bd

      // [23 9 - 23 43]
      IL_0020: ldloc.1      // list
      IL_0021: ldloc.1      // list
      IL_0022: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0027: ldc.i4.1
      IL_0028: sub
      IL_0029: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_002e: stloc.3      // key1

      // [24 9 - 24 28]
      IL_002f: ldloc.1      // list
      IL_0030: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0035: ldc.i4.1
      IL_0036: ble.s        IL_0052

      // [25 11 - 25 51]
      IL_0038: ldloc.1      // list
      IL_0039: ldloc.1      // list
      IL_003a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_003f: ldc.i4.2
      IL_0040: sub
      IL_0041: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_0046: ldstr        " "
      IL_004b: ldloc.3      // key1
      IL_004c: call         string [mscorlib]System.String::Concat(string, string, string)
      IL_0051: stloc.3      // key1

      // [26 9 - 26 41]
      IL_0052: ldarg.0      // nextWords
      IL_0053: ldloc.3      // key1
      IL_0054: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
      IL_0059: brfalse.s    IL_007d

      // [28 11 - 28 44]
      IL_005b: ldloc.0      // str
      IL_005c: ldstr        " "
      IL_0061: ldarg.0      // nextWords
      IL_0062: ldloc.3      // key1
      IL_0063: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_0068: call         string [mscorlib]System.String::Concat(string, string, string)
      IL_006d: stloc.0      // str

      // [29 11 - 29 36]
      IL_006e: ldloc.1      // list
      IL_006f: ldarg.0      // nextWords
      IL_0070: ldloc.3      // key1
      IL_0071: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_0076: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

      IL_007b: br.s         IL_00b9

      // [33 11 - 33 45]
      IL_007d: ldloc.1      // list
      IL_007e: ldloc.1      // list
      IL_007f: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0084: ldc.i4.1
      IL_0085: sub
      IL_0086: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_008b: stloc.3      // key2

      // [34 11 - 34 44]
      IL_008c: ldarg.0      // nextWords
      IL_008d: ldloc.3      // key2
      IL_008e: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::ContainsKey(!0/*string*/)
      IL_0093: brfalse.s    IL_00b7

      // [36 11 - 36 44]
      IL_0095: ldloc.0      // str
      IL_0096: ldstr        " "
      IL_009b: ldarg.0      // nextWords
      IL_009c: ldloc.3      // key2
      IL_009d: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_00a2: call         string [mscorlib]System.String::Concat(string, string, string)
      IL_00a7: stloc.0      // str

      // [37 11 - 37 36]
      IL_00a8: ldloc.1      // list
      IL_00a9: ldarg.0      // nextWords
      IL_00aa: ldloc.3      // key2
      IL_00ab: callvirt     instance !1/*string*/ class [mscorlib]System.Collections.Generic.Dictionary`2<string, string>::get_Item(!0/*string*/)
      IL_00b0: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

      IL_00b5: br.s         IL_00b9

      // [35 13 - 35 24]
      IL_00b7: ldloc.0      // str
      IL_00b8: ret

      // [21 47 - 21 54]
      IL_00b9: ldloc.2      // index
      IL_00ba: ldc.i4.1
      IL_00bb: add
      IL_00bc: stloc.2      // index

      // [21 27 - 21 45]
      IL_00bd: ldloc.2      // index
      IL_00be: ldarg.2      // wordsCount
      IL_00bf: blt          IL_0020
    // end of loop

    // [40 7 - 40 18]
    IL_00c4: ldloc.0      // str
    IL_00c5: ret

  } // end of method TextGeneratorTask::ContinuePhrase
} // end of class TextAnalysis.TextGeneratorTask
