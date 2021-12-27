// Type: DistanceTask.DistanceTask 
// Assembly: Distance, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 0E0916DB-DE76-43D0-9002-F485451A97F4
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\03 distance\02_debug_himcompiler.exe
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
      [5] float64 scalarVectors2,
      [6] bool V_6,
      [7] float64 V_7,
      [8] bool V_8,
      [9] bool V_9
    )

    IL_0000: nop

    // [21 7 - 21 23]
    IL_0001: ldc.r8       2
    IL_000a: stloc.0      // num

    // [25 7 - 25 88]
    IL_000b: ldarg.0      // ax
    IL_000c: ldarg.1      // ay
    IL_000d: ldarg.2      // bx
    IL_000e: ldarg.3      // by
    IL_000f: ldarg.s      x
    IL_0011: ldarg.s      y
    IL_0013: ldloca.s     a1
    IL_0015: ldloca.s     a2
    IL_0017: ldloca.s     a3
    IL_0019: call         void DistanceTask.DistanceTask::NewMethod(float64, float64, float64, float64, float64, float64, float64&, float64&, float64&)
    IL_001e: nop

    // [28 7 - 28 111]
    IL_001f: ldarg.0      // ax
    IL_0020: ldarg.1      // ay
    IL_0021: ldarg.2      // bx
    IL_0022: ldarg.3      // by
    IL_0023: ldarg.s      x
    IL_0025: ldarg.s      y
    IL_0027: ldloca.s     scalarVectors1
    IL_0029: ldloca.s     scalarVectors2
    IL_002b: call         void DistanceTask.DistanceTask::GetScalarVectors(float64, float64, float64, float64, float64, float64, float64&, float64&)
    IL_0030: nop

    // [29 7 - 29 21]
    IL_0031: ldloc.2      // a2
    IL_0032: ldc.r8       0.0
    IL_003b: ceq
    IL_003d: stloc.s      V_6

    IL_003f: ldloc.s      V_6
    IL_0041: brfalse.s    IL_004b

    // [30 9 - 30 19]
    IL_0043: ldloc.1      // a1
    IL_0044: stloc.s      V_7

    IL_0046: br           IL_00e5

    // [31 7 - 31 58]
    IL_004b: ldloc.s      scalarVectors1
    IL_004d: ldc.r8       0.0
    IL_0056: blt.un.s     IL_006a

    IL_0058: ldloc.s      scalarVectors2
    IL_005a: ldc.r8       0.0
    IL_0063: clt.un
    IL_0065: ldc.i4.0
    IL_0066: ceq
    IL_0068: br.s         IL_006b
    IL_006a: ldc.i4.0
    IL_006b: stloc.s      V_8
    IL_006d: ldloc.s      V_8
    IL_006f: brfalse.s    IL_00a9
    IL_0071: nop

    // [32 9 - 32 159]
    IL_0072: ldloc.0      // num
    IL_0073: ldloc.1      // a1
    IL_0074: ldloc.3      // a3
    IL_0075: add
    IL_0076: ldloc.2      // a2
    IL_0077: add
    IL_0078: ldloc.0      // num
    IL_0079: div
    IL_007a: ldloc.1      // a1
    IL_007b: ldloc.3      // a3
    IL_007c: add
    IL_007d: ldloc.2      // a2
    IL_007e: add
    IL_007f: ldloc.0      // num
    IL_0080: div
    IL_0081: ldloc.1      // a1
    IL_0082: sub
    IL_0083: mul
    IL_0084: ldloc.1      // a1
    IL_0085: ldloc.3      // a3
    IL_0086: add
    IL_0087: ldloc.2      // a2
    IL_0088: add
    IL_0089: ldloc.0      // num
    IL_008a: div
    IL_008b: ldloc.3      // a3
    IL_008c: sub
    IL_008d: mul
    IL_008e: ldloc.1      // a1
    IL_008f: ldloc.3      // a3
    IL_0090: add
    IL_0091: ldloc.2      // a2
    IL_0092: add
    IL_0093: ldloc.0      // num
    IL_0094: div
    IL_0095: ldloc.2      // a2
    IL_0096: sub
    IL_0097: mul
    IL_0098: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_009d: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_00a2: mul
    IL_00a3: ldloc.2      // a2
    IL_00a4: div
    IL_00a5: stloc.s      V_7

    IL_00a7: br.s         IL_00e5

    // [33 7 - 33 84]
    IL_00a9: ldloc.s      scalarVectors1
    IL_00ab: ldc.r8       0.0
    IL_00b4: blt.s        IL_00c5

    IL_00b6: ldloc.s      scalarVectors2
    IL_00b8: ldc.r8       0.0
    IL_00c1: clt
    IL_00c3: br.s         IL_00c6
    IL_00c5: ldc.i4.1
    IL_00c6: stloc.s      V_9
    IL_00c8: ldloc.s      V_9
    IL_00ca: brfalse.s    IL_00d8
    IL_00cc: nop
    IL_00cd: ldloc.1      // a1
    IL_00ce: ldloc.3      // a3
    IL_00cf: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_00d4: stloc.s      V_7
    IL_00d6: br.s         IL_00e5
    IL_00d8: ldc.r8       0.0
    IL_00e1: stloc.s      V_7
    IL_00e3: br.s         IL_00e5
    IL_00e5: ldloc.s      V_7
    IL_00e7: ret

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

    IL_0000: nop

    // [46 7 - 46 67]
    IL_0001: ldarg.s      scalarVectors1
    IL_0003: ldarg.s      x
    IL_0005: ldarg.0      // ax
    IL_0006: sub
    IL_0007: ldarg.2      // bx
    IL_0008: ldarg.0      // ax
    IL_0009: sub
    IL_000a: mul
    IL_000b: ldarg.s      y
    IL_000d: ldarg.1      // ay
    IL_000e: sub
    IL_000f: ldarg.3      // by
    IL_0010: ldarg.1      // ay
    IL_0011: sub
    IL_0012: mul
    IL_0013: add
    IL_0014: stind.r8

    // [47 7 - 47 69]
    IL_0015: ldarg.s      scalarVectors2
    IL_0017: ldarg.s      x
    IL_0019: ldarg.2      // bx
    IL_001a: sub
    IL_001b: ldarg.2      // bx
    IL_001c: neg
    IL_001d: ldarg.0      // ax
    IL_001e: add
    IL_001f: mul
    IL_0020: ldarg.s      y
    IL_0022: ldarg.3      // by
    IL_0023: sub
    IL_0024: ldarg.3      // by
    IL_0025: neg
    IL_0026: ldarg.1      // ay
    IL_0027: add
    IL_0028: mul
    IL_0029: add
    IL_002a: stind.r8
    IL_002b: ret

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

    IL_0000: nop

    // [61 7 - 61 64]
    IL_0001: ldarg.s      a1
    IL_0003: ldarg.s      x
    IL_0005: ldarg.0      // ax
    IL_0006: sub
    IL_0007: ldarg.s      x
    IL_0009: ldarg.0      // ax
    IL_000a: sub
    IL_000b: mul
    IL_000c: ldarg.s      y
    IL_000e: ldarg.1      // ay
    IL_000f: sub
    IL_0010: ldarg.s      y
    IL_0012: ldarg.1      // ay
    IL_0013: sub
    IL_0014: mul
    IL_0015: add
    IL_0016: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_001b: stind.r8

    // [62 7 - 62 68]
    IL_001c: ldarg.s      a2
    IL_001e: ldarg.0      // ax
    IL_001f: ldarg.2      // bx
    IL_0020: sub
    IL_0021: ldarg.0      // ax
    IL_0022: ldarg.2      // bx
    IL_0023: sub
    IL_0024: mul
    IL_0025: ldarg.1      // ay
    IL_0026: ldarg.3      // by
    IL_0027: sub
    IL_0028: ldarg.1      // ay
    IL_0029: ldarg.3      // by
    IL_002a: sub
    IL_002b: mul
    IL_002c: add
    IL_002d: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0032: stind.r8

    // [63 7 - 63 64]
    IL_0033: ldarg.s      a3
    IL_0035: ldarg.s      x
    IL_0037: ldarg.2      // bx
    IL_0038: sub
    IL_0039: ldarg.s      x
    IL_003b: ldarg.2      // bx
    IL_003c: sub
    IL_003d: mul
    IL_003e: ldarg.s      y
    IL_0040: ldarg.3      // by
    IL_0041: sub
    IL_0042: ldarg.s      y
    IL_0044: ldarg.3      // by
    IL_0045: sub
    IL_0046: mul
    IL_0047: add
    IL_0048: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_004d: stind.r8
    IL_004e: ret

  } // end of method DistanceTask::NewMethod
} // end of class DistanceTask.DistanceTask
