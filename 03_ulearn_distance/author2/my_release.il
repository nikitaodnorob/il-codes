
// Type: DistanceTask.DistanceTask 
// Assembly: Distance, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: E3FE39EF-C889-46BF-B7AC-61540C4CBE3E
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\03 distance\02_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  DistanceTask.DistanceTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64
    GetDistanceToSegment(
      float64 ax,
      float64 ay,
      float64 bx,
      float64 by,
      float64 x,
      float64 y
    ) cil managed
  {
    .maxstack 9
    .locals init (
      [0] float64 num,
      [1] float64 a1,
      [2] float64 a2,
      [3] float64 a3,
      [4] float64 scalarVectors1,
      [5] float64 scalarVectors2
    )

    // [21 7 - 21 23]
    IL_0000: ldc.r8       2
    IL_0009: stloc.0      // num

    // [25 7 - 25 88]
    IL_000a: ldarg.0      // ax
    IL_000b: ldarg.1      // ay
    IL_000c: ldarg.2      // bx
    IL_000d: ldarg.3      // by
    IL_000e: ldarg.s      x
    IL_0010: ldarg.s      y
    IL_0012: ldloca.s     a1
    IL_0014: ldloca.s     a2
    IL_0016: ldloca.s     a3
    IL_0018: call         void DistanceTask.DistanceTask::NewMethod(float64, float64, float64, float64, float64, float64, float64&, float64&, float64&)

    // [28 7 - 28 111]
    IL_001d: ldarg.0      // ax
    IL_001e: ldarg.1      // ay
    IL_001f: ldarg.2      // bx
    IL_0020: ldarg.3      // by
    IL_0021: ldarg.s      x
    IL_0023: ldarg.s      y
    IL_0025: ldloca.s     scalarVectors1
    IL_0027: ldloca.s     scalarVectors2
    IL_0029: call         void DistanceTask.DistanceTask::GetScalarVectors(float64, float64, float64, float64, float64, float64, float64&, float64&)

    // [29 7 - 29 21]
    IL_002e: ldloc.2      // a2
    IL_002f: ldc.r8       0.0
    IL_0038: bne.un.s     IL_003c

    // [30 9 - 30 19]
    IL_003a: ldloc.1      // a1
    IL_003b: ret

    // [31 7 - 31 58]
    IL_003c: ldloc.s      scalarVectors1
    IL_003e: ldc.r8       0.0
    IL_0047: blt.un.s     IL_008a

    IL_0049: ldloc.s      scalarVectors2
    IL_004b: ldc.r8       0.0
    IL_0054: blt.un.s     IL_008a

    // [32 9 - 32 159]
    IL_0056: ldloc.0      // num
    IL_0057: ldloc.1      // a1
    IL_0058: ldloc.3      // a3
    IL_0059: add
    IL_005a: ldloc.2      // a2
    IL_005b: add
    IL_005c: ldloc.0      // num
    IL_005d: div
    IL_005e: ldloc.1      // a1
    IL_005f: ldloc.3      // a3
    IL_0060: add
    IL_0061: ldloc.2      // a2
    IL_0062: add
    IL_0063: ldloc.0      // num
    IL_0064: div
    IL_0065: ldloc.1      // a1
    IL_0066: sub
    IL_0067: mul
    IL_0068: ldloc.1      // a1
    IL_0069: ldloc.3      // a3
    IL_006a: add
    IL_006b: ldloc.2      // a2
    IL_006c: add
    IL_006d: ldloc.0      // num
    IL_006e: div
    IL_006f: ldloc.3      // a3
    IL_0070: sub
    IL_0071: mul
    IL_0072: ldloc.1      // a1
    IL_0073: ldloc.3      // a3
    IL_0074: add
    IL_0075: ldloc.2      // a2
    IL_0076: add
    IL_0077: ldloc.0      // num
    IL_0078: div
    IL_0079: ldloc.2      // a2
    IL_007a: sub
    IL_007b: mul
    IL_007c: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0081: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0086: mul
    IL_0087: ldloc.2      // a2
    IL_0088: div
    IL_0089: ret

    // [33 7 - 33 84]
    IL_008a: ldloc.s      scalarVectors1
    IL_008c: ldc.r8       0.0
    IL_0095: blt.s        IL_00a4

    IL_0097: ldloc.s      scalarVectors2
    IL_0099: ldc.r8       0.0
    IL_00a2: bge.un.s     IL_00ac
    IL_00a4: ldloc.1      // a1
    IL_00a5: ldloc.3      // a3
    IL_00a6: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_00ab: ret
    IL_00ac: ldc.r8       0.0
    IL_00b5: ret

  } // end of method DistanceTask::GetDistanceToSegment

  .method private hidebysig static void
    GetScalarVectors(
      float64 ax,
      float64 ay,
      float64 bx,
      float64 by,
      float64 x,
      float64 y,
      [out] float64& scalarVectors1,
      [out] float64& scalarVectors2
    ) cil managed
  {
    .maxstack 8

    // [46 7 - 46 67]
    IL_0000: ldarg.s      scalarVectors1
    IL_0002: ldarg.s      x
    IL_0004: ldarg.0      // ax
    IL_0005: sub
    IL_0006: ldarg.2      // bx
    IL_0007: ldarg.0      // ax
    IL_0008: sub
    IL_0009: mul
    IL_000a: ldarg.s      y
    IL_000c: ldarg.1      // ay
    IL_000d: sub
    IL_000e: ldarg.3      // by
    IL_000f: ldarg.1      // ay
    IL_0010: sub
    IL_0011: mul
    IL_0012: add
    IL_0013: stind.r8

    // [47 7 - 47 69]
    IL_0014: ldarg.s      scalarVectors2
    IL_0016: ldarg.s      x
    IL_0018: ldarg.2      // bx
    IL_0019: sub
    IL_001a: ldarg.2      // bx
    IL_001b: neg
    IL_001c: ldarg.0      // ax
    IL_001d: add
    IL_001e: mul
    IL_001f: ldarg.s      y
    IL_0021: ldarg.3      // by
    IL_0022: sub
    IL_0023: ldarg.3      // by
    IL_0024: neg
    IL_0025: ldarg.1      // ay
    IL_0026: add
    IL_0027: mul
    IL_0028: add
    IL_0029: stind.r8
    IL_002a: ret

  } // end of method DistanceTask::GetScalarVectors

  .method private hidebysig static void
    NewMethod(
      float64 ax,
      float64 ay,
      float64 bx,
      float64 by,
      float64 x,
      float64 y,
      [out] float64& a1,
      [out] float64& a2,
      [out] float64& a3
    ) cil managed
  {
    .maxstack 5

    // [61 7 - 61 64]
    IL_0000: ldarg.s      a1
    IL_0002: ldarg.s      x
    IL_0004: ldarg.0      // ax
    IL_0005: sub
    IL_0006: ldarg.s      x
    IL_0008: ldarg.0      // ax
    IL_0009: sub
    IL_000a: mul
    IL_000b: ldarg.s      y
    IL_000d: ldarg.1      // ay
    IL_000e: sub
    IL_000f: ldarg.s      y
    IL_0011: ldarg.1      // ay
    IL_0012: sub
    IL_0013: mul
    IL_0014: add
    IL_0015: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_001a: stind.r8

    // [62 7 - 62 68]
    IL_001b: ldarg.s      a2
    IL_001d: ldarg.0      // ax
    IL_001e: ldarg.2      // bx
    IL_001f: sub
    IL_0020: ldarg.0      // ax
    IL_0021: ldarg.2      // bx
    IL_0022: sub
    IL_0023: mul
    IL_0024: ldarg.1      // ay
    IL_0025: ldarg.3      // by
    IL_0026: sub
    IL_0027: ldarg.1      // ay
    IL_0028: ldarg.3      // by
    IL_0029: sub
    IL_002a: mul
    IL_002b: add
    IL_002c: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0031: stind.r8

    // [63 7 - 63 64]
    IL_0032: ldarg.s      a3
    IL_0034: ldarg.s      x
    IL_0036: ldarg.2      // bx
    IL_0037: sub
    IL_0038: ldarg.s      x
    IL_003a: ldarg.2      // bx
    IL_003b: sub
    IL_003c: mul
    IL_003d: ldarg.s      y
    IL_003f: ldarg.3      // by
    IL_0040: sub
    IL_0041: ldarg.s      y
    IL_0043: ldarg.3      // by
    IL_0044: sub
    IL_0045: mul
    IL_0046: add
    IL_0047: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_004c: stind.r8
    IL_004d: ret

  } // end of method DistanceTask::NewMethod
} // end of class DistanceTask.DistanceTask
