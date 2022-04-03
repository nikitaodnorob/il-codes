// Type: Antiplagiarism.LevenshteinCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CDDC356B-A2F9-44C4-9FDF-0F109F37E9BC
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\02_release_mycompiler.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Antiplagiarism.LevenshteinCalculator
    extends [mscorlib]System.Object
{

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>
    CompareDocumentsPairwise(
      class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> documents
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult> comparisonResultList,
      [1] int32 index1,
      [2] int32 index2
    )

    // [17 7 - 17 81]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::.ctor()
    IL_0005: stloc.0      // comparisonResultList

    // [18 12 - 18 26]
    IL_0006: ldc.i4.0
    IL_0007: stloc.1      // index1

    IL_0008: br.s         IL_003b
    // start of loop, entry point: IL_003b

      // [20 14 - 20 37]
      IL_000a: ldloc.1      // index1
      IL_000b: ldc.i4.1
      IL_000c: add
      IL_000d: stloc.2      // index2

      IL_000e: br.s         IL_002e
      // start of loop, entry point: IL_002e

        // [21 11 - 21 84]
        IL_0010: ldloc.0      // comparisonResultList
        IL_0011: ldarg.0      // this
        IL_0012: ldarg.1      // documents
        IL_0013: ldloc.1      // index1
        IL_0014: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0019: ldarg.1      // documents
        IL_001a: ldloc.2      // index2
        IL_001b: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0020: call         instance class Antiplagiarism.ComparisonResult Antiplagiarism.LevenshteinCalculator::Dist(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
        IL_0025: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::Add(!0/*class Antiplagiarism.ComparisonResult*/)

        // [20 65 - 20 73]
        IL_002a: ldloc.2      // index2
        IL_002b: ldc.i4.1
        IL_002c: add
        IL_002d: stloc.2      // index2

        // [20 39 - 20 63]
        IL_002e: ldloc.2      // index2
        IL_002f: ldarg.1      // documents
        IL_0030: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
        IL_0035: blt.s        IL_0010
      // end of loop

      // [18 54 - 18 62]
      IL_0037: ldloc.1      // index1
      IL_0038: ldc.i4.1
      IL_0039: add
      IL_003a: stloc.1      // index1

      // [18 28 - 18 52]
      IL_003b: ldloc.1      // index1
      IL_003c: ldarg.1      // documents
      IL_003d: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
      IL_0042: blt.s        IL_000a
    // end of loop

    // [23 7 - 23 35]
    IL_0044: ldloc.0      // comparisonResultList
    IL_0045: ret

  } // end of method LevenshteinCalculator::CompareDocumentsPairwise

  .method public hidebysig instance class Antiplagiarism.ComparisonResult
    Dist(
      class [mscorlib]System.Collections.Generic.List`1<string> f,
      class [mscorlib]System.Collections.Generic.List`1<string> s
    ) cil managed
  {
    .maxstack 11
    .locals init (
      [0] float64[0...,0...] numArray,
      [1] int32 index,
      [2] int32 index_V_2,
      [3] int32 index1,
      [4] int32 index2
    )

    // [28 7 - 28 64]
    IL_0000: ldarg.1      // f
    IL_0001: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0006: ldc.i4.1
    IL_0007: add
    IL_0008: ldarg.2      // s
    IL_0009: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000e: ldc.i4.1
    IL_000f: add
    IL_0010: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0015: stloc.0      // numArray

    // [29 12 - 29 25]
    IL_0016: ldc.i4.0
    IL_0017: stloc.1      // index

    IL_0018: br.s         IL_0028
    // start of loop, entry point: IL_0028

      // [30 9 - 30 44]
      IL_001a: ldloc.0      // numArray
      IL_001b: ldloc.1      // index
      IL_001c: ldc.i4.0
      IL_001d: ldloc.1      // index
      IL_001e: conv.r8
      IL_001f: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [29 45 - 29 52]
      IL_0024: ldloc.1      // index
      IL_0025: ldc.i4.1
      IL_0026: add
      IL_0027: stloc.1      // index

      // [29 27 - 29 43]
      IL_0028: ldloc.1      // index
      IL_0029: ldarg.1      // f
      IL_002a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_002f: ble.s        IL_001a
    // end of loop

    // [31 12 - 31 25]
    IL_0031: ldc.i4.0
    IL_0032: stloc.2      // index_V_2

    IL_0033: br.s         IL_0043
    // start of loop, entry point: IL_0043

      // [32 9 - 32 44]
      IL_0035: ldloc.0      // numArray
      IL_0036: ldc.i4.0
      IL_0037: ldloc.2      // index_V_2
      IL_0038: ldloc.2      // index_V_2
      IL_0039: conv.r8
      IL_003a: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [31 45 - 31 52]
      IL_003f: ldloc.2      // index_V_2
      IL_0040: ldc.i4.1
      IL_0041: add
      IL_0042: stloc.2      // index_V_2

      // [31 27 - 31 43]
      IL_0043: ldloc.2      // index_V_2
      IL_0044: ldarg.2      // s
      IL_0045: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_004a: ble.s        IL_0035
    // end of loop

    // [33 12 - 33 26]
    IL_004c: ldc.i4.1
    IL_004d: stloc.3      // index1

    IL_004e: br           IL_011a
    // start of loop, entry point: IL_011a

      // [35 14 - 35 28]
      IL_0053: ldc.i4.1
      IL_0054: stloc.s      index2

      IL_0056: br           IL_0109
      // start of loop, entry point: IL_0109

        // [37 11 - 37 93]
        IL_005b: ldarg.1      // f
        IL_005c: ldloc.3      // index1
        IL_005d: ldc.i4.1
        IL_005e: sub
        IL_005f: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0064: ldarg.2      // s
        IL_0065: ldloc.s      index2
        IL_0067: ldc.i4.1
        IL_0068: sub
        IL_0069: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_006e: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0073: ldc.r8       0.0
        IL_007c: bne.un.s     IL_0096

        // [38 13 - 38 72]
        IL_007e: ldloc.0      // numArray
        IL_007f: ldloc.3      // index1
        IL_0080: ldloc.s      index2
        IL_0082: ldloc.0      // numArray
        IL_0083: ldloc.3      // index1
        IL_0084: ldc.i4.1
        IL_0085: sub
        IL_0086: ldloc.s      index2
        IL_0088: ldc.i4.1
        IL_0089: sub
        IL_008a: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_008f: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        IL_0094: br.s         IL_0103

        // [40 13 - 45 21]
        IL_0096: ldloc.0      // numArray
        IL_0097: ldloc.3      // index1
        IL_0098: ldloc.s      index2
        IL_009a: ldc.i4.3
        IL_009b: newarr       [mscorlib]System.Double
        IL_00a0: dup
        IL_00a1: ldc.i4.0
        IL_00a2: ldloc.0      // numArray
        IL_00a3: ldloc.3      // index1
        IL_00a4: ldc.i4.1
        IL_00a5: sub
        IL_00a6: ldloc.s      index2
        IL_00a8: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00ad: ldc.r8       1
        IL_00b6: add
        IL_00b7: stelem.r8
        IL_00b8: dup
        IL_00b9: ldc.i4.1
        IL_00ba: ldloc.0      // numArray
        IL_00bb: ldloc.3      // index1
        IL_00bc: ldloc.s      index2
        IL_00be: ldc.i4.1
        IL_00bf: sub
        IL_00c0: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00c5: ldc.r8       1
        IL_00ce: add
        IL_00cf: stelem.r8
        IL_00d0: dup
        IL_00d1: ldc.i4.2
        IL_00d2: ldloc.0      // numArray
        IL_00d3: ldloc.3      // index1
        IL_00d4: ldc.i4.1
        IL_00d5: sub
        IL_00d6: ldloc.s      index2
        IL_00d8: ldc.i4.1
        IL_00d9: sub
        IL_00da: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00df: ldarg.1      // f
        IL_00e0: ldloc.3      // index1
        IL_00e1: ldc.i4.1
        IL_00e2: sub
        IL_00e3: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_00e8: ldarg.2      // s
        IL_00e9: ldloc.s      index2
        IL_00eb: ldc.i4.1
        IL_00ec: sub
        IL_00ed: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_00f2: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_00f7: add
        IL_00f8: stelem.r8
        IL_00f9: call         float64 [System.Core]System.Linq.Enumerable::Min(class [mscorlib]System.Collections.Generic.IEnumerable`1<float64>)
        IL_00fe: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [35 49 - 35 57]
        IL_0103: ldloc.s      index2
        IL_0105: ldc.i4.1
        IL_0106: add
        IL_0107: stloc.s      index2

        // [35 30 - 35 47]
        IL_0109: ldloc.s      index2
        IL_010b: ldarg.2      // s
        IL_010c: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
        IL_0111: ble          IL_005b
      // end of loop

      // [33 47 - 33 55]
      IL_0116: ldloc.3      // index1
      IL_0117: ldc.i4.1
      IL_0118: add
      IL_0119: stloc.3      // index1

      // [33 28 - 33 45]
      IL_011a: ldloc.3      // index1
      IL_011b: ldarg.1      // f
      IL_011c: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0121: ble          IL_0053
    // end of loop

    // [48 7 - 48 69]
    IL_0126: ldarg.1      // f
    IL_0127: ldarg.2      // s
    IL_0128: ldloc.0      // numArray
    IL_0129: ldarg.1      // f
    IL_012a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_012f: ldarg.2      // s
    IL_0130: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0135: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_013a: newobj       instance void Antiplagiarism.ComparisonResult::.ctor(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64)
    IL_013f: ret

  } // end of method LevenshteinCalculator::Dist

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method LevenshteinCalculator::.ctor
} // end of class Antiplagiarism.LevenshteinCalculator

// Type: Antiplagiarism.LongestCommonSubsequenceCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CDDC356B-A2F9-44C4-9FDF-0F109F37E9BC
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\02_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Antiplagiarism.LongestCommonSubsequenceCalculator
    extends [mscorlib]System.Object
{

  .method public hidebysig static class [mscorlib]System.Collections.Generic.List`1<string>
    Calculate(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 8

    // [14 86 - 14 224]
    IL_0000: ldarg.0      // first
    IL_0001: ldarg.1      // second
    IL_0002: call         int32[0...,0...] Antiplagiarism.LongestCommonSubsequenceCalculator::CreateOptimizationTable(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
    IL_0007: ldarg.0      // first
    IL_0008: ldarg.1      // second
    IL_0009: call         class [mscorlib]System.Collections.Generic.List`1<string> Antiplagiarism.LongestCommonSubsequenceCalculator::RestoreAnswer(int32[0...,0...], class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
    IL_000e: ret

  } // end of method LongestCommonSubsequenceCalculator::Calculate

  .method private hidebysig static int32[0...,0...]
    CreateOptimizationTable(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 8
    .locals init (
      [0] int32[0...,0...] optimizationTable,
      [1] int32 index1,
      [2] int32 index2
    )

    // [18 7 - 18 76]
    IL_0000: ldarg.0      // first
    IL_0001: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0006: ldc.i4.1
    IL_0007: add
    IL_0008: ldarg.1      // second
    IL_0009: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000e: ldc.i4.1
    IL_000f: add
    IL_0010: newobj       instance void int32[0...,0...]::.ctor(int32, int32)
    IL_0015: stloc.0      // optimizationTable

    // [19 12 - 19 40]
    IL_0016: ldarg.0      // first
    IL_0017: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_001c: ldc.i4.1
    IL_001d: sub
    IL_001e: stloc.1      // index1

    IL_001f: br.s         IL_008f
    // start of loop, entry point: IL_008f

      // [21 14 - 21 43]
      IL_0021: ldarg.1      // second
      IL_0022: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0027: ldc.i4.1
      IL_0028: sub
      IL_0029: stloc.2      // index2

      IL_002a: br.s         IL_0087
      // start of loop, entry point: IL_0087

        // [22 11 - 22 262]
        IL_002c: ldarg.0      // first
        IL_002d: ldloc.1      // index1
        IL_002e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0033: ldarg.1      // second
        IL_0034: ldloc.2      // index2
        IL_0035: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_003a: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_003f: ldc.r8       0.0
        IL_0048: bne.un.s     IL_0062

        IL_004a: ldloc.0      // optimizationTable
        IL_004b: ldloc.1      // index1
        IL_004c: ldloc.2      // index2
        IL_004d: ldc.i4.1
        IL_004e: ldloc.0      // optimizationTable
        IL_004f: ldloc.1      // index1
        IL_0050: ldc.i4.1
        IL_0051: add
        IL_0052: ldloc.2      // index2
        IL_0053: ldc.i4.1
        IL_0054: add
        IL_0055: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_005a: add
        IL_005b: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_0060: br.s         IL_0083
        IL_0062: ldloc.0      // optimizationTable
        IL_0063: ldloc.1      // index1
        IL_0064: ldloc.2      // index2
        IL_0065: ldloc.0      // optimizationTable
        IL_0066: ldloc.1      // index1
        IL_0067: ldc.i4.1
        IL_0068: add
        IL_0069: ldloc.2      // index2
        IL_006a: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_006f: ldloc.0      // optimizationTable
        IL_0070: ldloc.1      // index1
        IL_0071: ldloc.2      // index2
        IL_0072: ldc.i4.1
        IL_0073: add
        IL_0074: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0079: call         int32 [mscorlib]System.Math::Max(int32, int32)
        IL_007e: call         instance void int32[0...,0...]::Set(int32, int32, int32)

        // [21 58 - 21 66]
        IL_0083: ldloc.2      // index2
        IL_0084: ldc.i4.1
        IL_0085: sub
        IL_0086: stloc.2      // index2

        // [21 45 - 21 56]
        IL_0087: ldloc.2      // index2
        IL_0088: ldc.i4.0
        IL_0089: bge.s        IL_002c
      // end of loop

      // [19 55 - 19 63]
      IL_008b: ldloc.1      // index1
      IL_008c: ldc.i4.1
      IL_008d: sub
      IL_008e: stloc.1      // index1

      // [19 42 - 19 53]
      IL_008f: ldloc.1      // index1
      IL_0090: ldc.i4.0
      IL_0091: bge.s        IL_0021
    // end of loop

    // [24 7 - 24 32]
    IL_0093: ldloc.0      // optimizationTable
    IL_0094: ret

  } // end of method LongestCommonSubsequenceCalculator::CreateOptimizationTable

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<string>
    RestoreAnswer(
      int32[0...,0...] 'opt',
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 index1,
      [1] int32 index2
    )

    // [32 7 - 32 51]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005: pop

    // [33 7 - 33 21]
    IL_0006: ldc.i4.0
    IL_0007: stloc.0      // index1

    // [34 7 - 34 21]
    IL_0008: ldc.i4.0
    IL_0009: stloc.1      // index2

    IL_000a: br.s         IL_0063
    // start of loop, entry point: IL_0063

      // [37 9 - 37 92]
      IL_000c: ldarg.1      // first
      IL_000d: ldloc.0      // index1
      IL_000e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_0013: ldarg.2      // second
      IL_0014: ldloc.1      // index2
      IL_0015: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_001a: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
      IL_001f: ldc.r8       0.0
      IL_0028: bne.un.s     IL_0045

      // [39 11 - 39 47]
      IL_002a: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
      IL_002f: ldarg.1      // first
      IL_0030: ldloc.0      // index1
      IL_0031: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_0036: call         instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

      // [40 11 - 40 19]
      IL_003b: ldloc.0      // index1
      IL_003c: ldc.i4.1
      IL_003d: add
      IL_003e: stloc.0      // index1

      // [41 11 - 41 19]
      IL_003f: ldloc.1      // index2
      IL_0040: ldc.i4.1
      IL_0041: add
      IL_0042: stloc.1      // index2

      IL_0043: br.s         IL_0063

      // [43 14 - 43 65]
      IL_0045: ldarg.0      // 'opt'
      IL_0046: ldloc.0      // index1
      IL_0047: ldloc.1      // index2
      IL_0048: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_004d: ldarg.0      // 'opt'
      IL_004e: ldloc.0      // index1
      IL_004f: ldc.i4.1
      IL_0050: add
      IL_0051: ldloc.1      // index2
      IL_0052: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0057: bne.un.s     IL_005f

      // [44 11 - 44 19]
      IL_0059: ldloc.0      // index1
      IL_005a: ldc.i4.1
      IL_005b: add
      IL_005c: stloc.0      // index1

      IL_005d: br.s         IL_0063

      // [46 11 - 46 19]
      IL_005f: ldloc.1      // index2
      IL_0060: ldc.i4.1
      IL_0061: add
      IL_0062: stloc.1      // index2

      // [35 7 - 35 88]
      IL_0063: ldarg.0      // 'opt'
      IL_0064: ldloc.0      // index1
      IL_0065: ldloc.1      // index2
      IL_0066: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_006b: brfalse.s    IL_007f

      IL_006d: ldloc.0      // index1
      IL_006e: ldarg.1      // first
      IL_006f: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0074: bge.s        IL_007f
      IL_0076: ldloc.1      // index2
      IL_0077: ldarg.2      // second
      IL_0078: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_007d: blt.s        IL_000c
    // end of loop

    // [48 7 - 48 33]
    IL_007f: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0084: ret

  } // end of method LongestCommonSubsequenceCalculator::RestoreAnswer
} // end of class Antiplagiarism.LongestCommonSubsequenceCalculator
