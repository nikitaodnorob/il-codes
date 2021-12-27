// Type: DistanceTask.DistanceTask 
// Assembly: Distance, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: C7851CDF-9CEE-4D6A-AB23-E07530CFCB35
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\03 distance\03_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  DistanceTask.DistanceTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static float64
    Dist(
      float64 ax,
      float64 ay,
      float64 bx,
      float64 by
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64 V_0
    )

    IL_0000: nop

    // [13 79 - 13 135]
    IL_0001: ldarg.0      // ax
    IL_0002: ldarg.2      // bx
    IL_0003: sub
    IL_0004: ldarg.0      // ax
    IL_0005: ldarg.2      // bx
    IL_0006: sub
    IL_0007: mul
    IL_0008: ldarg.1      // ay
    IL_0009: ldarg.3      // by
    IL_000a: sub
    IL_000b: ldarg.1      // ay
    IL_000c: ldarg.3      // by
    IL_000d: sub
    IL_000e: mul
    IL_000f: add
    IL_0010: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0015: stloc.0      // V_0
    IL_0016: br.s         IL_0018
    IL_0018: ldloc.0      // V_0
    IL_0019: ret

  } // end of method DistanceTask::Dist

  .method private hidebysig static float64
    Dist(
      float64 a,
      float64 b,
      float64 c,
      float64 x,
      float64 y
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64 V_0
    )

    IL_0000: nop

    // [15 85 - 15 139]
    IL_0001: ldarg.0      // a
    IL_0002: ldarg.3      // x
    IL_0003: mul
    IL_0004: ldarg.1      // b
    IL_0005: ldarg.s      y
    IL_0007: mul
    IL_0008: add
    IL_0009: ldarg.2      // c
    IL_000a: add
    IL_000b: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0010: ldarg.0      // a
    IL_0011: ldarg.0      // a
    IL_0012: mul
    IL_0013: ldarg.1      // b
    IL_0014: ldarg.1      // b
    IL_0015: mul
    IL_0016: add
    IL_0017: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_001c: div
    IL_001d: stloc.0      // V_0
    IL_001e: br.s         IL_0020
    IL_0020: ldloc.0      // V_0
    IL_0021: ret

  } // end of method DistanceTask::Dist

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
    .maxstack 5
    .locals init (
      [0] float64 num1,
      [1] float64 val1,
      [2] float64 val2,
      [3] float64 num2,
      [4] bool V_4,
      [5] float64 V_5,
      [6] bool V_6,
      [7] bool V_7,
      [8] bool V_8
    )

    IL_0000: nop

    // [25 7 - 25 54]
    IL_0001: ldarg.0      // ax
    IL_0002: ldarg.2      // bx
    IL_0003: bne.un.s     IL_0015

    IL_0005: ldarg.1      // ay
    IL_0006: ldarg.3      // by
    IL_0007: bne.un.s     IL_0015
    IL_0009: ldarg.0      // ax
    IL_000a: ldarg.s      x
    IL_000c: bne.un.s     IL_0015
    IL_000e: ldarg.1      // ay
    IL_000f: ldarg.s      y
    IL_0011: ceq
    IL_0013: br.s         IL_0016
    IL_0015: ldc.i4.0
    IL_0016: stloc.s      V_4
    IL_0018: ldloc.s      V_4
    IL_001a: brfalse.s    IL_002c

    // [26 9 - 26 20]
    IL_001c: ldc.r8       0.0
    IL_0025: stloc.s      V_5

    IL_0027: br           IL_00e3

    // [27 7 - 27 94]
    IL_002c: ldarg.3      // by
    IL_002d: ldarg.1      // ay
    IL_002e: sub
    IL_002f: ldarg.0      // ax
    IL_0030: ldarg.2      // bx
    IL_0031: sub
    IL_0032: ldarg.1      // ay
    IL_0033: ldarg.2      // bx
    IL_0034: mul
    IL_0035: ldarg.0      // ax
    IL_0036: ldarg.3      // by
    IL_0037: mul
    IL_0038: sub
    IL_0039: ldarg.s      x
    IL_003b: ldarg.s      y
    IL_003d: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64, float64)
    IL_0042: stloc.0      // num1

    // [28 7 - 28 65]
    IL_0043: ldarg.0      // ax
    IL_0044: ldarg.1      // ay
    IL_0045: ldarg.s      x
    IL_0047: ldarg.s      y
    IL_0049: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64)
    IL_004e: stloc.1      // val1

    // [29 7 - 29 65]
    IL_004f: ldarg.2      // bx
    IL_0050: ldarg.3      // by
    IL_0051: ldarg.s      x
    IL_0053: ldarg.s      y
    IL_0055: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64)
    IL_005a: stloc.2      // val2

    // [30 7 - 30 67]
    IL_005b: ldarg.0      // ax
    IL_005c: ldarg.1      // ay
    IL_005d: ldarg.2      // bx
    IL_005e: ldarg.3      // by
    IL_005f: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64)
    IL_0064: stloc.3      // num2

    // [31 7 - 31 233]
    IL_0065: ldloc.0      // num1
    IL_0066: ldc.r8       1E-05
    IL_006f: clt
    IL_0071: stloc.s      V_6

    IL_0073: ldloc.s      V_6
    IL_0075: brfalse.s    IL_00a2
    IL_0077: ldloc.3      // num2
    IL_0078: ldloc.1      // val1
    IL_0079: sub
    IL_007a: ldloc.2      // val2
    IL_007b: sub
    IL_007c: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0081: ldc.r8       1E-05
    IL_008a: clt
    IL_008c: stloc.s      V_7
    IL_008e: ldloc.s      V_7
    IL_0090: brfalse.s    IL_0097
    IL_0092: ldloc.0      // num1
    IL_0093: stloc.s      V_5
    IL_0095: br.s         IL_00e3
    IL_0097: ldloc.1      // val1
    IL_0098: ldloc.2      // val2
    IL_0099: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_009e: stloc.s      V_5
    IL_00a0: br.s         IL_00e3
    IL_00a2: ldloc.1      // val1
    IL_00a3: ldloc.1      // val1
    IL_00a4: mul
    IL_00a5: ldloc.0      // num1
    IL_00a6: ldloc.0      // num1
    IL_00a7: mul
    IL_00a8: sub
    IL_00a9: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_00ae: ldloc.2      // val2
    IL_00af: ldloc.2      // val2
    IL_00b0: mul
    IL_00b1: ldloc.0      // num1
    IL_00b2: ldloc.0      // num1
    IL_00b3: mul
    IL_00b4: sub
    IL_00b5: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_00ba: add
    IL_00bb: ldloc.3      // num2
    IL_00bc: sub
    IL_00bd: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_00c2: ldc.r8       1E-05
    IL_00cb: clt
    IL_00cd: stloc.s      V_8
    IL_00cf: ldloc.s      V_8
    IL_00d1: brfalse.s    IL_00d8
    IL_00d3: ldloc.0      // num1
    IL_00d4: stloc.s      V_5
    IL_00d6: br.s         IL_00e3
    IL_00d8: ldloc.1      // val1
    IL_00d9: ldloc.2      // val2
    IL_00da: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_00df: stloc.s      V_5
    IL_00e1: br.s         IL_00e3
    IL_00e3: ldloc.s      V_5
    IL_00e5: ret

  } // end of method DistanceTask::GetDistanceToSegment
} // end of class DistanceTask.DistanceTask
