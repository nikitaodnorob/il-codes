// Type: Rectangles.Distance 
// Assembly: Distance-Author5-Net6_Builder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D66DE5B2-BA72-42EC-BC3B-E7CCC5C13BAF
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/03_ulearn_distance/author5-net6_builder/bin/Release/net6.0/Distance-Author5-Net6_Builder.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/03_ulearn_distance/author5-net6_builder/bin/Release/net6.0/Distance-Author5-Net6_Builder.pdb

.class public auto ansi beforefieldinit
  Rectangles.Distance
    extends [System.Runtime]System.Object
{

  .field private bool pointDistanceEnabled

  .field private bool getDistanceToSegmentEnabled

  .method public hidebysig specialname rtspecialname instance void
    .ctor(
      bool pointDistanceEnabled,
      bool getDistanceToSegmentEnabled
    ) cil managed
  {
    .maxstack 8

    // [8 9 - 8 85]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [10 13 - 10 62]
    IL_0006: ldarg.0      // this
    IL_0007: ldarg.1      // pointDistanceEnabled
    IL_0008: stfld        bool Rectangles.Distance::pointDistanceEnabled

    // [11 13 - 11 76]
    IL_000d: ldarg.0      // this
    IL_000e: ldarg.2      // getDistanceToSegmentEnabled
    IL_000f: stfld        bool Rectangles.Distance::getDistanceToSegmentEnabled

    // [12 9 - 12 10]
    IL_0014: ret

  } // end of method Distance::.ctor

  .method private hidebysig static float64
    GetSqr(
      float64 x
    ) cil managed
  {
    .maxstack 8

    // [16 13 - 16 26]
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

    // [21 13 - 21 39]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.Distance::pointDistanceEnabled
    IL_0006: brtrue.s     IL_000e

    // [21 40 - 21 76]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [22 13 - 22 85]
    IL_000e: ldarg.1      // x1
    IL_000f: ldarg.3      // x2
    IL_0010: sub
    IL_0011: call         float64 [System.Runtime]System.Math::Abs(float64)
    IL_0016: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_001b: ldarg.2      // y1
    IL_001c: ldarg.s      y2
    IL_001e: sub
    IL_001f: call         float64 [System.Runtime]System.Math::Abs(float64)
    IL_0024: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0029: add
    IL_002a: call         float64 [System.Runtime]System.Math::Sqrt(float64)
    IL_002f: ret

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

    // [27 13 - 27 46]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.Distance::getDistanceToSegmentEnabled
    IL_0006: brtrue.s     IL_000e

    // [27 47 - 27 83]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [30 13 - 30 57]
    IL_000e: ldarg.0      // this
    IL_000f: ldarg.s      x
    IL_0011: ldarg.s      y
    IL_0013: ldarg.1      // ax
    IL_0014: ldarg.2      // ay
    IL_0015: call         instance float64 Rectangles.Distance::PointDistance(float64, float64, float64, float64)
    IL_001a: stloc.0      // sideAC

    // [31 13 - 31 57]
    IL_001b: ldarg.0      // this
    IL_001c: ldarg.s      x
    IL_001e: ldarg.s      y
    IL_0020: ldarg.3      // bx
    IL_0021: ldarg.s      by
    IL_0023: call         instance float64 Rectangles.Distance::PointDistance(float64, float64, float64, float64)
    IL_0028: stloc.1      // sideBC

    // [32 13 - 32 59]
    IL_0029: ldarg.0      // this
    IL_002a: ldarg.1      // ax
    IL_002b: ldarg.2      // ay
    IL_002c: ldarg.3      // bx
    IL_002d: ldarg.s      by
    IL_002f: call         instance float64 Rectangles.Distance::PointDistance(float64, float64, float64, float64)
    IL_0034: stloc.2      // sideAB

    // [35 13 - 35 29]
    IL_0035: ldloc.2      // sideAB
    IL_0036: ldc.r8       0.0
    IL_003f: bne.un.s     IL_0043

    // [35 30 - 35 44]
    IL_0041: ldloc.0      // sideAC
    IL_0042: ret

    // [38 13 - 38 44]
    IL_0043: ldloc.0      // sideAC
    IL_0044: ldc.r8       0.0
    IL_004d: beq.s        IL_005b
    IL_004f: ldloc.1      // sideBC
    IL_0050: ldc.r8       0.0
    IL_0059: bne.un.s     IL_0065

    // [38 45 - 38 54]
    IL_005b: ldc.r8       0.0
    IL_0064: ret

    // [40 13 - 40 105]
    IL_0065: ldloc.1      // sideBC
    IL_0066: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_006b: ldloc.0      // sideAC
    IL_006c: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0071: sub
    IL_0072: ldloc.2      // sideAB
    IL_0073: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0078: sub
    IL_0079: ldc.r8       -2
    IL_0082: ldloc.0      // sideAC
    IL_0083: mul
    IL_0084: ldloc.2      // sideAB
    IL_0085: mul
    IL_0086: div
    IL_0087: stloc.3      // cosCAB

    // [41 13 - 41 105]
    IL_0088: ldloc.0      // sideAC
    IL_0089: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_008e: ldloc.1      // sideBC
    IL_008f: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_0094: sub
    IL_0095: ldloc.2      // sideAB
    IL_0096: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_009b: sub
    IL_009c: ldc.r8       -2
    IL_00a5: ldloc.1      // sideBC
    IL_00a6: mul
    IL_00a7: ldloc.2      // sideAB
    IL_00a8: mul
    IL_00a9: div
    IL_00aa: stloc.s      cosCBA

    // [44 13 - 44 42]
    IL_00ac: ldloc.3      // cosCAB
    IL_00ad: ldc.r8       0.0
    IL_00b6: blt.s        IL_00c5
    IL_00b8: ldloc.s      cosCBA
    IL_00ba: ldc.r8       0.0
    IL_00c3: bge.un.s     IL_00cd

    // [44 43 - 44 75]
    IL_00c5: ldloc.0      // sideAC
    IL_00c6: ldloc.1      // sideBC
    IL_00c7: call         float64 [System.Runtime]System.Math::Min(float64, float64)
    IL_00cc: ret

    // [47 13 - 47 59]
    IL_00cd: ldc.r8       1
    IL_00d6: ldloc.3      // cosCAB
    IL_00d7: call         float64 Rectangles.Distance::GetSqr(float64)
    IL_00dc: sub
    IL_00dd: call         float64 [System.Runtime]System.Math::Sqrt(float64)

    // [48 13 - 48 36]
    IL_00e2: ldloc.0      // sideAC
    IL_00e3: mul
    IL_00e4: ret

  } // end of method Distance::GetDistanceToSegment
} // end of class Rectangles.Distance

