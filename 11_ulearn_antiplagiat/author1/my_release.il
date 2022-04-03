// Type: Antiplagiarism.LevenshteinCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D784F398-F4F2-4710-94CB-BAB96AFE0070
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\01_release_mycompiler.exe
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

    // [21 7 - 21 99]
    IL_0000: ldarg.0      // first
    IL_0001: ldarg.2      // i
    IL_0002: ldc.i4.1
    IL_0003: sub
    IL_0004: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0009: ldarg.1      // second
    IL_000a: ldarg.3      // j
    IL_000b: ldc.i4.1
    IL_000c: sub
    IL_000d: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0012: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
    IL_0017: stloc.0      // tokenDistance

    // [22 7 - 22 151]
    IL_0018: ldarg.s      dp
    IL_001a: ldarg.2      // i
    IL_001b: ldarg.3      // j
    IL_001c: ldloc.0      // tokenDistance
    IL_001d: ldc.r8       0.0
    IL_0026: bgt.s        IL_0037

    IL_0028: ldarg.s      dp
    IL_002a: ldarg.2      // i
    IL_002b: ldc.i4.1
    IL_002c: sub
    IL_002d: ldarg.3      // j
    IL_002e: ldc.i4.1
    IL_002f: sub
    IL_0030: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0035: br.s         IL_007a
    IL_0037: ldarg.s      dp
    IL_0039: ldarg.2      // i
    IL_003a: ldc.i4.1
    IL_003b: sub
    IL_003c: ldarg.3      // j
    IL_003d: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0042: ldc.r8       1
    IL_004b: add
    IL_004c: ldarg.s      dp
    IL_004e: ldarg.2      // i
    IL_004f: ldarg.3      // j
    IL_0050: ldc.i4.1
    IL_0051: sub
    IL_0052: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0057: ldc.r8       1
    IL_0060: add
    IL_0061: ldarg.s      dp
    IL_0063: ldarg.2      // i
    IL_0064: ldc.i4.1
    IL_0065: sub
    IL_0066: ldarg.3      // j
    IL_0067: ldc.i4.1
    IL_0068: sub
    IL_0069: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_006e: ldloc.0      // tokenDistance
    IL_006f: add
    IL_0070: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_0075: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_007a: call         instance void float64[0...,0...]::Set(int32, int32, float64)
    IL_007f: ret

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
      [2] int32 index2
    )

    // [28 7 - 28 81]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::.ctor()
    IL_0005: stloc.0      // comparisonResultList

    // [29 12 - 29 26]
    IL_0006: ldc.i4.0
    IL_0007: stloc.1      // index1

    IL_0008: br.s         IL_003b
    // start of loop, entry point: IL_003b

      // [31 14 - 31 37]
      IL_000a: ldloc.1      // index1
      IL_000b: ldc.i4.1
      IL_000c: add
      IL_000d: stloc.2      // index2

      IL_000e: br.s         IL_002e
      // start of loop, entry point: IL_002e

        // [32 11 - 32 101]
        IL_0010: ldloc.0      // comparisonResultList
        IL_0011: ldarg.0      // this
        IL_0012: ldarg.1      // documents
        IL_0013: ldloc.1      // index1
        IL_0014: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0019: ldarg.1      // documents
        IL_001a: ldloc.2      // index2
        IL_001b: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0020: call         instance class Antiplagiarism.ComparisonResult Antiplagiarism.LevenshteinCalculator::GetLevensteinDistance(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
        IL_0025: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::Add(!0/*class Antiplagiarism.ComparisonResult*/)

        // [31 65 - 31 73]
        IL_002a: ldloc.2      // index2
        IL_002b: ldc.i4.1
        IL_002c: add
        IL_002d: stloc.2      // index2

        // [31 39 - 31 63]
        IL_002e: ldloc.2      // index2
        IL_002f: ldarg.1      // documents
        IL_0030: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
        IL_0035: blt.s        IL_0010
      // end of loop

      // [29 54 - 29 62]
      IL_0037: ldloc.1      // index1
      IL_0038: ldc.i4.1
      IL_0039: add
      IL_003a: stloc.1      // index1

      // [29 28 - 29 52]
      IL_003b: ldloc.1      // index1
      IL_003c: ldarg.1      // documents
      IL_003d: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
      IL_0042: blt.s        IL_000a
    // end of loop

    // [34 7 - 34 35]
    IL_0044: ldloc.0      // comparisonResultList
    IL_0045: ret

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
      [1] int32 index_V_1
    )

    // [39 12 - 39 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_0012
    // start of loop, entry point: IL_0012

      // [40 9 - 40 38]
      IL_0004: ldarg.2      // dp
      IL_0005: ldloc.0      // index
      IL_0006: ldc.i4.0
      IL_0007: ldloc.0      // index
      IL_0008: conv.r8
      IL_0009: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [39 49 - 39 56]
      IL_000e: ldloc.0      // index
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.0      // index

      // [39 27 - 39 47]
      IL_0012: ldloc.0      // index
      IL_0013: ldarg.0      // first
      IL_0014: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0019: ble.s        IL_0004
    // end of loop

    // [41 12 - 41 25]
    IL_001b: ldc.i4.0
    IL_001c: stloc.1      // index_V_1

    IL_001d: br.s         IL_002d
    // start of loop, entry point: IL_002d

      // [42 9 - 42 38]
      IL_001f: ldarg.2      // dp
      IL_0020: ldc.i4.0
      IL_0021: ldloc.1      // index_V_1
      IL_0022: ldloc.1      // index_V_1
      IL_0023: conv.r8
      IL_0024: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [41 50 - 41 57]
      IL_0029: ldloc.1      // index_V_1
      IL_002a: ldc.i4.1
      IL_002b: add
      IL_002c: stloc.1      // index_V_1

      // [41 27 - 41 48]
      IL_002d: ldloc.1      // index_V_1
      IL_002e: ldarg.1      // second
      IL_002f: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0034: ble.s        IL_001f
    // end of loop
    IL_0036: ret

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
      [5] int32 index4
    )

    // [49 7 - 49 31]
    IL_0000: ldarg.1      // first
    IL_0001: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0006: stloc.3      // count1
    IL_0007: ldarg.2      // second
    IL_0008: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000d: ldloc.3      // count1
    IL_000e: stloc.0      // index1
    IL_000f: stloc.1      // index2

    // [53 7 - 53 56]
    IL_0010: ldloc.0      // index1
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: ldloc.1      // index2
    IL_0014: ldc.i4.1
    IL_0015: add
    IL_0016: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001b: stloc.2      // dp

    // [54 7 - 54 54]
    IL_001c: ldarg.1      // first
    IL_001d: ldarg.2      // second
    IL_001e: ldloc.2      // dp
    IL_001f: call         void Antiplagiarism.LevenshteinCalculator::InitDP(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64[0...,0...])

    // [55 12 - 55 26]
    IL_0024: ldc.i4.0
    IL_0025: stloc.s      index3

    IL_0027: br.s         IL_004f
    // start of loop, entry point: IL_004f

      // [57 14 - 57 28]
      IL_0029: ldc.i4.0
      IL_002a: stloc.s      index4

      IL_002c: br.s         IL_0044
      // start of loop, entry point: IL_0044

        // [58 11 - 58 84]
        IL_002e: ldarg.1      // first
        IL_002f: ldarg.2      // second
        IL_0030: ldloc.s      index3
        IL_0032: ldc.i4.1
        IL_0033: add
        IL_0034: ldloc.s      index4
        IL_0036: ldc.i4.1
        IL_0037: add
        IL_0038: ldloc.2      // dp
        IL_0039: call         void Antiplagiarism.LevenshteinCalculator::MakeStep(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, int32, int32, float64[0...,0...])

        // [57 47 - 57 55]
        IL_003e: ldloc.s      index4
        IL_0040: ldc.i4.1
        IL_0041: add
        IL_0042: stloc.s      index4

        // [57 30 - 57 45]
        IL_0044: ldloc.s      index4
        IL_0046: ldloc.1      // index2
        IL_0047: blt.s        IL_002e
      // end of loop

      // [55 45 - 55 53]
      IL_0049: ldloc.s      index3
      IL_004b: ldc.i4.1
      IL_004c: add
      IL_004d: stloc.s      index3

      // [55 28 - 55 43]
      IL_004f: ldloc.s      index3
      IL_0051: ldloc.0      // index1
      IL_0052: blt.s        IL_0029
    // end of loop

    // [60 7 - 60 70]
    IL_0054: ldarg.1      // first
    IL_0055: ldarg.2      // second
    IL_0056: ldloc.2      // dp
    IL_0057: ldloc.0      // index1
    IL_0058: ldloc.1      // index2
    IL_0059: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_005e: newobj       instance void Antiplagiarism.ComparisonResult::.ctor(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64)
    IL_0063: ret

  } // end of method LevenshteinCalculator::GetLevensteinDistance

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
// MVID: D784F398-F4F2-4710-94CB-BAB96AFE0070
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\11 antiplagiat\01_release_mycompiler.exe
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
      [0] float64 tokenDistance
    )

    // [24 7 - 24 91]
    IL_0000: ldarg.1      // first
    IL_0001: ldarg.3      // i
    IL_0002: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0007: ldarg.2      // second
    IL_0008: ldarg.s      j
    IL_000a: ldind.i4
    IL_000b: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0010: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
    IL_0015: stloc.0      // tokenDistance

    // [25 7 - 25 60]
    IL_0016: ldloc.0      // tokenDistance
    IL_0017: ldc.r8       0.0
    IL_0020: beq.s        IL_0041

    IL_0022: ldarg.0      // dp
    IL_0023: ldarg.3      // i
    IL_0024: ldc.i4.1
    IL_0025: add
    IL_0026: ldarg.s      j
    IL_0028: ldind.i4
    IL_0029: call         instance int32 int32[0...,0...]::Get(int32, int32)
    IL_002e: ldarg.0      // dp
    IL_002f: ldarg.3      // i
    IL_0030: ldarg.s      j
    IL_0032: ldind.i4
    IL_0033: call         instance int32 int32[0...,0...]::Get(int32, int32)
    IL_0038: bne.un.s     IL_0041

    // [26 9 - 26 20]
    IL_003a: ldarg.3      // i
    IL_003b: ldc.i4.1
    IL_003c: add
    IL_003d: dup
    IL_003e: starg.s      i
    IL_0040: ret

    // [27 7 - 27 32]
    IL_0041: ldloc.0      // tokenDistance
    IL_0042: ldc.r8       0.0
    IL_004b: bne.un.s     IL_0060

    // [29 9 - 29 26]
    IL_004d: ldarg.s      res
    IL_004f: ldarg.1      // first
    IL_0050: ldarg.3      // i
    IL_0051: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0056: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

    // [30 9 - 30 12]
    IL_005b: ldarg.3      // i
    IL_005c: ldc.i4.1
    IL_005d: add
    IL_005e: starg.s      i

    // [32 7 - 32 10]
    IL_0060: ldarg.s      j
    IL_0062: ldarg.s      j
    IL_0064: ldind.i4
    IL_0065: ldc.i4.1
    IL_0066: add
    IL_0067: stind.i4

    // [33 7 - 33 16]
    IL_0068: ldarg.3      // i
    IL_0069: ret

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
      [2] int32 j
    )

    // [41 7 - 41 44]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005: stloc.0      // res

    // [42 7 - 42 16]
    IL_0006: ldc.i4.0
    IL_0007: stloc.1      // i

    // [43 7 - 43 16]
    IL_0008: ldc.i4.0
    IL_0009: stloc.2      // j

    IL_000a: br.s         IL_0019
    // start of loop, entry point: IL_0019

      // [45 9 - 45 90]
      IL_000c: ldarg.0      // dp
      IL_000d: ldarg.1      // first
      IL_000e: ldarg.2      // second
      IL_000f: ldloc.1      // i
      IL_0010: ldloca.s     j
      IL_0012: ldloc.0      // res
      IL_0013: call         int32 Antiplagiarism.LongestCommonSubsequenceCalculator::MakeStep(int32[0...,0...], class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, int32, int32&, class [mscorlib]System.Collections.Generic.List`1<string>)
      IL_0018: stloc.1      // i

      // [44 7 - 44 67]
      IL_0019: ldloc.1      // i
      IL_001a: ldarg.1      // first
      IL_001b: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0020: bge.s        IL_0035

      IL_0022: ldloc.2      // j
      IL_0023: ldarg.2      // second
      IL_0024: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0029: bge.s        IL_0035
      IL_002b: ldarg.0      // dp
      IL_002c: ldloc.1      // i
      IL_002d: ldloc.2      // j
      IL_002e: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0033: brtrue.s     IL_000c
    // end of loop

    // [46 7 - 46 18]
    IL_0035: ldloc.0      // res
    IL_0036: ret

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
      [3] int32 V_3
    )

    // [51 7 - 51 76]
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

    // [52 12 - 52 40]
    IL_0016: ldarg.0      // first
    IL_0017: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_001c: ldc.i4.1
    IL_001d: sub
    IL_001e: stloc.1      // index1

    IL_001f: br.s         IL_009d
    // start of loop, entry point: IL_009d

      // [54 14 - 54 43]
      IL_0021: ldarg.1      // second
      IL_0022: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0027: ldc.i4.1
      IL_0028: sub
      IL_0029: stloc.2      // index2

      IL_002a: br.s         IL_0095
      // start of loop, entry point: IL_0095

        // [55 11 - 55 337]
        IL_002c: ldloc.0      // optimizationTable
        IL_002d: ldloc.1      // index1
        IL_002e: ldloc.2      // index2
        IL_002f: ldarg.0      // first
        IL_0030: ldloc.1      // index1
        IL_0031: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0036: ldarg.1      // second
        IL_0037: ldloc.2      // index2
        IL_0038: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_003d: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0042: ldc.r8       0.0
        IL_004b: bgt.s        IL_0068

        IL_004d: ldloc.0      // optimizationTable
        IL_004e: ldloc.1      // index1
        IL_004f: ldloc.2      // index2
        IL_0050: ldloc.0      // optimizationTable
        IL_0051: ldloc.1      // index1
        IL_0052: ldc.i4.1
        IL_0053: add
        IL_0054: ldloc.2      // index2
        IL_0055: ldc.i4.1
        IL_0056: add
        IL_0057: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_005c: ldc.i4.1
        IL_005d: add
        IL_005e: dup
        IL_005f: stloc.3      // V_3
        IL_0060: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_0065: ldloc.3      // V_3
        IL_0066: br.s         IL_008c
        IL_0068: ldloc.0      // optimizationTable
        IL_0069: ldloc.1      // index1
        IL_006a: ldloc.2      // index2
        IL_006b: ldloc.0      // optimizationTable
        IL_006c: ldloc.1      // index1
        IL_006d: ldc.i4.1
        IL_006e: add
        IL_006f: ldloc.2      // index2
        IL_0070: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0075: ldloc.0      // optimizationTable
        IL_0076: ldloc.1      // index1
        IL_0077: ldloc.2      // index2
        IL_0078: ldc.i4.1
        IL_0079: add
        IL_007a: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_007f: call         int32 [mscorlib]System.Math::Max(int32, int32)
        IL_0084: dup
        IL_0085: stloc.3      // V_3
        IL_0086: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_008b: ldloc.3      // V_3
        IL_008c: call         instance void int32[0...,0...]::Set(int32, int32, int32)

        // [54 58 - 54 66]
        IL_0091: ldloc.2      // index2
        IL_0092: ldc.i4.1
        IL_0093: sub
        IL_0094: stloc.2      // index2

        // [54 45 - 54 56]
        IL_0095: ldloc.2      // index2
        IL_0096: ldc.i4.0
        IL_0097: bge.s        IL_002c
      // end of loop

      // [52 55 - 52 63]
      IL_0099: ldloc.1      // index1
      IL_009a: ldc.i4.1
      IL_009b: sub
      IL_009c: stloc.1      // index1

      // [52 42 - 52 53]
      IL_009d: ldloc.1      // index1
      IL_009e: ldc.i4.0
      IL_009f: bge.s        IL_0021
    // end of loop

    // [57 7 - 57 32]
    IL_00a1: ldloc.0      // optimizationTable
    IL_00a2: ret

  } // end of method LongestCommonSubsequenceCalculator::CreateOptimizationTable
} // end of class Antiplagiarism.LongestCommonSubsequenceCalculator
