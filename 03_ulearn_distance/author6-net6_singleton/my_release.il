// Type: Rectangles.Distance 
// Assembly: Distance-Author6-Net6_Singleton, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 29915564-54C6-4AA6-932D-6FD4305C834D
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/03_ulearn_distance/author6-net6_singleton/bin/Release/net6.0/Distance-Author6-Net6_Singleton.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/03_ulearn_distance/author6-net6_singleton/bin/Release/net6.0/Distance-Author6-Net6_Singleton.pdb

.class public auto ansi beforefieldinit
  Rectangles.Distance
    extends [System.Runtime]System.Object
{

  .field private static class Rectangles.Distance 'instance'
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 02 00 00 ) // .....
      // unsigned int8(2) // 0x02

  .method private hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    // [7 9 - 7 27]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [7 30 - 7 31]
    IL_0006: ret

  } // end of method Distance::.ctor

  .method public hidebysig static class Rectangles.Distance
    GetInstance() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
      = (01 00 01 00 00 ) // .....
      // unsigned int8(1) // 0x01
    .maxstack 8

    // [11 13 - 11 34]
    IL_0000: ldsfld       class Rectangles.Distance Rectangles.Distance::'instance'
    IL_0005: brtrue.s     IL_0011

    // [11 35 - 11 61]
    IL_0007: newobj       instance void Rectangles.Distance::.ctor()
    IL_000c: stsfld       class Rectangles.Distance Rectangles.Distance::'instance'

    // [12 13 - 12 29]
    IL_0011: ldsfld       class Rectangles.Distance Rectangles.Distance::'instance'
    IL_0016: ret

  } // end of method Distance::GetInstance

  .method private hidebysig static float64
    GetSqr(
      float64 x
    ) cil managed
  {
    .maxstack 8

    // [17 13 - 17 26]
    IL_0000: ldarg.0      // x
    IL_0001: ldarg.0      // x
    IL_0002: mul
    IL_0003: ret

  } // end of method Distance::GetSqr

  .method public hidebysig instance float64
    PointDistance(
      float64 x1,
      float64 y1,
      float64 x2,
      float64 y2
    ) cil managed
  {
    .maxstack 8

    // [22 13 - 22 85]
    IL_0000: ldarg.1      // x1
    IL_0001: ldarg.3      // x2
    IL_0002: sub
    IL_0003: call         float64 [System.Runtime]System.Math::Abs(float64)
    IL_0008: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_000d: ldarg.2      // y1
    IL_000e: ldarg.s      y2
    IL_0010: sub
    IL_0011: call         float64 [System.Runtime]System.Math::Abs(float64)
    IL_0016: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_001b: add
    IL_001c: call         float64 [System.Runtime]System.Math::Sqrt(float64)
    IL_0021: ret

  } // end of method Distance::PointDistance

  .method public hidebysig instance float64
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
      [0] float64 sideAC,
      [1] float64 sideBC,
      [2] float64 sideAB,
      [3] float64 cosCAB,
      [4] float64 cosCBA
    )

    // [28 13 - 28 57]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.s      x
    IL_0003: ldarg.s      y
    IL_0005: ldarg.1      // ax
    IL_0006: ldarg.2      // ay
    IL_0007: call         instance float64 Rectangles.Distance::PointDistance(float64, float64, float64, float64)
    IL_000c: stloc.0      // sideAC

    // [29 13 - 29 57]
    IL_000d: ldarg.0      // this
    IL_000e: ldarg.s      x
    IL_0010: ldarg.s      y
    IL_0012: ldarg.3      // bx
    IL_0013: ldarg.s      by
    IL_0015: call         instance float64 Rectangles.Distance::PointDistance(float64, float64, float64, float64)
    IL_001a: stloc.1      // sideBC

    // [30 13 - 30 59]
    IL_001b: ldarg.0      // this
    IL_001c: ldarg.1      // ax
    IL_001d: ldarg.2      // ay
    IL_001e: ldarg.3      // bx
    IL_001f: ldarg.s      by
    IL_0021: call         instance float64 Rectangles.Distance::PointDistance(float64, float64, float64, float64)
    IL_0026: stloc.2      // sideAB

    // [33 13 - 33 29]
    IL_0027: ldloc.2      // sideAB
    IL_0028: ldc.r8       0.0
    IL_0031: bne.un.s     IL_0035

    // [33 30 - 33 44]
    IL_0033: ldloc.0      // sideAC
    IL_0034: ret

    // [36 13 - 36 44]
    IL_0035: ldloc.0      // sideAC
    IL_0036: ldc.r8       0.0
    IL_003f: beq.s        IL_004d
    IL_0041: ldloc.1      // sideBC
    IL_0042: ldc.r8       0.0
    IL_004b: bne.un.s     IL_0057

    // [36 45 - 36 54]
    IL_004d: ldc.r8       0.0
    IL_0056: ret

    // [38 13 - 38 105]
    IL_0057: ldloc.1      // sideBC
    IL_0058: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_005d: ldloc.0      // sideAC
    IL_005e: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0063: sub
    IL_0064: ldloc.2      // sideAB
    IL_0065: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_006a: sub
    IL_006b: ldc.r8       -2
    IL_0074: ldloc.0      // sideAC
    IL_0075: mul
    IL_0076: ldloc.2      // sideAB
    IL_0077: mul
    IL_0078: div
    IL_0079: stloc.3      // cosCAB

    // [39 13 - 39 105]
    IL_007a: ldloc.0      // sideAC
    IL_007b: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0080: ldloc.1      // sideBC
    IL_0081: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0086: sub
    IL_0087: ldloc.2      // sideAB
    IL_0088: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_008d: sub
    IL_008e: ldc.r8       -2
    IL_0097: ldloc.1      // sideBC
    IL_0098: mul
    IL_0099: ldloc.2      // sideAB
    IL_009a: mul
    IL_009b: div
    IL_009c: stloc.s      cosCBA

    // [42 13 - 42 42]
    IL_009e: ldloc.3      // cosCAB
    IL_009f: ldc.r8       0.0
    IL_00a8: blt.s        IL_00b7
    IL_00aa: ldloc.s      cosCBA
    IL_00ac: ldc.r8       0.0
    IL_00b5: bge.un.s     IL_00bf

    // [42 43 - 42 75]
    IL_00b7: ldloc.0      // sideAC
    IL_00b8: ldloc.1      // sideBC
    IL_00b9: call         float64 [System.Runtime]System.Math::Min(float64, float64)
    IL_00be: ret

    // [45 13 - 45 59]
    IL_00bf: ldc.r8       1
    IL_00c8: ldloc.3      // cosCAB
    IL_00c9: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_00ce: sub
    IL_00cf: call         float64 [System.Runtime]System.Math::Sqrt(float64)

    // [46 13 - 46 36]
    IL_00d4: ldloc.0      // sideAC
    IL_00d5: mul
    IL_00d6: ret

  } // end of method Distance::GetDistanceToSegment
} // end of class Rectangles.Distance