// Type: Rectangles.DistanceBuilder 
// Assembly: Distance-Author5-Net6_Builder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D66DE5B2-BA72-42EC-BC3B-E7CCC5C13BAF
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/03_ulearn_distance/author5-net6_builder/bin/Release/net6.0/Distance-Author5-Net6_Builder.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/03_ulearn_distance/author5-net6_builder/bin/Release/net6.0/Distance-Author5-Net6_Builder.pdb

.class public auto ansi beforefieldinit
  Rectangles.DistanceBuilder
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private bool pointDistanceEnabled

  .field private bool getDistanceToSegmentEnabled

  .method public hidebysig instance class Rectangles.DistanceBuilder
    EnablePointDistance() cil managed
  {
    .maxstack 8

    // [59 13 - 59 41]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.DistanceBuilder::pointDistanceEnabled

    // [60 13 - 60 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method DistanceBuilder::EnablePointDistance

  .method public hidebysig instance class Rectangles.DistanceBuilder
    EnableGetDistanceToSegment() cil managed
  {
    .maxstack 8

    // [65 13 - 65 48]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.DistanceBuilder::getDistanceToSegmentEnabled

    // [66 13 - 66 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method DistanceBuilder::EnableGetDistanceToSegment

  .method public hidebysig instance class Rectangles.Distance
    Build() cil managed
  {
    .maxstack 8

    // [71 13 - 71 84]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.DistanceBuilder::pointDistanceEnabled
    IL_0006: ldarg.0      // this
    IL_0007: ldfld        bool Rectangles.DistanceBuilder::getDistanceToSegmentEnabled
    IL_000c: newobj       instance void Rectangles.Distance::.ctor(bool, bool)
    IL_0011: ret

  } // end of method DistanceBuilder::Build

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method DistanceBuilder::.ctor
} // end of class Rectangles.DistanceBuilder
