// Type: DistanceTask.DistanceTask 
// Assembly: Distance-Author3-NetCore3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 47AAFB4A-FB26-4C3A-AADC-991099F9A3DE
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\03_ulearn_distance\author3-netcore3\bin\Release\netcoreapp3.1\Distance-Author3-NetCore3.dll
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  DistanceTask.DistanceTask
    extends [System.Runtime]System.Object
{

  .method private hidebysig static float64
    Dist(
      float64 ax,
      float64 ay,
      float64 bx,
      float64 by
    ) cil managed
  {
    .maxstack 8

    // [13 79 - 13 135]
    IL_0000: ldarg.0      // ax
    IL_0001: ldarg.2      // bx
    IL_0002: sub
    IL_0003: ldarg.0      // ax
    IL_0004: ldarg.2      // bx
    IL_0005: sub
    IL_0006: mul
    IL_0007: ldarg.1      // ay
    IL_0008: ldarg.3      // by
    IL_0009: sub
    IL_000a: ldarg.1      // ay
    IL_000b: ldarg.3      // by
    IL_000c: sub
    IL_000d: mul
    IL_000e: add
    IL_000f: call         float64 [System.Runtime.Extensions]System.Math::Sqrt(float64)
    IL_0014: ret

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
    .maxstack 8

    // [15 85 - 15 139]
    IL_0000: ldarg.0      // a
    IL_0001: ldarg.3      // x
    IL_0002: mul
    IL_0003: ldarg.1      // b
    IL_0004: ldarg.s      y
    IL_0006: mul
    IL_0007: add
    IL_0008: ldarg.2      // c
    IL_0009: add
    IL_000a: call         float64 [System.Runtime.Extensions]System.Math::Abs(float64)
    IL_000f: ldarg.0      // a
    IL_0010: ldarg.0      // a
    IL_0011: mul
    IL_0012: ldarg.1      // b
    IL_0013: ldarg.1      // b
    IL_0014: mul
    IL_0015: add
    IL_0016: call         float64 [System.Runtime.Extensions]System.Math::Sqrt(float64)
    IL_001b: div
    IL_001c: ret

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
      [3] float64 num2
    )

    // [25 7 - 25 54]
    IL_0000: ldarg.0      // ax
    IL_0001: ldarg.2      // bx
    IL_0002: bne.un.s     IL_001c

    IL_0004: ldarg.1      // ay
    IL_0005: ldarg.3      // by
    IL_0006: bne.un.s     IL_001c
    IL_0008: ldarg.0      // ax
    IL_0009: ldarg.s      x
    IL_000b: bne.un.s     IL_001c
    IL_000d: ldarg.1      // ay
    IL_000e: ldarg.s      y
    IL_0010: bne.un.s     IL_001c

    // [26 9 - 26 20]
    IL_0012: ldc.r8       0.0
    IL_001b: ret

    // [27 7 - 27 94]
    IL_001c: ldarg.3      // by
    IL_001d: ldarg.1      // ay
    IL_001e: sub
    IL_001f: ldarg.0      // ax
    IL_0020: ldarg.2      // bx
    IL_0021: sub
    IL_0022: ldarg.1      // ay
    IL_0023: ldarg.2      // bx
    IL_0024: mul
    IL_0025: ldarg.0      // ax
    IL_0026: ldarg.3      // by
    IL_0027: mul
    IL_0028: sub
    IL_0029: ldarg.s      x
    IL_002b: ldarg.s      y
    IL_002d: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64, float64)
    IL_0032: stloc.0      // num1

    // [28 7 - 28 65]
    IL_0033: ldarg.0      // ax
    IL_0034: ldarg.1      // ay
    IL_0035: ldarg.s      x
    IL_0037: ldarg.s      y
    IL_0039: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64)
    IL_003e: stloc.1      // val1

    // [29 7 - 29 65]
    IL_003f: ldarg.2      // bx
    IL_0040: ldarg.3      // by
    IL_0041: ldarg.s      x
    IL_0043: ldarg.s      y
    IL_0045: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64)
    IL_004a: stloc.2      // val2

    // [30 7 - 30 67]
    IL_004b: ldarg.0      // ax
    IL_004c: ldarg.1      // ay
    IL_004d: ldarg.2      // bx
    IL_004e: ldarg.3      // by
    IL_004f: call         float64 DistanceTask.DistanceTask::Dist(float64, float64, float64, float64)
    IL_0054: stloc.3      // num2

    // [31 7 - 31 233]
    IL_0055: ldloc.0      // num1
    IL_0056: ldc.r8       1E-05
    IL_005f: bge.un.s     IL_0080

    IL_0061: ldloc.3      // num2
    IL_0062: ldloc.1      // val1
    IL_0063: sub
    IL_0064: ldloc.2      // val2
    IL_0065: sub
    IL_0066: call         float64 [System.Runtime.Extensions]System.Math::Abs(float64)
    IL_006b: ldc.r8       1E-05
    IL_0074: bge.un.s     IL_0078
    IL_0076: ldloc.0      // num1
    IL_0077: ret
    IL_0078: ldloc.1      // val1
    IL_0079: ldloc.2      // val2
    IL_007a: call         float64 [System.Runtime.Extensions]System.Math::Min(float64, float64)
    IL_007f: ret
    IL_0080: ldloc.1      // val1
    IL_0081: ldloc.1      // val1
    IL_0082: mul
    IL_0083: ldloc.0      // num1
    IL_0084: ldloc.0      // num1
    IL_0085: mul
    IL_0086: sub
    IL_0087: call         float64 [System.Runtime.Extensions]System.Math::Sqrt(float64)
    IL_008c: ldloc.2      // val2
    IL_008d: ldloc.2      // val2
    IL_008e: mul
    IL_008f: ldloc.0      // num1
    IL_0090: ldloc.0      // num1
    IL_0091: mul
    IL_0092: sub
    IL_0093: call         float64 [System.Runtime.Extensions]System.Math::Sqrt(float64)
    IL_0098: add
    IL_0099: ldloc.3      // num2
    IL_009a: sub
    IL_009b: call         float64 [System.Runtime.Extensions]System.Math::Abs(float64)
    IL_00a0: ldc.r8       1E-05
    IL_00a9: bge.un.s     IL_00ad
    IL_00ab: ldloc.0      // num1
    IL_00ac: ret
    IL_00ad: ldloc.1      // val1
    IL_00ae: ldloc.2      // val2
    IL_00af: call         float64 [System.Runtime.Extensions]System.Math::Min(float64, float64)
    IL_00b4: ret

  } // end of method DistanceTask::GetDistanceToSegment
} // end of class DistanceTask.DistanceTask
