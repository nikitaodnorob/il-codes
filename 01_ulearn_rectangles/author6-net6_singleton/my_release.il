// Type: Rectangles.RectangleCounter 
// Assembly: Rectangles-Author6-Net6_Singleton, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 3CE2843E-735A-49DE-977B-7CF5F9F38711
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author6-net6_singleton/bin/Release/net6.0/Rectangles-Author6-Net6_Singleton.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author6-net6_singleton/bin/Release/net6.0/Rectangles-Author6-Net6_Singleton.pdb

.class public auto ansi beforefieldinit
  Rectangles.RectangleCounter
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private static class Rectangles.RectangleCounter 'instance'
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 02 00 00 ) // .....
      // unsigned int8(2) // 0x02

  .method private hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    // [7 9 - 7 35]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [7 38 - 7 39]
    IL_0006: ret

  } // end of method RectangleCounter::.ctor

  .method public hidebysig static class Rectangles.RectangleCounter
    GetInstance() cil managed
  {
    .maxstack 8

    // [11 13 - 11 34]
    IL_0000: ldsfld       class Rectangles.RectangleCounter Rectangles.RectangleCounter::'instance'
    IL_0005: brtrue.s     IL_0011

    // [11 35 - 11 69]
    IL_0007: newobj       instance void Rectangles.RectangleCounter::.ctor()
    IL_000c: stsfld       class Rectangles.RectangleCounter Rectangles.RectangleCounter::'instance'

    // [12 13 - 12 29]
    IL_0011: ldsfld       class Rectangles.RectangleCounter Rectangles.RectangleCounter::'instance'
    IL_0016: ret

  } // end of method RectangleCounter::GetInstance

  .method public hidebysig instance bool
    AreIntersected(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 8

    // [17 13 - 17 108]
    IL_0000: ldarg.2      // r2
    IL_0001: ldfld        int32 Rectangles.Rectangle::Left
    IL_0006: ldarg.1      // r1
    IL_0007: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_000c: bgt.s        IL_003c

    IL_000e: ldarg.2      // r2
    IL_000f: ldfld        int32 Rectangles.Rectangle::Top
    IL_0014: ldarg.1      // r1
    IL_0015: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_001a: bgt.s        IL_003c
    IL_001c: ldarg.1      // r1
    IL_001d: ldfld        int32 Rectangles.Rectangle::Left
    IL_0022: ldarg.2      // r2
    IL_0023: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0028: bgt.s        IL_003c
    IL_002a: ldarg.1      // r1
    IL_002b: ldfld        int32 Rectangles.Rectangle::Top
    IL_0030: ldarg.2      // r2
    IL_0031: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0036: cgt
    IL_0038: ldc.i4.0
    IL_0039: ceq
    IL_003b: ret
    IL_003c: ldc.i4.0
    IL_003d: ret

  } // end of method RectangleCounter::AreIntersected

  .method public hidebysig instance int32
    IntersectionSquare(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 7
    .locals init (
      [0] int32 left,
      [1] int32 right,
      [2] int32 top,
      [3] int32 bottom,
      [4] int32 width,
      [5] int32 height
    )

    // [22 13 - 22 90]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // r1
    IL_0002: ldarg.2      // r2
    IL_0003: ldloca.s     left
    IL_0005: ldloca.s     right
    IL_0007: ldloca.s     top
    IL_0009: ldloca.s     bottom
    IL_000b: call         instance void Rectangles.RectangleCounter::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [24 13 - 24 38]
    IL_0010: ldloc.1      // right
    IL_0011: ldloc.0      // left
    IL_0012: sub
    IL_0013: stloc.s      width

    // [25 13 - 25 39]
    IL_0015: ldloc.3      // bottom
    IL_0016: ldloc.2      // top
    IL_0017: sub
    IL_0018: stloc.s      height

    // [27 13 - 27 43]
    IL_001a: ldloc.s      width
    IL_001c: ldc.i4.0
    IL_001d: ble.s        IL_0024
    IL_001f: ldloc.s      height
    IL_0021: ldc.i4.0
    IL_0022: bgt.s        IL_0026

    // [27 44 - 27 53]
    IL_0024: ldc.i4.0
    IL_0025: ret

    // [28 13 - 28 35]
    IL_0026: ldloc.s      width
    IL_0028: ldloc.s      height
    IL_002a: mul
    IL_002b: ret

  } // end of method RectangleCounter::IntersectionSquare

  .method private hidebysig instance void
    CalcMinMax(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2,
      [out] int32& left,
      [out] int32& right,
      [out] int32& top,
      [out] int32& bottom
    ) cil managed
  {
    .maxstack 3

    // [42 13 - 42 47]
    IL_0000: ldarg.3      // left
    IL_0001: ldarg.1      // r1
    IL_0002: ldfld        int32 Rectangles.Rectangle::Left
    IL_0007: ldarg.2      // r2
    IL_0008: ldfld        int32 Rectangles.Rectangle::Left
    IL_000d: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_0012: stind.i4

    // [43 13 - 43 50]
    IL_0013: ldarg.s      right
    IL_0015: ldarg.1      // r1
    IL_0016: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_001b: ldarg.2      // r2
    IL_001c: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0021: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_0026: stind.i4

    // [44 13 - 44 44]
    IL_0027: ldarg.s      top
    IL_0029: ldarg.1      // r1
    IL_002a: ldfld        int32 Rectangles.Rectangle::Top
    IL_002f: ldarg.2      // r2
    IL_0030: ldfld        int32 Rectangles.Rectangle::Top
    IL_0035: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_003a: stind.i4

    // [45 13 - 45 53]
    IL_003b: ldarg.s      bottom
    IL_003d: ldarg.1      // r1
    IL_003e: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0043: ldarg.2      // r2
    IL_0044: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0049: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_004e: stind.i4

    // [46 9 - 46 10]
    IL_004f: ret

  } // end of method RectangleCounter::CalcMinMax

  .method public hidebysig instance int32
    IndexOfInnerRectangle(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 7
    .locals init (
      [0] int32 left,
      [1] int32 right,
      [2] int32 top,
      [3] int32 bottom
    )

    // [33 13 - 33 90]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // r1
    IL_0002: ldarg.2      // r2
    IL_0003: ldloca.s     left
    IL_0005: ldloca.s     right
    IL_0007: ldloca.s     top
    IL_0009: ldloca.s     bottom
    IL_000b: call         instance void Rectangles.RectangleCounter::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [35 13 - 35 94]
    IL_0010: ldarg.1      // r1
    IL_0011: ldfld        int32 Rectangles.Rectangle::Left
    IL_0016: ldloc.0      // left
    IL_0017: bne.un.s     IL_0036
    IL_0019: ldarg.1      // r1
    IL_001a: ldfld        int32 Rectangles.Rectangle::Top
    IL_001f: ldloc.2      // top
    IL_0020: bne.un.s     IL_0036
    IL_0022: ldarg.1      // r1
    IL_0023: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0028: ldloc.1      // right
    IL_0029: bne.un.s     IL_0036
    IL_002b: ldarg.1      // r1
    IL_002c: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0031: ldloc.3      // bottom
    IL_0032: bne.un.s     IL_0036

    // [35 95 - 35 104]
    IL_0034: ldc.i4.0
    IL_0035: ret

    // [36 13 - 36 94]
    IL_0036: ldarg.2      // r2
    IL_0037: ldfld        int32 Rectangles.Rectangle::Left
    IL_003c: ldloc.0      // left
    IL_003d: bne.un.s     IL_005c
    IL_003f: ldarg.2      // r2
    IL_0040: ldfld        int32 Rectangles.Rectangle::Top
    IL_0045: ldloc.2      // top
    IL_0046: bne.un.s     IL_005c
    IL_0048: ldarg.2      // r2
    IL_0049: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_004e: ldloc.1      // right
    IL_004f: bne.un.s     IL_005c
    IL_0051: ldarg.2      // r2
    IL_0052: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0057: ldloc.3      // bottom
    IL_0058: bne.un.s     IL_005c

    // [36 95 - 36 104]
    IL_005a: ldc.i4.1
    IL_005b: ret

    // [37 13 - 37 23]
    IL_005c: ldc.i4.m1
    IL_005d: ret

  } // end of method RectangleCounter::IndexOfInnerRectangle
} // end of class Rectangles.RectangleCounter
