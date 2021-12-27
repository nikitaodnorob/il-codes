// Type: DistanceTask.DistanceTask 
// Assembly: Distance, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: A9C52162-3A87-418A-A422-71B8F03AA98A
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\03 distance\01_release_mycompiler.exe
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
    .maxstack 8

    // [13 47 - 13 52]
    IL_0000: ldarg.0      // x
    IL_0001: ldarg.0      // x
    IL_0002: mul
    IL_0003: ret

  } // end of method DistanceTask::GetSqr

  .method private hidebysig static float64
    PointDistance(
      float64 x1,
      float64 y1,
      float64 x2,
      float64 y2
    ) cil managed
  {
    .maxstack 8

    // [15 88 - 15 204]
    IL_0000: ldarg.0      // x1
    IL_0001: ldarg.2      // x2
    IL_0002: sub
    IL_0003: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0008: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_000d: ldarg.1      // y1
    IL_000e: ldarg.3      // y2
    IL_000f: sub
    IL_0010: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0015: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_001a: add
    IL_001b: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0020: ret

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
      [4] float64 num2
    )

    // [25 7 - 25 87]
    IL_0000: ldarg.s      x
    IL_0002: ldarg.s      y
    IL_0004: ldarg.0      // ax
    IL_0005: ldarg.1      // ay
    IL_0006: call         float64 DistanceTask.DistanceTask::PointDistance(float64, float64, float64, float64)
    IL_000b: stloc.0      // distanceToSegment

    // [26 7 - 26 74]
    IL_000c: ldarg.s      x
    IL_000e: ldarg.s      y
    IL_0010: ldarg.2      // bx
    IL_0011: ldarg.3      // by
    IL_0012: call         float64 DistanceTask.DistanceTask::PointDistance(float64, float64, float64, float64)
    IL_0017: stloc.1      // num1

    // [27 7 - 27 74]
    IL_0018: ldarg.0      // ax
    IL_0019: ldarg.1      // ay
    IL_001a: ldarg.2      // bx
    IL_001b: ldarg.3      // by
    IL_001c: call         float64 DistanceTask.DistanceTask::PointDistance(float64, float64, float64, float64)
    IL_0021: stloc.2      // x1

    // [28 7 - 28 21]
    IL_0022: ldloc.2      // x1
    IL_0023: ldc.r8       0.0
    IL_002c: bne.un.s     IL_0030

    // [29 9 - 29 34]
    IL_002e: ldloc.0      // distanceToSegment
    IL_002f: ret

    // [30 7 - 30 51]
    IL_0030: ldloc.0      // distanceToSegment
    IL_0031: ldc.r8       0.0
    IL_003a: beq.s        IL_0048

    IL_003c: ldloc.1      // num1
    IL_003d: ldc.r8       0.0
    IL_0046: bne.un.s     IL_0052

    // [31 9 - 31 20]
    IL_0048: ldc.r8       0.0
    IL_0051: ret

    // [32 7 - 32 186]
    IL_0052: ldloc.1      // num1
    IL_0053: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0058: ldloc.0      // distanceToSegment
    IL_0059: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_005e: sub
    IL_005f: ldloc.2      // x1
    IL_0060: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0065: sub
    IL_0066: ldc.r8       -2
    IL_006f: ldloc.0      // distanceToSegment
    IL_0070: mul
    IL_0071: ldloc.2      // x1
    IL_0072: mul
    IL_0073: div
    IL_0074: stloc.3      // x2

    // [33 7 - 33 175]
    IL_0075: ldloc.0      // distanceToSegment
    IL_0076: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_007b: ldloc.1      // num1
    IL_007c: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0081: sub
    IL_0082: ldloc.2      // x1
    IL_0083: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_0088: sub
    IL_0089: ldc.r8       -2
    IL_0092: ldloc.1      // num1
    IL_0093: mul
    IL_0094: ldloc.2      // x1
    IL_0095: mul
    IL_0096: div
    IL_0097: stloc.s      num2

    // [34 7 - 34 149]
    IL_0099: ldloc.3      // x2
    IL_009a: ldc.r8       0.0
    IL_00a3: blt.s        IL_00b2

    IL_00a5: ldloc.s      num2
    IL_00a7: ldc.r8       0.0
    IL_00b0: bge.un.s     IL_00ba
    IL_00b2: ldloc.0      // distanceToSegment
    IL_00b3: ldloc.1      // num1
    IL_00b4: call         float64 [mscorlib]System.Math::Min(float64, float64)
    IL_00b9: ret
    IL_00ba: ldc.r8       1
    IL_00c3: ldloc.3      // x2
    IL_00c4: call         float64 DistanceTask.DistanceTask::GetSqr(float64)
    IL_00c9: sub
    IL_00ca: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_00cf: ldloc.0      // distanceToSegment
    IL_00d0: mul
    IL_00d1: ret

  } // end of method DistanceTask::GetDistanceToSegment
} // end of class DistanceTask.DistanceTask
