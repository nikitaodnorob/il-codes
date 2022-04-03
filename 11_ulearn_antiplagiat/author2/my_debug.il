// Type: Antiplagiarism.LevenshteinCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EF8FBF8B-56EC-4A36-88BD-4A1E5284D372
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\02_debug_mycompiler.exe
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
      [2] int32 index2,
      [3] bool V_3,
      [4] bool V_4,
      [5] class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult> V_5
    )

    IL_0000: nop

    // [17 7 - 17 81]
    IL_0001: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::.ctor()
    IL_0006: stloc.0      // comparisonResultList

    // [18 12 - 18 26]
    IL_0007: ldc.i4.0
    IL_0008: stloc.1      // index1

    IL_0009: br.s         IL_0041
    // start of loop, entry point: IL_0041

      // [20 14 - 20 37]
      IL_000b: ldloc.1      // index1
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.2      // index2

      IL_000f: br.s         IL_0030
      // start of loop, entry point: IL_0030

        // [21 11 - 21 84]
        IL_0011: ldloc.0      // comparisonResultList
        IL_0012: ldarg.0      // this
        IL_0013: ldarg.1      // documents
        IL_0014: ldloc.1      // index1
        IL_0015: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_001a: ldarg.1      // documents
        IL_001b: ldloc.2      // index2
        IL_001c: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0021: call         instance class Antiplagiarism.ComparisonResult Antiplagiarism.LevenshteinCalculator::Dist(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
        IL_0026: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::Add(!0/*class Antiplagiarism.ComparisonResult*/)
        IL_002b: nop

        // [20 65 - 20 73]
        IL_002c: ldloc.2      // index2
        IL_002d: ldc.i4.1
        IL_002e: add
        IL_002f: stloc.2      // index2

        // [20 39 - 20 63]
        IL_0030: ldloc.2      // index2
        IL_0031: ldarg.1      // documents
        IL_0032: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
        IL_0037: clt
        IL_0039: stloc.3      // V_3

        IL_003a: ldloc.3      // V_3
        IL_003b: brtrue.s     IL_0011
      // end of loop

      // [18 54 - 18 62]
      IL_003d: ldloc.1      // index1
      IL_003e: ldc.i4.1
      IL_003f: add
      IL_0040: stloc.1      // index1

      // [18 28 - 18 52]
      IL_0041: ldloc.1      // index1
      IL_0042: ldarg.1      // documents
      IL_0043: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
      IL_0048: clt
      IL_004a: stloc.s      V_4

      IL_004c: ldloc.s      V_4
      IL_004e: brtrue.s     IL_000b
    // end of loop

    // [23 7 - 23 35]
    IL_0050: ldloc.0      // comparisonResultList
    IL_0051: stloc.s      V_5
    IL_0053: br.s         IL_0055
    IL_0055: ldloc.s      V_5
    IL_0057: ret

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
      [2] bool V_2,
      [3] int32 index_V_3,
      [4] bool V_4,
      [5] int32 index1,
      [6] int32 index2,
      [7] bool V_7,
      [8] bool V_8,
      [9] bool V_9,
      [10] class Antiplagiarism.ComparisonResult V_10
    )

    IL_0000: nop

    // [28 7 - 28 64]
    IL_0001: ldarg.1      // f
    IL_0002: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0007: ldc.i4.1
    IL_0008: add
    IL_0009: ldarg.2      // s
    IL_000a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000f: ldc.i4.1
    IL_0010: add
    IL_0011: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0016: stloc.0      // numArray

    // [29 12 - 29 25]
    IL_0017: ldc.i4.0
    IL_0018: stloc.1      // index

    IL_0019: br.s         IL_0029
    // start of loop, entry point: IL_0029

      // [30 9 - 30 44]
      IL_001b: ldloc.0      // numArray
      IL_001c: ldloc.1      // index
      IL_001d: ldc.i4.0
      IL_001e: ldloc.1      // index
      IL_001f: conv.r8
      IL_0020: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [29 45 - 29 52]
      IL_0025: ldloc.1      // index
      IL_0026: ldc.i4.1
      IL_0027: add
      IL_0028: stloc.1      // index

      // [29 27 - 29 43]
      IL_0029: ldloc.1      // index
      IL_002a: ldarg.1      // f
      IL_002b: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0030: cgt
      IL_0032: ldc.i4.0
      IL_0033: ceq
      IL_0035: stloc.2      // V_2

      IL_0036: ldloc.2      // V_2
      IL_0037: brtrue.s     IL_001b
    // end of loop

    // [31 12 - 31 25]
    IL_0039: ldc.i4.0
    IL_003a: stloc.3      // index_V_3

    IL_003b: br.s         IL_004b
    // start of loop, entry point: IL_004b

      // [32 9 - 32 44]
      IL_003d: ldloc.0      // numArray
      IL_003e: ldc.i4.0
      IL_003f: ldloc.3      // index_V_3
      IL_0040: ldloc.3      // index_V_3
      IL_0041: conv.r8
      IL_0042: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [31 45 - 31 52]
      IL_0047: ldloc.3      // index_V_3
      IL_0048: ldc.i4.1
      IL_0049: add
      IL_004a: stloc.3      // index_V_3

      // [31 27 - 31 43]
      IL_004b: ldloc.3      // index_V_3
      IL_004c: ldarg.2      // s
      IL_004d: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0052: cgt
      IL_0054: ldc.i4.0
      IL_0055: ceq
      IL_0057: stloc.s      V_4

      IL_0059: ldloc.s      V_4
      IL_005b: brtrue.s     IL_003d
    // end of loop

    // [33 12 - 33 26]
    IL_005d: ldc.i4.1
    IL_005e: stloc.s      index1

    IL_0060: br           IL_0147
    // start of loop, entry point: IL_0147

      // [35 14 - 35 28]
      IL_0065: ldc.i4.1
      IL_0066: stloc.s      index2

      IL_0068: br           IL_012b
      // start of loop, entry point: IL_012b
        IL_006d: nop

        // [37 11 - 37 93]
        IL_006e: ldarg.1      // f
        IL_006f: ldloc.s      index1
        IL_0071: ldc.i4.1
        IL_0072: sub
        IL_0073: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0078: ldarg.2      // s
        IL_0079: ldloc.s      index2
        IL_007b: ldc.i4.1
        IL_007c: sub
        IL_007d: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0082: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0087: ldc.r8       0.0
        IL_0090: ceq
        IL_0092: stloc.s      V_7

        IL_0094: ldloc.s      V_7
        IL_0096: brfalse.s    IL_00b2

        // [38 13 - 38 72]
        IL_0098: ldloc.0      // numArray
        IL_0099: ldloc.s      index1
        IL_009b: ldloc.s      index2
        IL_009d: ldloc.0      // numArray
        IL_009e: ldloc.s      index1
        IL_00a0: ldc.i4.1
        IL_00a1: sub
        IL_00a2: ldloc.s      index2
        IL_00a4: ldc.i4.1
        IL_00a5: sub
        IL_00a6: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00ab: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        IL_00b0: br.s         IL_0124

        // [40 13 - 45 21]
        IL_00b2: ldloc.0      // numArray
        IL_00b3: ldloc.s      index1
        IL_00b5: ldloc.s      index2
        IL_00b7: ldc.i4.3
        IL_00b8: newarr       [mscorlib]System.Double
        IL_00bd: dup

        IL_00be: ldc.i4.0
        IL_00bf: ldloc.0      // numArray
        IL_00c0: ldloc.s      index1
        IL_00c2: ldc.i4.1
        IL_00c3: sub
        IL_00c4: ldloc.s      index2
        IL_00c6: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00cb: ldc.r8       1
        IL_00d4: add
        IL_00d5: stelem.r8
        IL_00d6: dup
        IL_00d7: ldc.i4.1
        IL_00d8: ldloc.0      // numArray
        IL_00d9: ldloc.s      index1
        IL_00db: ldloc.s      index2
        IL_00dd: ldc.i4.1
        IL_00de: sub
        IL_00df: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00e4: ldc.r8       1
        IL_00ed: add
        IL_00ee: stelem.r8
        IL_00ef: dup
        IL_00f0: ldc.i4.2
        IL_00f1: ldloc.0      // numArray
        IL_00f2: ldloc.s      index1
        IL_00f4: ldc.i4.1
        IL_00f5: sub
        IL_00f6: ldloc.s      index2
        IL_00f8: ldc.i4.1
        IL_00f9: sub
        IL_00fa: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_00ff: ldarg.1      // f
        IL_0100: ldloc.s      index1
        IL_0102: ldc.i4.1
        IL_0103: sub
        IL_0104: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0109: ldarg.2      // s
        IL_010a: ldloc.s      index2
        IL_010c: ldc.i4.1
        IL_010d: sub
        IL_010e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0113: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0118: add
        IL_0119: stelem.r8
        IL_011a: call         float64 [System.Core]System.Linq.Enumerable::Min(class [mscorlib]System.Collections.Generic.IEnumerable`1<float64>)
        IL_011f: call         instance void float64[0...,0...]::Set(int32, int32, float64)
        IL_0124: nop

        // [35 49 - 35 57]
        IL_0125: ldloc.s      index2
        IL_0127: ldc.i4.1
        IL_0128: add
        IL_0129: stloc.s      index2

        // [35 30 - 35 47]
        IL_012b: ldloc.s      index2
        IL_012d: ldarg.2      // s
        IL_012e: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
        IL_0133: cgt
        IL_0135: ldc.i4.0
        IL_0136: ceq
        IL_0138: stloc.s      V_8

        IL_013a: ldloc.s      V_8
        IL_013c: brtrue       IL_006d
      // end of loop

      // [33 47 - 33 55]
      IL_0141: ldloc.s      index1
      IL_0143: ldc.i4.1
      IL_0144: add
      IL_0145: stloc.s      index1

      // [33 28 - 33 45]
      IL_0147: ldloc.s      index1
      IL_0149: ldarg.1      // f
      IL_014a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_014f: cgt
      IL_0151: ldc.i4.0
      IL_0152: ceq
      IL_0154: stloc.s      V_9

      IL_0156: ldloc.s      V_9
      IL_0158: brtrue       IL_0065
    // end of loop

    // [48 7 - 48 69]
    IL_015d: ldarg.1      // f
    IL_015e: ldarg.2      // s
    IL_015f: ldloc.0      // numArray
    IL_0160: ldarg.1      // f
    IL_0161: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0166: ldarg.2      // s
    IL_0167: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_016c: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0171: newobj       instance void Antiplagiarism.ComparisonResult::.ctor(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64)
    IL_0176: stloc.s      V_10
    IL_0178: br.s         IL_017a
    IL_017a: ldloc.s      V_10
    IL_017c: ret

  } // end of method LevenshteinCalculator::Dist

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret

  } // end of method LevenshteinCalculator::.ctor
} // end of class Antiplagiarism.LevenshteinCalculator

// Type: Antiplagiarism.LongestCommonSubsequenceCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EF8FBF8B-56EC-4A36-88BD-4A1E5284D372
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\02_debug_mycompiler.exe
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
    .maxstack 3
    .locals init (
      [0] int32[0...,0...] V_0,
      [1] class [mscorlib]System.Collections.Generic.List`1<string> V_1
    )

    IL_0000: nop

    // [14 86 - 14 224]
    IL_0001: ldarg.0      // first
    IL_0002: ldarg.1      // second
    IL_0003: call         int32[0...,0...] Antiplagiarism.LongestCommonSubsequenceCalculator::CreateOptimizationTable(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
    IL_0008: stloc.0      // V_0
    IL_0009: ldloc.0      // V_0
    IL_000a: ldarg.0      // first
    IL_000b: ldarg.1      // second
    IL_000c: call         class [mscorlib]System.Collections.Generic.List`1<string> Antiplagiarism.LongestCommonSubsequenceCalculator::RestoreAnswer(int32[0...,0...], class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
    IL_0011: stloc.1      // V_1
    IL_0012: br.s         IL_0014
    IL_0014: ldloc.1      // V_1
    IL_0015: ret

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
      [2] int32 index2,
      [3] bool V_3,
      [4] bool V_4,
      [5] bool V_5,
      [6] int32[0...,0...] V_6
    )

    IL_0000: nop

    // [18 7 - 18 76]
    IL_0001: ldarg.0      // first
    IL_0002: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0007: ldc.i4.1
    IL_0008: add
    IL_0009: ldarg.1      // second
    IL_000a: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000f: ldc.i4.1
    IL_0010: add
    IL_0011: newobj       instance void int32[0...,0...]::.ctor(int32, int32)
    IL_0016: stloc.0      // optimizationTable

    // [19 12 - 19 40]
    IL_0017: ldarg.0      // first
    IL_0018: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_001d: ldc.i4.1
    IL_001e: sub
    IL_001f: stloc.1      // index1

    IL_0020: br.s         IL_009d
    // start of loop, entry point: IL_009d

      // [21 14 - 21 43]
      IL_0022: ldarg.1      // second
      IL_0023: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0028: ldc.i4.1
      IL_0029: sub
      IL_002a: stloc.2      // index2

      IL_002b: br.s         IL_008c
      // start of loop, entry point: IL_008c

        // [22 11 - 22 262]
        IL_002d: ldarg.0      // first
        IL_002e: ldloc.1      // index1
        IL_002f: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0034: ldarg.1      // second
        IL_0035: ldloc.2      // index2
        IL_0036: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_003b: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0040: ldc.r8       0.0
        IL_0049: ceq
        IL_004b: stloc.3      // V_3

        IL_004c: ldloc.3      // V_3
        IL_004d: brfalse.s    IL_0067
        IL_004f: ldloc.0      // optimizationTable
        IL_0050: ldloc.1      // index1
        IL_0051: ldloc.2      // index2
        IL_0052: ldc.i4.1
        IL_0053: ldloc.0      // optimizationTable
        IL_0054: ldloc.1      // index1
        IL_0055: ldc.i4.1
        IL_0056: add
        IL_0057: ldloc.2      // index2
        IL_0058: ldc.i4.1
        IL_0059: add
        IL_005a: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_005f: add
        IL_0060: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_0065: br.s         IL_0088
        IL_0067: ldloc.0      // optimizationTable
        IL_0068: ldloc.1      // index1
        IL_0069: ldloc.2      // index2
        IL_006a: ldloc.0      // optimizationTable
        IL_006b: ldloc.1      // index1
        IL_006c: ldc.i4.1
        IL_006d: add
        IL_006e: ldloc.2      // index2
        IL_006f: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0074: ldloc.0      // optimizationTable
        IL_0075: ldloc.1      // index1
        IL_0076: ldloc.2      // index2
        IL_0077: ldc.i4.1
        IL_0078: add
        IL_0079: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_007e: call         int32 [mscorlib]System.Math::Max(int32, int32)
        IL_0083: call         instance void int32[0...,0...]::Set(int32, int32, int32)

        // [21 58 - 21 66]
        IL_0088: ldloc.2      // index2
        IL_0089: ldc.i4.1
        IL_008a: sub
        IL_008b: stloc.2      // index2

        // [21 45 - 21 56]
        IL_008c: ldloc.2      // index2
        IL_008d: ldc.i4.0
        IL_008e: clt
        IL_0090: ldc.i4.0
        IL_0091: ceq
        IL_0093: stloc.s      V_4

        IL_0095: ldloc.s      V_4
        IL_0097: brtrue.s     IL_002d
      // end of loop

      // [19 55 - 19 63]
      IL_0099: ldloc.1      // index1
      IL_009a: ldc.i4.1
      IL_009b: sub
      IL_009c: stloc.1      // index1

      // [19 42 - 19 53]
      IL_009d: ldloc.1      // index1
      IL_009e: ldc.i4.0
      IL_009f: clt
      IL_00a1: ldc.i4.0
      IL_00a2: ceq
      IL_00a4: stloc.s      V_5

      IL_00a6: ldloc.s      V_5
      IL_00a8: brtrue       IL_0022
    // end of loop

    // [24 7 - 24 32]
    IL_00ad: ldloc.0      // optimizationTable
    IL_00ae: stloc.s      V_6
    IL_00b0: br.s         IL_00b2
    IL_00b2: ldloc.s      V_6
    IL_00b4: ret

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
      [0] class [mscorlib]System.Collections.Generic.List`1<string> stringList,
      [1] int32 index1,
      [2] int32 index2,
      [3] bool V_3,
      [4] bool V_4,
      [5] bool V_5,
      [6] class [mscorlib]System.Collections.Generic.List`1<string> V_6
    )

    IL_0000: nop

    // [32 7 - 32 51]
    IL_0001: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0006: stloc.0      // stringList

    // [33 7 - 33 21]
    IL_0007: ldc.i4.0
    IL_0008: stloc.1      // index1

    // [34 7 - 34 21]
    IL_0009: ldc.i4.0
    IL_000a: stloc.2      // index2

    IL_000b: br.s         IL_0071
    // start of loop, entry point: IL_0071

      // [37 9 - 37 92]
      IL_000d: ldarg.1      // first
      IL_000e: ldloc.1      // index1
      IL_000f: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_0014: ldarg.2      // second
      IL_0015: ldloc.2      // index2
      IL_0016: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_001b: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
      IL_0020: ldc.r8       0.0
      IL_0029: ceq
      IL_002b: stloc.3      // V_3

      IL_002c: ldloc.3      // V_3
      IL_002d: brfalse.s    IL_004d
      IL_002f: nop

      // [39 11 - 39 47]
      IL_0030: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
      IL_0035: ldarg.1      // first
      IL_0036: ldloc.1      // index1
      IL_0037: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
      IL_003c: call         instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)
      IL_0041: nop

      // [40 11 - 40 19]
      IL_0042: ldloc.1      // index1
      IL_0043: ldc.i4.1
      IL_0044: add
      IL_0045: stloc.1      // index1

      // [41 11 - 41 19]
      IL_0046: ldloc.2      // index2
      IL_0047: ldc.i4.1
      IL_0048: add
      IL_0049: stloc.2      // index2
      IL_004a: nop

      IL_004b: br.s         IL_0071

      // [43 14 - 43 65]
      IL_004d: ldarg.0      // 'opt'
      IL_004e: ldloc.1      // index1
      IL_004f: ldloc.2      // index2
      IL_0050: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0055: ldarg.0      // 'opt'
      IL_0056: ldloc.1      // index1
      IL_0057: ldc.i4.1
      IL_0058: add
      IL_0059: ldloc.2      // index2
      IL_005a: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_005f: ceq
      IL_0061: stloc.s      V_4

      IL_0063: ldloc.s      V_4
      IL_0065: brfalse.s    IL_006d

      // [44 11 - 44 19]
      IL_0067: ldloc.1      // index1
      IL_0068: ldc.i4.1
      IL_0069: add
      IL_006a: stloc.1      // index1

      IL_006b: br.s         IL_0071

      // [46 11 - 46 19]
      IL_006d: ldloc.2      // index2
      IL_006e: ldc.i4.1
      IL_006f: add
      IL_0070: stloc.2      // index2

      // [35 7 - 35 88]
      IL_0071: ldarg.0      // 'opt'
      IL_0072: ldloc.1      // index1
      IL_0073: ldloc.2      // index2
      IL_0074: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0079: brfalse.s    IL_008f

      IL_007b: ldloc.1      // index1
      IL_007c: ldarg.1      // first
      IL_007d: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0082: bge.s        IL_008f
      IL_0084: ldloc.2      // index2
      IL_0085: ldarg.2      // second
      IL_0086: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_008b: clt
      IL_008d: br.s         IL_0090
      IL_008f: ldc.i4.0
      IL_0090: stloc.s      V_5
      IL_0092: ldloc.s      V_5
      IL_0094: brtrue       IL_000d
    // end of loop

    // [48 7 - 48 33]
    IL_0099: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_009e: stloc.s      V_6
    IL_00a0: br.s         IL_00a2
    IL_00a2: ldloc.s      V_6
    IL_00a4: ret

  } // end of method LongestCommonSubsequenceCalculator::RestoreAnswer
} // end of class Antiplagiarism.LongestCommonSubsequenceCalculator
