// Type: DistanceTask.DistanceTask 
// Assembly: Distance, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8466440B-6D0E-46DE-8F6E-1314A0DD1F3D
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\03 distance\01_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  DistanceTask.DistanceTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static float64
    GetSqr(
      float64 x
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] float64 V_0
    )

    IL_0000: nop

    // [13 47 - 13 52]
    IL_0001: ldarg.0      // x
    IL_0002: ldarg.0      // x
    IL_0003: mul
    IL_0004: stloc.0      // V_0
    IL_0005: br.s         IL_0007
    IL_0007: ldloc.0      // V_0
    IL_0008: ret

  } // end of method DistanceTask::GetSqr

  .method private hidebysig static float64
    PointDistance(
      float64 x1,
      float64 y1,
      float64 x2,
      float64 y2
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] float64 V_0
    )

    IL_0000: nop

    // [15 88 - 15 204]
    IL_0001: ldarg.0      // x1
    IL_0002: ldarg.2      // x2
    IL_0003: sub
    IL_0004: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0009: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_000e: ldarg.1      // y1
    IL_000f: ldarg.3      // y2
    IL_0010: sub
    IL_0011: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0016: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_001b: add
    IL_001c: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0021: stloc.0      // V_0
    IL_0022: br.s         IL_0024
    IL_0024: ldloc.0      // V_0
    IL_0025: ret

  } // end of method DistanceTask::PointDistance

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
    .maxstack 4
    .locals init (
      [0] float64 distanceToSegment,
      [1] float64 num1,
      [2] float64 x1,
      [3] float64 x2,
      [4] float64 num2,
      [5] float64 V_5,
      [6] bool V_6,
      [7] float64 V_7,
      [8] bool V_8,
      [9] bool V_9
    )

    IL_0000: nop

    // [25 7 - 25 87]
    IL_0001: ldarg.s      x
    IL_0003: ldarg.s      y
    IL_0005: ldarg.0      // ax
    IL_0006: ldarg.1      // ay
    IL_0007: call         float64 DistanceTask.DistanceTask::PointDistance(float64, float64, float64, float64)
    IL_000c: stloc.0      // distanceToSegment

    // [26 7 - 26 74]
    IL_000d: ldarg.s      x
    IL_000f: ldarg.s      y
    IL_0011: ldarg.2      // bx
    IL_0012: ldarg.3      // by
    IL_0013: call         float64 DistanceTask.DistanceTask::PointDistance(float64, float64, float64, float64)
    IL_0018: stloc.1      // num1

    // [27 7 - 27 74]
    IL_0019: ldarg.0      // ax
    IL_001a: ldarg.1      // ay
    IL_001b: ldarg.2      // bx
    IL_001c: ldarg.3      // by
    IL_001d: call         float64 DistanceTask.DistanceTask::PointDistance(float64, float64, float64, float64)
    IL_0022: stloc.2      // x1

    // [28 7 - 28 21]
    IL_0023: ldloc.2      // x1
    IL_0024: ldc.r8       0.0
    IL_002d: ceq
    IL_002f: stloc.s      V_6

    IL_0031: ldloc.s      V_6
    IL_0033: brfalse.s    IL_003d

    // [29 9 - 29 34]
    IL_0035: ldloc.0      // distanceToSegment
    IL_0036: stloc.s      V_7

    IL_0038: br           IL_0101

    // [30 7 - 30 51]
    IL_003d: ldloc.0      // distanceToSegment
    IL_003e: ldc.r8       0.0
    IL_0047: beq.s        IL_0057

    IL_0049: ldloc.1      // num1
    IL_004a: ldc.r8       0.0
    IL_0053: ceq
    IL_0055: br.s         IL_0058
    IL_0057: ldc.i4.1
    IL_0058: stloc.s      V_8
    IL_005a: ldloc.s      V_8
    IL_005c: brfalse.s    IL_006e

    // [31 9 - 31 20]
    IL_005e: ldc.r8       0.0
    IL_0067: stloc.s      V_7

    IL_0069: br           IL_0101

    // [32 7 - 32 186]
    IL_006e: ldloc.1      // num1
    IL_006f: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0074: ldloc.0      // distanceToSegment
    IL_0075: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_007a: sub
    IL_007b: ldloc.2      // x1
    IL_007c: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0081: sub
    IL_0082: ldc.r8       -2
    IL_008b: ldloc.0      // distanceToSegment
    IL_008c: mul
    IL_008d: ldloc.2      // x1
    IL_008e: mul
    IL_008f: div
    IL_0090: stloc.3      // x2

    // [33 7 - 33 175]
    IL_0091: ldloc.0      // distanceToSegment
    IL_0092: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0097: ldloc.1      // num1
    IL_0098: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_009d: sub
    IL_009e: ldloc.2      // x1
    IL_009f: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_00a4: sub
    IL_00a5: ldc.r8       -2
    IL_00ae: ldloc.1      // num1
    IL_00af: mul
    IL_00b0: ldloc.2      // x1
    IL_00b1: mul
    IL_00b2: div
    IL_00b3: stloc.s      num2

    // [34 7 - 34 149]
    IL_00b5: ldloc.3      // x2
    IL_00b6: ldc.r8       0.0
    IL_00bf: blt.s        IL_00d0

    IL_00c1: ldloc.s      num2
    IL_00c3: ldc.r8       0.0
    IL_00cc: clt
    IL_00ce: br.s         IL_00d1
    IL_00d0: ldc.i4.1
    IL_00d1: stloc.s      V_9
    IL_00d3: ldloc.s      V_9
    IL_00d5: brfalse.s    IL_00e2
    IL_00d7: ldloc.0      // distanceToSegment
    IL_00d8: ldloc.1      // num1
    IL_00d9: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_00de: stloc.s      V_7
    IL_00e0: br.s         IL_0101
    IL_00e2: ldc.r8       1
    IL_00eb: ldloc.3      // x2
    IL_00ec: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_00f1: sub
    IL_00f2: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_00f7: stloc.s      V_5
    IL_00f9: ldloc.s      V_5
    IL_00fb: ldloc.0      // distanceToSegment
    IL_00fc: mul
    IL_00fd: stloc.s      V_7
    IL_00ff: br.s         IL_0101
    IL_0101: ldloc.s      V_7
    IL_0103: ret

  } // end of method DistanceTask::GetDistanceToSegment
} // end of class DistanceTask.DistanceTask
