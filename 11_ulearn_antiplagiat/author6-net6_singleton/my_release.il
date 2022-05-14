// Type: Antiplagiarism.LevenshteinCalculator 
// Assembly: Antiplagiarism-Author6-Net6_Singleton, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 6EBB9E11-AEEE-46A4-BFE7-E0562D99F7C5
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/11_ulearn_antiplagiat/author6-net6_singleton/bin/Release/net6.0/Antiplagiarism-Author6-Net6_Singleton.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/11_ulearn_antiplagiat/author6-net6_singleton/bin/Release/net6.0/Antiplagiarism-Author6-Net6_Singleton.pdb

.class public auto ansi beforefieldinit
  Antiplagiarism.LevenshteinCalculator
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private static class Antiplagiarism.LevenshteinCalculator 'instance'
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 02 00 00 ) // .....
      // unsigned int8(2) // 0x02

  .method private hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    // [17 9 - 17 40]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [17 43 - 17 44]
    IL_0006: ret

  } // end of method LevenshteinCalculator::.ctor

  .method public hidebysig static class Antiplagiarism.LevenshteinCalculator
    GetInstance() cil managed
  {
    .maxstack 8

    // [21 13 - 21 34]
    IL_0000: ldsfld       class Antiplagiarism.LevenshteinCalculator Antiplagiarism.LevenshteinCalculator::'instance'
    IL_0005: brtrue.s     IL_0011

    // [21 35 - 21 74]
    IL_0007: newobj       instance void Antiplagiarism.LevenshteinCalculator::.ctor()
    IL_000c: stsfld       class Antiplagiarism.LevenshteinCalculator Antiplagiarism.LevenshteinCalculator::'instance'

    // [22 13 - 22 29]
    IL_0011: ldsfld       class Antiplagiarism.LevenshteinCalculator Antiplagiarism.LevenshteinCalculator::'instance'
    IL_0016: ret

  } // end of method LevenshteinCalculator::GetInstance

  .method private hidebysig static void
    MakeStep(
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second,
      int32 i,
      int32 j,
      float64[0...,0...] dp
    ) cil managed
  {
    .maxstack 9
    .locals init (
      [0] float64 d
    )

    // [27 13 - 27 94]
    IL_0000: ldarg.0      // first
    IL_0001: ldarg.2      // i
    IL_0002: ldc.i4.1
    IL_0003: sub
    IL_0004: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0009: ldarg.1      // second
    IL_000a: ldarg.3      // j
    IL_000b: ldc.i4.1
    IL_000c: sub
    IL_000d: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0012: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
    IL_0017: stloc.0      // d

    // [29 13 - 34 36]
    IL_0018: ldarg.s      dp
    IL_001a: ldarg.2      // i
    IL_001b: ldarg.3      // j
    IL_001c: ldloc.0      // d
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
    IL_006e: ldloc.0      // d
    IL_006f: add
    IL_0070: call         float64 [System.Runtime]System.Math::Min(float64, float64)
    IL_0075: call         float64 [System.Runtime]System.Math::Min(float64, float64)
    IL_007a: call         instance void float64[0...,0...]::Set(int32, int32, float64)

    // [35 9 - 35 10]
    IL_007f: ret

  } // end of method LevenshteinCalculator::MakeStep

  .method public hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>
    CompareDocumentsPairwise(
      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<string>> documents
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] class [System.Collections]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult> result,
      [1] int32 i,
      [2] int32 j
    )

    // [39 13 - 39 55]
    IL_0000: newobj       instance void class [System.Collections]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::.ctor()
    IL_0005: stloc.0      // result

    // [40 18 - 40 27]
    IL_0006: ldc.i4.0
    IL_0007: stloc.1      // i

    IL_0008: br.s         IL_003b
    // start of loop, entry point: IL_003b

      // [41 22 - 41 35]
      IL_000a: ldloc.1      // i
      IL_000b: ldc.i4.1
      IL_000c: add
      IL_000d: stloc.2      // j

      IL_000e: br.s         IL_002e
      // start of loop, entry point: IL_002e

        // [42 21 - 42 83]
        IL_0010: ldloc.0      // result
        IL_0011: ldarg.0      // this
        IL_0012: ldarg.1      // documents
        IL_0013: ldloc.1      // i
        IL_0014: callvirt     instance !0/*class [System.Collections]System.Collections.Generic.List`1<string>*/ class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0019: ldarg.1      // documents
        IL_001a: ldloc.2      // j
        IL_001b: callvirt     instance !0/*class [System.Collections]System.Collections.Generic.List`1<string>*/ class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<string>>::get_Item(int32)
        IL_0020: call         instance class Antiplagiarism.ComparisonResult Antiplagiarism.LevenshteinCalculator::GetLevensteinDistance(class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>)
        IL_0025: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<class Antiplagiarism.ComparisonResult>::Add(!0/*class Antiplagiarism.ComparisonResult*/)

        // [41 58 - 41 61]
        IL_002a: ldloc.2      // j
        IL_002b: ldc.i4.1
        IL_002c: add
        IL_002d: stloc.2      // j

        // [41 37 - 41 56]
        IL_002e: ldloc.2      // j
        IL_002f: ldarg.1      // documents
        IL_0030: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<string>>::get_Count()
        IL_0035: blt.s        IL_0010
      // end of loop

      // [40 50 - 40 53]
      IL_0037: ldloc.1      // i
      IL_0038: ldc.i4.1
      IL_0039: add
      IL_003a: stloc.1      // i

      // [40 29 - 40 48]
      IL_003b: ldloc.1      // i
      IL_003c: ldarg.1      // documents
      IL_003d: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<string>>::get_Count()
      IL_0042: blt.s        IL_000a
    // end of loop

    // [43 13 - 43 27]
    IL_0044: ldloc.0      // result
    IL_0045: ret

  } // end of method LevenshteinCalculator::CompareDocumentsPairwise

  .method private hidebysig static void
    InitDP(
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second,
      float64[0...,0...] dp
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 i,
      [1] int32 j
    )

    // [48 18 - 48 27]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // i

    IL_0002: br.s         IL_0012
    // start of loop, entry point: IL_0012

      // [49 17 - 49 30]
      IL_0004: ldarg.2      // dp
      IL_0005: ldloc.0      // i
      IL_0006: ldc.i4.0
      IL_0007: ldloc.0      // i
      IL_0008: conv.r8
      IL_0009: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [48 47 - 48 50]
      IL_000e: ldloc.0      // i
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.0      // i

      // [48 29 - 48 45]
      IL_0012: ldloc.0      // i
      IL_0013: ldarg.0      // first
      IL_0014: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
      IL_0019: ble.s        IL_0004
    // end of loop

    // [50 18 - 50 27]
    IL_001b: ldc.i4.0
    IL_001c: stloc.1      // j

    IL_001d: br.s         IL_002d
    // start of loop, entry point: IL_002d

      // [51 17 - 51 30]
      IL_001f: ldarg.2      // dp
      IL_0020: ldc.i4.0
      IL_0021: ldloc.1      // j
      IL_0022: ldloc.1      // j
      IL_0023: conv.r8
      IL_0024: call         instance void float64[0...,0...]::Set(int32, int32, float64)

      // [50 48 - 50 51]
      IL_0029: ldloc.1      // j
      IL_002a: ldc.i4.1
      IL_002b: add
      IL_002c: stloc.1      // j

      // [50 29 - 50 46]
      IL_002d: ldloc.1      // j
      IL_002e: ldarg.1      // second
      IL_002f: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
      IL_0034: ble.s        IL_001f
    // end of loop

    // [52 9 - 52 10]
    IL_0036: ret

  } // end of method LevenshteinCalculator::InitDP

  .method public hidebysig instance class Antiplagiarism.ComparisonResult
    GetLevensteinDistance(
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] int32 cnt1,
      [1] int32 cnt2,
      [2] float64[0...,0...] dp,
      [3] int32 V_3,
      [4] int32 i,
      [5] int32 j
    )

    // [56 13 - 56 60]
    IL_0000: ldarg.1      // first
    IL_0001: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0006: stloc.3      // V_3
    IL_0007: ldarg.2      // second
    IL_0008: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_000d: ldloc.3      // V_3
    IL_000e: stloc.0      // cnt1
    IL_000f: stloc.1      // cnt2

    // [57 13 - 57 53]
    IL_0010: ldloc.0      // cnt1
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: ldloc.1      // cnt2
    IL_0014: ldc.i4.1
    IL_0015: add
    IL_0016: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001b: stloc.2      // dp

    // [58 13 - 58 39]
    IL_001c: ldarg.1      // first
    IL_001d: ldarg.2      // second
    IL_001e: ldloc.2      // dp
    IL_001f: call         void Antiplagiarism.LevenshteinCalculator::InitDP(class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>, float64[0...,0...])

    // [60 18 - 60 27]
    IL_0024: ldc.i4.0
    IL_0025: stloc.s      i

    IL_0027: br.s         IL_004f
    // start of loop, entry point: IL_004f

      // [61 22 - 61 31]
      IL_0029: ldc.i4.0
      IL_002a: stloc.s      j

      IL_002c: br.s         IL_0044
      // start of loop, entry point: IL_0044

        // [62 21 - 62 63]
        IL_002e: ldarg.1      // first
        IL_002f: ldarg.2      // second
        IL_0030: ldloc.s      i
        IL_0032: ldc.i4.1
        IL_0033: add
        IL_0034: ldloc.s      j
        IL_0036: ldc.i4.1
        IL_0037: add
        IL_0038: ldloc.2      // dp
        IL_0039: call         void Antiplagiarism.LevenshteinCalculator::MakeStep(class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>, int32, int32, float64[0...,0...])

        // [61 43 - 61 46]
        IL_003e: ldloc.s      j
        IL_0040: ldc.i4.1
        IL_0041: add
        IL_0042: stloc.s      j

        // [61 33 - 61 41]
        IL_0044: ldloc.s      j
        IL_0046: ldloc.1      // cnt2
        IL_0047: blt.s        IL_002e
      // end of loop

      // [60 39 - 60 42]
      IL_0049: ldloc.s      i
      IL_004b: ldc.i4.1
      IL_004c: add
      IL_004d: stloc.s      i

      // [60 29 - 60 37]
      IL_004f: ldloc.s      i
      IL_0051: ldloc.0      // cnt1
      IL_0052: blt.s        IL_0029
    // end of loop

    // [64 13 - 64 72]
    IL_0054: ldarg.1      // first
    IL_0055: ldarg.2      // second
    IL_0056: ldloc.2      // dp
    IL_0057: ldloc.0      // cnt1
    IL_0058: ldloc.1      // cnt2
    IL_0059: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_005e: newobj       instance void Antiplagiarism.ComparisonResult::.ctor(class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>, float64)
    IL_0063: ret

  } // end of method LevenshteinCalculator::GetLevensteinDistance
} // end of class Antiplagiarism.LevenshteinCalculator

