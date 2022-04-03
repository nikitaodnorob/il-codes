// Type: Antiplagiarism.LevenshteinCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 06BC59BF-26D8-4162-B604-5E71099DAA58
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\01_debug_mycompiler.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Antiplagiarism.LevenshteinCalculator
    extends [mscorlib]System.Object
{

  .method private hidebysig static void
    MakeStep(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second,
      int32 i,
      int32 j,
      float64[0...,0...] dp
    ) cil managed
  {
    .maxstack 9
    .locals init (
      [0] float64 tokenDistance
    )

    IL_0000: nop

    // [21 7 - 21 99]
    IL_0001: ldarg.0      // first
    IL_0002: ldarg.2      // i
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_000a: ldarg.1      // second
    IL_000b: ldarg.3      // j
    IL_000c: ldc.i4.1
    IL_000d: sub
    IL_000e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0013: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
    IL_0018: stloc.0      // tokenDistance

    // [22 7 - 22 151]
    IL_0019: ldarg.s      dp
    IL_001b: ldarg.2      // i
    IL_001c: ldarg.3      // j
    IL_001d: ldloc.0      // tokenDistance
    IL_001e: ldc.r8       0.0
    IL_0027: bgt.s        IL_0038

    IL_0029: ldarg.s      dp
    IL_002b: ldarg.2      // i
    IL_002c: ldc.i4.1
    IL_002d: sub
    IL_002e: ldarg.3      // j
    IL_002f: ldc.i4.1
    IL_0030: sub
    IL_0031: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0036: br.s         IL_007b
    IL_0038: ldarg.s      dp
    IL_003a: ldarg.2      // i
    IL_003b: ldc.i4.1
    IL_003c: sub
    IL_003d: ldarg.3      // j
    IL_003e: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0043: ldc.r8       1
    IL_004c: add
    IL_004d: ldarg.s      dp
    IL_004f: ldarg.2      // i
    IL_0050: ldarg.3      // j
    IL_0051: ldc.i4.1
    IL_0052: sub
    IL_0053: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0058: ldc.r8       1
    IL_0061: add
    IL_0062: ldarg.s      dp
    IL_0064: ldarg.2      // i
    IL_0065: ldc.i4.1
    IL_0066: sub
    IL_0067: ldarg.3      // j
    IL_0068: ldc.i4.1
    IL_0069: sub
    IL_006a: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_006f: ldloc.0      // tokenDistance
    IL_0070: add
    IL_0071: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_0076: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_007b: call         instance void float64[0...,0...]::Set(int32, int32, float64)
    IL_0080: ret

  } // end of method LevenshteinCalculator::MakeStep

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

    // [28 7 - 28 81]
    IL_0001: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::.ctor()
    IL_0006: stloc.0      // comparisonResultList

    // [29 12 - 29 26]
    IL_0007: ldc.i4.0
    IL_0008: stloc.1      // index1

    IL_0009: br.s         IL_0041
    // start of loop, entry point: IL_0041

      // [31 14 - 31 37]
      IL_000b: ldloc.1      // index1
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.2      // index2

      IL_000f: br.s         IL_0030
      // start of loop, entry point: IL_0030

        // [32 11 - 32 101]
        IL_0011: ldloc.0      // comparisonResultList
        IL_0012: ldarg.0      // this
        IL_0013: ldarg.1      // documents
        IL_0014: ldloc.1      // index1
        IL_0015: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_001a: ldarg.1      // documents
        IL_001b: ldloc.2      // index2
        IL_001c: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0021: call         instance class Antiplagiarism.ComparisonResult Antiplagiarism.LevenshteinCalculator::GetLevensteinDistance(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
        IL_0026: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::Add(!0/*class Antiplagiarism.ComparisonResult*/)
        IL_002b: nop

        // [31 65 - 31 73]
        IL_002c: ldloc.2      // index2
        IL_002d: ldc.i4.1
        IL_002e: add
        IL_002f: stloc.2      // index2

        // [31 39 - 31 63]
        IL_0030: ldloc.2      // index2
        IL_0031: ldarg.1      // documents
        IL_0032: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
        IL_0037: clt
        IL_0039: stloc.3      // V_3

        IL_003a: ldloc.3      // V_3
        IL_003b: brtrue.s     IL_0011
      // end of loop

      // [29 54 - 29 62]
      IL_003d: ldloc.1      // index1
      IL_003e: ldc.i4.1
      IL_003f: add
      IL_0040: stloc.1      // index1

      // [29 28 - 29 52]
      IL_0041: ldloc.1      // index1
      IL_0042: ldarg.1      // documents
      IL_0043: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
      IL_0048: clt
      IL_004a: stloc.s      V_4

      IL_004c: ldloc.s      V_4
      IL_004e: brtrue.s     IL_000b
    // end of loop

    // [34 7 - 34 35]
    IL_0050: ldloc.0      // comparisonResultList
    IL_0051: stloc.s      V_5
    IL_0053: br.s         IL_0055
    IL_0055: ldloc.s      V_5
    IL_0057: ret

  } // end of method LevenshteinCalculator::CompareDocumentsPairwise

  .method private hidebysig static void
    InitDP(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second,
      float64[0...,0...] dp
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 index,
      [1] bool V_1,
      [2] int32 index_V_2,
      [3] bool V_3
    )

    IL_0000: nop

    // [39 12 - 39 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0013
    // start of loop, entry point: IL_0013

      // [40 9 - 40 38]
      IL_0005: ldarg.2      // dp
      IL_0006: ldloc.0      // index
      IL_0007: ldc.i4.0
      IL_0008: ldloc.0      // index
      IL_0009: conv.r8
      IL_000a: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [39 49 - 39 56]
      IL_000f: ldloc.0      // index
      IL_0010: ldc.i4.1
      IL_0011: add
      IL_0012: stloc.0      // index

      // [39 27 - 39 47]
      IL_0013: ldloc.0      // index
      IL_0014: ldarg.0      // first
      IL_0015: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_001a: cgt
      IL_001c: ldc.i4.0
      IL_001d: ceq
      IL_001f: stloc.1      // V_1

      IL_0020: ldloc.1      // V_1
      IL_0021: brtrue.s     IL_0005
    // end of loop

    // [41 12 - 41 25]
    IL_0023: ldc.i4.0
    IL_0024: stloc.2      // index_V_2

    IL_0025: br.s         IL_0035
    // start of loop, entry point: IL_0035

      // [42 9 - 42 38]
      IL_0027: ldarg.2      // dp
      IL_0028: ldc.i4.0
      IL_0029: ldloc.2      // index_V_2
      IL_002a: ldloc.2      // index_V_2
      IL_002b: conv.r8
      IL_002c: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [41 50 - 41 57]
      IL_0031: ldloc.2      // index_V_2
      IL_0032: ldc.i4.1
      IL_0033: add
      IL_0034: stloc.2      // index_V_2

      // [41 27 - 41 48]
      IL_0035: ldloc.2      // index_V_2
      IL_0036: ldarg.1      // second
      IL_0037: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_003c: cgt
      IL_003e: ldc.i4.0
      IL_003f: ceq
      IL_0041: stloc.3      // V_3

      IL_0042: ldloc.3      // V_3
      IL_0043: brtrue.s     IL_0027
    // end of loop
    IL_0045: ret

  } // end of method LevenshteinCalculator::InitDP

  .method public hidebysig instance class Antiplagiarism.ComparisonResult
    GetLevensteinDistance(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] int32 index1,
      [1] int32 index2,
      [2] float64[0...,0...] dp,
      [3] int32 count1,
      [4] int32 index3,
      [5] int32 index4,
      [6] bool V_6,
      [7] bool V_7,
      [8] class Antiplagiarism.ComparisonResult V_8
    )

    IL_0000: nop

    // [49 7 - 49 31]
    IL_0001: ldarg.1      // first
    IL_0002: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0007: stloc.3      // count1
    IL_0008: ldarg.2      // second
    IL_0009: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000e: ldloc.3      // count1
    IL_000f: stloc.0      // index1
    IL_0010: stloc.1      // index2

    // [53 7 - 53 56]
    IL_0011: ldloc.0      // index1
    IL_0012: ldc.i4.1
    IL_0013: add
    IL_0014: ldloc.1      // index2
    IL_0015: ldc.i4.1
    IL_0016: add
    IL_0017: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001c: stloc.2      // dp

    // [54 7 - 54 54]
    IL_001d: ldarg.1      // first
    IL_001e: ldarg.2      // second
    IL_001f: ldloc.2      // dp
    IL_0020: call         void Antiplagiarism.LevenshteinCalculator::InitDP(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64[0...,0...])
    IL_0025: nop

    // [55 12 - 55 26]
    IL_0026: ldc.i4.0
    IL_0027: stloc.s      index3

    IL_0029: br.s         IL_0058
    // start of loop, entry point: IL_0058

      // [57 14 - 57 28]
      IL_002b: ldc.i4.0
      IL_002c: stloc.s      index4

      IL_002e: br.s         IL_0047
      // start of loop, entry point: IL_0047

        // [58 11 - 58 84]
        IL_0030: ldarg.1      // first
        IL_0031: ldarg.2      // second
        IL_0032: ldloc.s      index3
        IL_0034: ldc.i4.1
        IL_0035: add
        IL_0036: ldloc.s      index4
        IL_0038: ldc.i4.1
        IL_0039: add
        IL_003a: ldloc.2      // dp
        IL_003b: call         void Antiplagiarism.LevenshteinCalculator::MakeStep(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, int32, int32, float64[0...,0...])
        IL_0040: nop

        // [57 47 - 57 55]
        IL_0041: ldloc.s      index4
        IL_0043: ldc.i4.1
        IL_0044: add
        IL_0045: stloc.s      index4

        // [57 30 - 57 45]
        IL_0047: ldloc.s      index4
        IL_0049: ldloc.1      // index2
        IL_004a: clt
        IL_004c: stloc.s      V_6

        IL_004e: ldloc.s      V_6
        IL_0050: brtrue.s     IL_0030
      // end of loop

      // [55 45 - 55 53]
      IL_0052: ldloc.s      index3
      IL_0054: ldc.i4.1
      IL_0055: add
      IL_0056: stloc.s      index3

      // [55 28 - 55 43]
      IL_0058: ldloc.s      index3
      IL_005a: ldloc.0      // index1
      IL_005b: clt
      IL_005d: stloc.s      V_7

      IL_005f: ldloc.s      V_7
      IL_0061: brtrue.s     IL_002b
    // end of loop

    // [60 7 - 60 70]
    IL_0063: ldarg.1      // first
    IL_0064: ldarg.2      // second
    IL_0065: ldloc.2      // dp
    IL_0066: ldloc.0      // index1
    IL_0067: ldloc.1      // index2
    IL_0068: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_006d: newobj       instance void Antiplagiarism.ComparisonResult::.ctor(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64)
    IL_0072: stloc.s      V_8
    IL_0074: br.s         IL_0076
    IL_0076: ldloc.s      V_8
    IL_0078: ret

  } // end of method LevenshteinCalculator::GetLevensteinDistance

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
// MVID: 06BC59BF-26D8-4162-B604-5E71099DAA58
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\01_debug_mycompiler.exe
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

  .method private hidebysig static int32
    MakeStep(
      int32[0...,0...] dp,
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second,
      int32 i,
      int32& j,
      class [mscorlib]System.Collections.Generic.List`1<string> res
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64 tokenDistance,
      [1] bool V_1,
      [2] int32 V_2,
      [3] bool V_3
    )

    IL_0000: nop

    // [24 7 - 24 91]
    IL_0001: ldarg.1      // first
    IL_0002: ldarg.3      // i
    IL_0003: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0008: ldarg.2      // second
    IL_0009: ldarg.s      j
    IL_000b: ldind.i4
    IL_000c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0011: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
    IL_0016: stloc.0      // tokenDistance

    // [25 7 - 25 60]
    IL_0017: ldloc.0      // tokenDistance
    IL_0018: ldc.r8       0.0
    IL_0021: beq.s        IL_003d

    IL_0023: ldarg.0      // dp
    IL_0024: ldarg.3      // i
    IL_0025: ldc.i4.1
    IL_0026: add
    IL_0027: ldarg.s      j
    IL_0029: ldind.i4
    IL_002a: call         instance int32 int32[0...,0...]::Get(int32, int32)
    IL_002f: ldarg.0      // dp
    IL_0030: ldarg.3      // i
    IL_0031: ldarg.s      j
    IL_0033: ldind.i4
    IL_0034: call         instance int32 int32[0...,0...]::Get(int32, int32)
    IL_0039: ceq
    IL_003b: br.s         IL_003e
    IL_003d: ldc.i4.0
    IL_003e: stloc.1      // V_1
    IL_003f: ldloc.1      // V_1
    IL_0040: brfalse.s    IL_004b

    // [26 9 - 26 20]
    IL_0042: ldarg.3      // i
    IL_0043: ldc.i4.1
    IL_0044: add
    IL_0045: dup

    IL_0046: starg.s      i
    IL_0048: stloc.2      // V_2
    IL_0049: br.s         IL_007d

    // [27 7 - 27 32]
    IL_004b: ldloc.0      // tokenDistance
    IL_004c: ldc.r8       0.0
    IL_0055: ceq
    IL_0057: stloc.3      // V_3

    IL_0058: ldloc.3      // V_3
    IL_0059: brfalse.s    IL_0071
    IL_005b: nop

    // [29 9 - 29 26]
    IL_005c: ldarg.s      res
    IL_005e: ldarg.1      // first
    IL_005f: ldarg.3      // i
    IL_0060: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0065: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)
    IL_006a: nop

    // [30 9 - 30 12]
    IL_006b: ldarg.3      // i
    IL_006c: ldc.i4.1
    IL_006d: add
    IL_006e: starg.s      i
    IL_0070: nop

    // [32 7 - 32 10]
    IL_0071: ldarg.s      j
    IL_0073: ldarg.s      j
    IL_0075: ldind.i4
    IL_0076: ldc.i4.1
    IL_0077: add
    IL_0078: stind.i4

    // [33 7 - 33 16]
    IL_0079: ldarg.3      // i
    IL_007a: stloc.2      // V_2

    IL_007b: br.s         IL_007d
    IL_007d: ldloc.2      // V_2
    IL_007e: ret

  } // end of method LongestCommonSubsequenceCalculator::MakeStep

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<string>
    RestoreAnswer(
      int32[0...,0...] dp,
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<string> res,
      [1] int32 i,
      [2] int32 j,
      [3] bool V_3,
      [4] class [mscorlib]System.Collections.Generic.List`1<string> V_4
    )

    IL_0000: nop

    // [41 7 - 41 44]
    IL_0001: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0006: stloc.0      // res

    // [42 7 - 42 16]
    IL_0007: ldc.i4.0
    IL_0008: stloc.1      // i

    // [43 7 - 43 16]
    IL_0009: ldc.i4.0
    IL_000a: stloc.2      // j

    IL_000b: br.s         IL_001a
    // start of loop, entry point: IL_001a

      // [45 9 - 45 90]
      IL_000d: ldarg.0      // dp
      IL_000e: ldarg.1      // first
      IL_000f: ldarg.2      // second
      IL_0010: ldloc.1      // i
      IL_0011: ldloca.s     j
      IL_0013: ldloc.0      // res
      IL_0014: call         int32 Antiplagiarism.LongestCommonSubsequenceCalculator::MakeStep(int32[0...,0...], class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, int32, int32&, class [mscorlib]System.Collections.Generic.List`1<string>)
      IL_0019: stloc.1      // i

      // [44 7 - 44 74]
      IL_001a: ldloc.1      // i
      IL_001b: ldarg.1      // first
      IL_001c: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0021: bge.s        IL_0039

      IL_0023: ldloc.2      // j
      IL_0024: ldarg.2      // second
      IL_0025: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_002a: bge.s        IL_0039
      IL_002c: ldarg.0      // dp
      IL_002d: ldloc.1      // i
      IL_002e: ldloc.2      // j
      IL_002f: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0034: ldc.i4.0
      IL_0035: cgt.un
      IL_0037: br.s         IL_003a
      IL_0039: ldc.i4.0
      IL_003a: stloc.3      // V_3
      IL_003b: ldloc.3      // V_3
      IL_003c: brtrue.s     IL_000d
    // end of loop

    // [46 7 - 46 18]
    IL_003e: ldloc.0      // res
    IL_003f: stloc.s      V_4
    IL_0041: br.s         IL_0043
    IL_0043: ldloc.s      V_4
    IL_0045: ret

  } // end of method LongestCommonSubsequenceCalculator::RestoreAnswer

  .method private hidebysig static int32[0...,0...]
    CreateOptimizationTable(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 11
    .locals init (
      [0] int32[0...,0...] optimizationTable,
      [1] int32 index1,
      [2] int32 index2,
      [3] int32 V_3,
      [4] bool V_4,
      [5] bool V_5,
      [6] int32[0...,0...] V_6
    )

    IL_0000: nop

    // [51 7 - 51 76]
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

    // [52 12 - 52 40]
    IL_0017: ldarg.0      // first
    IL_0018: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_001d: ldc.i4.1
    IL_001e: sub
    IL_001f: stloc.1      // index1

    IL_0020: br           IL_00aa
    // start of loop, entry point: IL_00aa

      // [54 14 - 54 43]
      IL_0025: ldarg.1      // second
      IL_0026: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_002b: ldc.i4.1
      IL_002c: sub
      IL_002d: stloc.2      // index2

      IL_002e: br.s         IL_0099
      // start of loop, entry point: IL_0099

        // [55 11 - 55 337]
        IL_0030: ldloc.0      // optimizationTable
        IL_0031: ldloc.1      // index1
        IL_0032: ldloc.2      // index2
        IL_0033: ldarg.0      // first
        IL_0034: ldloc.1      // index1
        IL_0035: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_003a: ldarg.1      // second
        IL_003b: ldloc.2      // index2
        IL_003c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0041: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0046: ldc.r8       0.0
        IL_004f: bgt.s        IL_006c

        IL_0051: ldloc.0      // optimizationTable
        IL_0052: ldloc.1      // index1
        IL_0053: ldloc.2      // index2
        IL_0054: ldloc.0      // optimizationTable
        IL_0055: ldloc.1      // index1
        IL_0056: ldc.i4.1
        IL_0057: add
        IL_0058: ldloc.2      // index2
        IL_0059: ldc.i4.1
        IL_005a: add
        IL_005b: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0060: ldc.i4.1
        IL_0061: add
        IL_0062: dup
        IL_0063: stloc.3      // V_3
        IL_0064: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_0069: ldloc.3      // V_3
        IL_006a: br.s         IL_0090
        IL_006c: ldloc.0      // optimizationTable
        IL_006d: ldloc.1      // index1
        IL_006e: ldloc.2      // index2
        IL_006f: ldloc.0      // optimizationTable
        IL_0070: ldloc.1      // index1
        IL_0071: ldc.i4.1
        IL_0072: add
        IL_0073: ldloc.2      // index2
        IL_0074: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0079: ldloc.0      // optimizationTable
        IL_007a: ldloc.1      // index1
        IL_007b: ldloc.2      // index2
        IL_007c: ldc.i4.1
        IL_007d: add
        IL_007e: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0083: call         int32 [mscorlib]System.Math::Max(int32, int32)
        IL_0088: dup
        IL_0089: stloc.3      // V_3
        IL_008a: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_008f: ldloc.3      // V_3
        IL_0090: call         instance void int32[0...,0...]::Set(int32, int32, int32)

        // [54 58 - 54 66]
        IL_0095: ldloc.2      // index2
        IL_0096: ldc.i4.1
        IL_0097: sub
        IL_0098: stloc.2      // index2

        // [54 45 - 54 56]
        IL_0099: ldloc.2      // index2
        IL_009a: ldc.i4.0
        IL_009b: clt
        IL_009d: ldc.i4.0
        IL_009e: ceq
        IL_00a0: stloc.s      V_4

        IL_00a2: ldloc.s      V_4
        IL_00a4: brtrue.s     IL_0030
      // end of loop

      // [52 55 - 52 63]
      IL_00a6: ldloc.1      // index1
      IL_00a7: ldc.i4.1
      IL_00a8: sub
      IL_00a9: stloc.1      // index1

      // [52 42 - 52 53]
      IL_00aa: ldloc.1      // index1
      IL_00ab: ldc.i4.0
      IL_00ac: clt
      IL_00ae: ldc.i4.0
      IL_00af: ceq
      IL_00b1: stloc.s      V_5

      IL_00b3: ldloc.s      V_5
      IL_00b5: brtrue       IL_0025
    // end of loop

    // [57 7 - 57 32]
    IL_00ba: ldloc.0      // optimizationTable
    IL_00bb: stloc.s      V_6
    IL_00bd: br.s         IL_00bf
    IL_00bf: ldloc.s      V_6
    IL_00c1: ret

  } // end of method LongestCommonSubsequenceCalculator::CreateOptimizationTable
} // end of class Antiplagiarism.LongestCommonSubsequenceCalculator
