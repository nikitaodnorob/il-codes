// Type: Antiplagiarism.LevenshteinCalculator 
// Assembly: Antiplagiarism, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 991DB2DC-0534-476C-98EC-3CF81F4BE9A4
// Location: D:\Windows\Desktop\nikita refactoring\11 antiplagiat\01_odnorob\bin\Release\Antiplagiarism.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Antiplagiarism.LevenshteinCalculator
    extends [mscorlib]System.Object
{

  .method private hidebysig static void
    doStep(
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

  } // end of method LevenshteinCalculator::doStep

  .method public hidebysig instance class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>
    CompareDocsPairwise(
      class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>> docs
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult> comparisonResultList,
      [1] int32 index1,
      [2] int32 index2
    )

    // [27 7 - 27 81]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::.ctor()
    IL_0005: stloc.0      // comparisonResultList

    // [28 12 - 28 26]
    IL_0006: ldc.i4.0
    IL_0007: stloc.1      // index1

    IL_0008: br.s         IL_003b
    // start of loop, entry point: IL_003b

      // [30 14 - 30 37]
      IL_000a: ldloc.1      // index1
      IL_000b: ldc.i4.1
      IL_000c: add
      IL_000d: stloc.2      // index2

      IL_000e: br.s         IL_002e
      // start of loop, entry point: IL_002e

        // [31 11 - 31 91]
        IL_0010: ldloc.0      // comparisonResultList
        IL_0011: ldarg.0      // this
        IL_0012: ldarg.1      // docs
        IL_0013: ldloc.1      // index1
        IL_0014: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0019: ldarg.1      // docs
        IL_001a: ldloc.2      // index2
        IL_001b: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<string>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0020: call         instance class Antiplagiarism.ComparisonResult Antiplagiarism.LevenshteinCalculator::GetLevensteinDistance(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>)
        IL_0025: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::Add(!0/*class Antiplagiarism.ComparisonResult*/)

        // [30 60 - 30 68]
        IL_002a: ldloc.2      // index2
        IL_002b: ldc.i4.1
        IL_002c: add
        IL_002d: stloc.2      // index2

        // [30 39 - 30 58]
        IL_002e: ldloc.2      // index2
        IL_002f: ldarg.1      // docs
        IL_0030: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
        IL_0035: blt.s        IL_0010
      // end of loop

      // [28 49 - 28 57]
      IL_0037: ldloc.1      // index1
      IL_0038: ldc.i4.1
      IL_0039: add
      IL_003a: stloc.1      // index1

      // [28 28 - 28 47]
      IL_003b: ldloc.1      // index1
      IL_003c: ldarg.1      // docs
      IL_003d: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<string>>::get_Count()
      IL_0042: blt.s        IL_000a
    // end of loop

    // [33 7 - 33 35]
    IL_0044: ldloc.0      // comparisonResultList
    IL_0045: ret

  } // end of method LevenshteinCalculator::CompareDocsPairwise

  .method private hidebysig static void
    InitDP(
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second,
      float64[0...,0...] dd
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 index,
      [1] int32 index_V_1
    )

    // [38 12 - 38 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_0012
    // start of loop, entry point: IL_0012

      // [39 9 - 39 38]
      IL_0004: ldarg.2      // dd
      IL_0005: ldloc.0      // index
      IL_0006: ldc.i4.0
      IL_0007: ldloc.0      // index
      IL_0008: conv.r8
      IL_0009: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [38 49 - 38 56]
      IL_000e: ldloc.0      // index
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.0      // index

      // [38 27 - 38 47]
      IL_0012: ldloc.0      // index
      IL_0013: ldarg.0      // first
      IL_0014: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0019: ble.s        IL_0004
    // end of loop

    // [40 12 - 40 25]
    IL_001b: ldc.i4.0
    IL_001c: stloc.1      // index_V_1

    IL_001d: br.s         IL_002d
    // start of loop, entry point: IL_002d

      // [41 9 - 41 38]
      IL_001f: ldarg.2      // dd
      IL_0020: ldc.i4.0
      IL_0021: ldloc.1      // index_V_1
      IL_0022: ldloc.1      // index_V_1
      IL_0023: conv.r8
      IL_0024: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [40 50 - 40 57]
      IL_0029: ldloc.1      // index_V_1
      IL_002a: ldc.i4.1
      IL_002b: add
      IL_002c: stloc.1      // index_V_1

      // [40 27 - 40 48]
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
      [2] float64[0...,0...] numArray,
      [3] int32 count1,
      [4] int32 index3,
      [5] int32 index4
    )

    // [48 7 - 48 31]
    IL_0000: ldarg.1      // first
    IL_0001: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_0006: stloc.3      // count1
    IL_0007: ldarg.2      // second
    IL_0008: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_000d: ldloc.3      // count1
    IL_000e: stloc.0      // index1
    IL_000f: stloc.1      // index2

    // [52 7 - 52 62]
    IL_0010: ldloc.0      // index1
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: ldloc.1      // index2
    IL_0014: ldc.i4.1
    IL_0015: add
    IL_0016: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001b: stloc.2      // numArray

    // [53 7 - 53 60]
    IL_001c: ldarg.1      // first
    IL_001d: ldarg.2      // second
    IL_001e: ldloc.2      // numArray
    IL_001f: call         void Antiplagiarism.LevenshteinCalculator::InitDP(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, float64[0...,0...])

    // [54 12 - 54 26]
    IL_0024: ldc.i4.0
    IL_0025: stloc.s      index3

    IL_0027: br.s         IL_004f
    // start of loop, entry point: IL_004f

      // [56 14 - 56 28]
      IL_0029: ldc.i4.0
      IL_002a: stloc.s      index4

      IL_002c: br.s         IL_0044
      // start of loop, entry point: IL_0044

        // [57 11 - 57 88]
        IL_002e: ldarg.1      // first
        IL_002f: ldarg.2      // second
        IL_0030: ldloc.s      index3
        IL_0032: ldc.i4.1
        IL_0033: add
        IL_0034: ldloc.s      index4
        IL_0036: ldc.i4.1
        IL_0037: add
        IL_0038: ldloc.2      // numArray
        IL_0039: call         void Antiplagiarism.LevenshteinCalculator::doStep(class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, int32, int32, float64[0...,0...])

        // [56 47 - 56 55]
        IL_003e: ldloc.s      index4
        IL_0040: ldc.i4.1
        IL_0041: add
        IL_0042: stloc.s      index4

        // [56 30 - 56 45]
        IL_0044: ldloc.s      index4
        IL_0046: ldloc.1      // index2
        IL_0047: blt.s        IL_002e
      // end of loop

      // [54 45 - 54 53]
      IL_0049: ldloc.s      index3
      IL_004b: ldc.i4.1
      IL_004c: add
      IL_004d: stloc.s      index3

      // [54 28 - 54 43]
      IL_004f: ldloc.s      index3
      IL_0051: ldloc.0      // index1
      IL_0052: blt.s        IL_0029
    // end of loop

    // [59 7 - 59 76]
    IL_0054: ldarg.1      // first
    IL_0055: ldarg.2      // second
    IL_0056: ldloc.2      // numArray
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
// MVID: 991DB2DC-0534-476C-98EC-3CF81F4BE9A4
// Location: D:\Windows\Desktop\nikita refactoring\11 antiplagiat\01_odnorob\bin\Release\Antiplagiarism.exe
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
      int32[0...,0...] dd,
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second,
      int32 i,
      int32& j,
      class [mscorlib]System.Collections.Generic.List`1<string> res
    ) cil managed
  {
    .maxstack 5
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

    IL_0022: ldarg.0      // dd
    IL_0023: ldarg.3      // i
    IL_0024: ldc.i4.1
    IL_0025: add
    IL_0026: ldarg.s      j
    IL_0028: ldind.i4
    IL_0029: call         instance int32 int32[0...,0...]::Get(int32, int32)
    IL_002e: ldarg.0      // dd
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

    // [28 9 - 28 28]
    IL_004d: ldarg.s      res
    IL_004f: ldarg.1      // first
    IL_0050: ldarg.3      // i
    IL_0051: dup
    IL_0052: ldc.i4.1
    IL_0053: add
    IL_0054: starg.s      i
    IL_0056: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_005b: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

    // [29 7 - 29 10]
    IL_0060: ldarg.s      j
    IL_0062: ldarg.s      j
    IL_0064: ldind.i4
    IL_0065: ldc.i4.1
    IL_0066: add
    IL_0067: stind.i4

    // [30 7 - 30 16]
    IL_0068: ldarg.3      // i
    IL_0069: ret

  } // end of method LongestCommonSubsequenceCalculator::MakeStep

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<string>
    RestoreAnswer(
      int32[0...,0...] dd,
      class [mscorlib]System.Collections.Generic.List`1<string> first,
      class [mscorlib]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 i,
      [1] int32 j,
      [2] class [mscorlib]System.Collections.Generic.List`1<string> res
    )

    // [38 7 - 38 16]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // i

    // [39 7 - 39 16]
    IL_0002: ldc.i4.0
    IL_0003: stloc.1      // j

    // [40 7 - 40 44]
    IL_0004: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
    IL_0009: stloc.2      // res

    IL_000a: br.s         IL_0019
    // start of loop, entry point: IL_0019

      // [42 9 - 42 90]
      IL_000c: ldarg.0      // dd
      IL_000d: ldarg.1      // first
      IL_000e: ldarg.2      // second
      IL_000f: ldloc.0      // i
      IL_0010: ldloca.s     j
      IL_0012: ldloc.2      // res
      IL_0013: call         int32 Antiplagiarism.LongestCommonSubsequenceCalculator::MakeStep(int32[0...,0...], class [mscorlib]System.Collections.Generic.List`1<string>, class [mscorlib]System.Collections.Generic.List`1<string>, int32, int32&, class [mscorlib]System.Collections.Generic.List`1<string>)
      IL_0018: stloc.0      // i

      // [41 7 - 41 67]
      IL_0019: ldloc.0      // i
      IL_001a: ldarg.1      // first
      IL_001b: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0020: bge.s        IL_0035

      IL_0022: ldloc.1      // j
      IL_0023: ldarg.2      // second
      IL_0024: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_0029: bge.s        IL_0035
      IL_002b: ldarg.0      // dd
      IL_002c: ldloc.0      // i
      IL_002d: ldloc.1      // j
      IL_002e: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0033: brtrue.s     IL_000c
    // end of loop

    // [43 7 - 43 18]
    IL_0035: ldloc.2      // res
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
      [3] string V_3,
      [4] bool flag,
      [5] int32 V_5
    )

    // [48 7 - 48 76]
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

    // [49 12 - 49 40]
    IL_0016: ldarg.0      // first
    IL_0017: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
    IL_001c: ldc.i4.1
    IL_001d: sub
    IL_001e: stloc.1      // index1

    IL_001f: br           IL_00ac
    // start of loop, entry point: IL_00ac

      // [51 14 - 51 43]
      IL_0024: ldarg.1      // second
      IL_0025: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
      IL_002a: ldc.i4.1
      IL_002b: sub
      IL_002c: stloc.2      // index2

      IL_002d: br.s         IL_00a4
      // start of loop, entry point: IL_00a4

        // [53 11 - 53 100]
        IL_002f: ldarg.0      // first
        IL_0030: ldloc.1      // index1
        IL_0031: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0036: ldarg.1      // second
        IL_0037: ldloc.2      // index2
        IL_0038: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_003d: stloc.3      // V_3
        IL_003e: ldloc.3      // V_3
        IL_003f: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0044: ldc.r8       0.0
        IL_004d: cgt
        IL_004f: stloc.s      flag

        // [54 11 - 54 264]
        IL_0051: ldloc.0      // optimizationTable
        IL_0052: ldloc.1      // index1
        IL_0053: ldloc.2      // index2
        IL_0054: ldloc.s      flag
        IL_0056: brtrue.s     IL_0075

        IL_0058: ldloc.0      // optimizationTable
        IL_0059: ldloc.1      // index1
        IL_005a: ldloc.2      // index2
        IL_005b: ldloc.0      // optimizationTable
        IL_005c: ldloc.1      // index1
        IL_005d: ldc.i4.1
        IL_005e: add
        IL_005f: ldloc.2      // index2
        IL_0060: ldc.i4.1
        IL_0061: add
        IL_0062: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0067: ldc.i4.1
        IL_0068: add
        IL_0069: dup
        IL_006a: stloc.s      V_5
        IL_006c: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_0071: ldloc.s      V_5
        IL_0073: br.s         IL_009b
        IL_0075: ldloc.0      // optimizationTable
        IL_0076: ldloc.1      // index1
        IL_0077: ldloc.2      // index2
        IL_0078: ldloc.0      // optimizationTable
        IL_0079: ldloc.1      // index1
        IL_007a: ldc.i4.1
        IL_007b: add
        IL_007c: ldloc.2      // index2
        IL_007d: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0082: ldloc.0      // optimizationTable
        IL_0083: ldloc.1      // index1
        IL_0084: ldloc.2      // index2
        IL_0085: ldc.i4.1
        IL_0086: add
        IL_0087: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_008c: call         int32 [mscorlib]System.Math::Max(int32, int32)
        IL_0091: dup
        IL_0092: stloc.s      V_5
        IL_0094: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_0099: ldloc.s      V_5
        IL_009b: call         instance void int32[0...,0...]::Set(int32, int32, int32)

        // [51 58 - 51 66]
        IL_00a0: ldloc.2      // index2
        IL_00a1: ldc.i4.1
        IL_00a2: sub
        IL_00a3: stloc.2      // index2

        // [51 45 - 51 56]
        IL_00a4: ldloc.2      // index2
        IL_00a5: ldc.i4.0
        IL_00a6: bge.s        IL_002f
      // end of loop

      // [49 55 - 49 63]
      IL_00a8: ldloc.1      // index1
      IL_00a9: ldc.i4.1
      IL_00aa: sub
      IL_00ab: stloc.1      // index1

      // [49 42 - 49 53]
      IL_00ac: ldloc.1      // index1
      IL_00ad: ldc.i4.0
      IL_00ae: bge          IL_0024
    // end of loop

    // [57 7 - 57 32]
    IL_00b3: ldloc.0      // optimizationTable
    IL_00b4: ret

  } // end of method LongestCommonSubsequenceCalculator::CreateOptimizationTable
} // end of class Antiplagiarism.LongestCommonSubsequenceCalculator