// Type: Antiplagiarism.LongestCommonSubsequenceCalculator 
// Assembly: Antiplagiarism-Author6-Net6_Singleton, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 6EBB9E11-AEEE-46A4-BFE7-E0562D99F7C5
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/11_ulearn_antiplagiat/author6-net6_singleton/bin/Release/net6.0/Antiplagiarism-Author6-Net6_Singleton.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/11_ulearn_antiplagiat/author6-net6_singleton/bin/Release/net6.0/Antiplagiarism-Author6-Net6_Singleton.pdb

.class public auto ansi beforefieldinit
  Antiplagiarism.LongestCommonSubsequenceCalculator
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private static class Antiplagiarism.LongestCommonSubsequenceCalculator 'instance'
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 02 00 00 ) // .....
      // unsigned int8(2) // 0x02

  .method private hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    // [10 9 - 10 53]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [10 56 - 10 57]
    IL_0006: ret

  } // end of method LongestCommonSubsequenceCalculator::.ctor

  .method public hidebysig static class Antiplagiarism.LongestCommonSubsequenceCalculator
    GetInstance() cil managed
  {
    .maxstack 8

    // [14 13 - 14 34]
    IL_0000: ldsfld       class Antiplagiarism.LongestCommonSubsequenceCalculator Antiplagiarism.LongestCommonSubsequenceCalculator::'instance'
    IL_0005: brtrue.s     IL_0011

    // [14 35 - 14 87]
    IL_0007: newobj       instance void Antiplagiarism.LongestCommonSubsequenceCalculator::.ctor()
    IL_000c: stsfld       class Antiplagiarism.LongestCommonSubsequenceCalculator Antiplagiarism.LongestCommonSubsequenceCalculator::'instance'

    // [15 13 - 15 29]
    IL_0011: ldsfld       class Antiplagiarism.LongestCommonSubsequenceCalculator Antiplagiarism.LongestCommonSubsequenceCalculator::'instance'
    IL_0016: ret

  } // end of method LongestCommonSubsequenceCalculator::GetInstance

  .method public hidebysig static class [System.Collections]System.Collections.Generic.List`1<string>
    Calculate(
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 8

    // [20 13 - 20 61]
    IL_0000: ldarg.0      // first
    IL_0001: ldarg.1      // second
    IL_0002: call         int32[0...,0...] Antiplagiarism.LongestCommonSubsequenceCalculator::CreateOptimizationTable(class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>)

    // [21 13 - 21 53]
    IL_0007: ldarg.0      // first
    IL_0008: ldarg.1      // second
    IL_0009: call         class [System.Collections]System.Collections.Generic.List`1<string> Antiplagiarism.LongestCommonSubsequenceCalculator::RestoreAnswer(int32[0...,0...], class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>)
    IL_000e: ret

  } // end of method LongestCommonSubsequenceCalculator::Calculate

  .method private hidebysig static int32
    MakeStep(
      int32[0...,0...] dp,
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second,
      int32 i,
      int32& j,
      class [System.Collections]System.Collections.Generic.List`1<string> res
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64 d
    )

    // [27 13 - 27 86]
    IL_0000: ldarg.1      // first
    IL_0001: ldarg.3      // i
    IL_0002: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0007: ldarg.2      // second
    IL_0008: ldarg.s      j
    IL_000a: ldind.i4
    IL_000b: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0010: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
    IL_0015: stloc.0      // d

    // [28 13 - 28 52]
    IL_0016: ldloc.0      // d
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

    // [29 17 - 29 28]
    IL_003a: ldarg.3      // i
    IL_003b: ldc.i4.1
    IL_003c: add
    IL_003d: dup
    IL_003e: starg.s      i
    IL_0040: ret

    // [31 13 - 31 24]
    IL_0041: ldloc.0      // d
    IL_0042: ldc.r8       0.0
    IL_004b: bne.un.s     IL_0060

    // [33 17 - 33 35]
    IL_004d: ldarg.s      res
    IL_004f: ldarg.1      // first
    IL_0050: ldarg.3      // i
    IL_0051: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0056: callvirt     instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0/*string*/)

    // [34 17 - 34 21]
    IL_005b: ldarg.3      // i
    IL_005c: ldc.i4.1
    IL_005d: add
    IL_005e: starg.s      i

    // [37 13 - 37 17]
    IL_0060: ldarg.s      j
    IL_0062: ldarg.s      j
    IL_0064: ldind.i4
    IL_0065: ldc.i4.1
    IL_0066: add
    IL_0067: stind.i4

    // [38 13 - 38 22]
    IL_0068: ldarg.3      // i
    IL_0069: ret

  } // end of method LongestCommonSubsequenceCalculator::MakeStep

  .method private hidebysig static class [System.Collections]System.Collections.Generic.List`1<string>
    RestoreAnswer(
      int32[0...,0...] dp,
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] class [System.Collections]System.Collections.Generic.List`1<string> result,
      [1] int32 i,
      [2] int32 j
    )

    // [43 13 - 43 54]
    IL_0000: newobj       instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005: stloc.0      // result

    // [44 13 - 44 22]
    IL_0006: ldc.i4.0
    IL_0007: stloc.1      // i

    // [44 24 - 44 29]
    IL_0008: ldc.i4.0
    IL_0009: stloc.2      // j

    IL_000a: br.s         IL_0019
    // start of loop, entry point: IL_0019

      // [46 17 - 46 67]
      IL_000c: ldarg.0      // dp
      IL_000d: ldarg.1      // first
      IL_000e: ldarg.2      // second
      IL_000f: ldloc.1      // i
      IL_0010: ldloca.s     j
      IL_0012: ldloc.0      // result
      IL_0013: call         int32 Antiplagiarism.LongestCommonSubsequenceCalculator::MakeStep(int32[0...,0...], class [System.Collections]System.Collections.Generic.List`1<string>, class [System.Collections]System.Collections.Generic.List`1<string>, int32, int32&, class [System.Collections]System.Collections.Generic.List`1<string>)
      IL_0018: stloc.1      // i

      // [45 13 - 45 73]
      IL_0019: ldloc.1      // i
      IL_001a: ldarg.1      // first
      IL_001b: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
      IL_0020: bge.s        IL_0035
      IL_0022: ldloc.2      // j
      IL_0023: ldarg.2      // second
      IL_0024: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
      IL_0029: bge.s        IL_0035
      IL_002b: ldarg.0      // dp
      IL_002c: ldloc.1      // i
      IL_002d: ldloc.2      // j
      IL_002e: call         instance int32 int32[0...,0...]::Get(int32, int32)
      IL_0033: brtrue.s     IL_000c
    // end of loop

    // [48 13 - 48 27]
    IL_0035: ldloc.0      // result
    IL_0036: ret

  } // end of method LongestCommonSubsequenceCalculator::RestoreAnswer

  .method private hidebysig static int32[0...,0...]
    CreateOptimizationTable(
      class [System.Collections]System.Collections.Generic.List`1<string> first,
      class [System.Collections]System.Collections.Generic.List`1<string> second
    ) cil managed
  {
    .maxstack 11
    .locals init (
      [0] int32[0...,0...] dp,
      [1] int32 i,
      [2] int32 j,
      [3] int32 V_3
    )

    // [53 13 - 53 65]
    IL_0000: ldarg.0      // first
    IL_0001: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0006: ldc.i4.1
    IL_0007: add
    IL_0008: ldarg.1      // second
    IL_0009: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_000e: ldc.i4.1
    IL_000f: add
    IL_0010: newobj       instance void int32[0...,0...]::.ctor(int32, int32)
    IL_0015: stloc.0      // dp

    // [55 18 - 55 41]
    IL_0016: ldarg.0      // first
    IL_0017: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_001c: ldc.i4.1
    IL_001d: sub
    IL_001e: stloc.1      // i

    IL_001f: br.s         IL_009d
    // start of loop, entry point: IL_009d

      // [56 22 - 56 46]
      IL_0021: ldarg.1      // second
      IL_0022: callvirt     instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
      IL_0027: ldc.i4.1
      IL_0028: sub
      IL_0029: stloc.2      // j

      IL_002a: br.s         IL_0095
      // start of loop, entry point: IL_0095

        // [57 21 - 59 59]
        IL_002c: ldloc.0      // dp
        IL_002d: ldloc.1      // i
        IL_002e: ldloc.2      // j
        IL_002f: ldarg.0      // first
        IL_0030: ldloc.1      // i
        IL_0031: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_0036: ldarg.1      // second
        IL_0037: ldloc.2      // j
        IL_0038: callvirt     instance !0/*string*/ class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
        IL_003d: call         float64 Antiplagiarism.TokenDistanceCalculator::GetTokenDistance(string, string)
        IL_0042: ldc.r8       0.0
        IL_004b: bgt.s        IL_0068
        IL_004d: ldloc.0      // dp
        IL_004e: ldloc.1      // i
        IL_004f: ldloc.2      // j
        IL_0050: ldloc.0      // dp
        IL_0051: ldloc.1      // i
        IL_0052: ldc.i4.1
        IL_0053: add
        IL_0054: ldloc.2      // j
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
        IL_0068: ldloc.0      // dp
        IL_0069: ldloc.1      // i
        IL_006a: ldloc.2      // j
        IL_006b: ldloc.0      // dp
        IL_006c: ldloc.1      // i
        IL_006d: ldc.i4.1
        IL_006e: add
        IL_006f: ldloc.2      // j
        IL_0070: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_0075: ldloc.0      // dp
        IL_0076: ldloc.1      // i
        IL_0077: ldloc.2      // j
        IL_0078: ldc.i4.1
        IL_0079: add
        IL_007a: call         instance int32 int32[0...,0...]::Get(int32, int32)
        IL_007f: call         int32 [System.Runtime]System.Math::Max(int32, int32)
        IL_0084: dup
        IL_0085: stloc.3      // V_3
        IL_0086: call         instance void int32[0...,0...]::Set(int32, int32, int32)
        IL_008b: ldloc.3      // V_3
        IL_008c: call         instance void int32[0...,0...]::Set(int32, int32, int32)

        // [56 56 - 56 59]
        IL_0091: ldloc.2      // j
        IL_0092: ldc.i4.1
        IL_0093: sub
        IL_0094: stloc.2      // j

        // [56 48 - 56 54]
        IL_0095: ldloc.2      // j
        IL_0096: ldc.i4.0
        IL_0097: bge.s        IL_002c
      // end of loop

      // [55 51 - 55 54]
      IL_0099: ldloc.1      // i
      IL_009a: ldc.i4.1
      IL_009b: sub
      IL_009c: stloc.1      // i

      // [55 43 - 55 49]
      IL_009d: ldloc.1      // i
      IL_009e: ldc.i4.0
      IL_009f: bge.s        IL_0021
    // end of loop

    // [61 13 - 61 23]
    IL_00a1: ldloc.0      // dp
    IL_00a2: ret

  } // end of method LongestCommonSubsequenceCalculator::CreateOptimizationTable
} // end of class Antiplagiarism.LongestCommonSubsequenceCalculator
