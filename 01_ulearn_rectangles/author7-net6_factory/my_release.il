// Type: Rectangles.RectangleCounter 
// Assembly: Rectangles-Author7-Net6_Factory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2727B68C-11C6-4854-9F87-0D6D43E58291
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author7-net6_factory/bin/Release/net6.0/Rectangles-Author7-Net6_Factory.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author7-net6_factory/bin/Release/net6.0/Rectangles-Author7-Net6_Factory.pdb

.class public auto ansi beforefieldinit
  Rectangles.RectangleCounter
    extends [System.Runtime]System.Object
    implements Rectangles.IRectangleCounter
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00
  .interfaceimpl type Rectangles.IRectangleCounter
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 00 00 00 ) // .....
      // unsigned int8(0) // 0x00

  .method public final hidebysig virtual newslot instance bool
    AreIntersected(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 8

    // [19 13 - 19 108]
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

  .method public final hidebysig virtual newslot instance int32
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

    // [24 13 - 24 90]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // r1
    IL_0002: ldarg.2      // r2
    IL_0003: ldloca.s     left
    IL_0005: ldloca.s     right
    IL_0007: ldloca.s     top
    IL_0009: ldloca.s     bottom
    IL_000b: call         void Rectangles.RectangleCounter::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [26 13 - 26 38]
    IL_0010: ldloc.1      // right
    IL_0011: ldloc.0      // left
    IL_0012: sub
    IL_0013: stloc.s      width

    // [27 13 - 27 39]
    IL_0015: ldloc.3      // bottom
    IL_0016: ldloc.2      // top
    IL_0017: sub
    IL_0018: stloc.s      height

    // [29 13 - 29 43]
    IL_001a: ldloc.s      width
    IL_001c: ldc.i4.0
    IL_001d: ble.s        IL_0024
    IL_001f: ldloc.s      height
    IL_0021: ldc.i4.0
    IL_0022: bgt.s        IL_0026

    // [29 44 - 29 53]
    IL_0024: ldc.i4.0
    IL_0025: ret

    // [30 13 - 30 35]
    IL_0026: ldloc.s      width
    IL_0028: ldloc.s      height
    IL_002a: mul
    IL_002b: ret

  } // end of method RectangleCounter::IntersectionSquare
  
  .method private hidebysig static void
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

    // [44 13 - 44 47]
    IL_0000: ldarg.2      // left
    IL_0001: ldarg.0      // r1
    IL_0002: ldfld        int32 Rectangles.Rectangle::Left
    IL_0007: ldarg.1      // r2
    IL_0008: ldfld        int32 Rectangles.Rectangle::Left
    IL_000d: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_0012: stind.i4

    // [45 13 - 45 50]
    IL_0013: ldarg.3      // right
    IL_0015: ldarg.0      // r1
    IL_0016: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_001b: ldarg.1      // r2
    IL_001c: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0021: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_0026: stind.i4

    // [46 13 - 46 44]
    IL_0027: ldarg.s      top
    IL_0029: ldarg.0      // r1
    IL_002a: ldfld        int32 Rectangles.Rectangle::Top
    IL_002f: ldarg.1      // r2
    IL_0030: ldfld        int32 Rectangles.Rectangle::Top
    IL_0035: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_003a: stind.i4

    // [47 13 - 47 53]
    IL_003b: ldarg.s      bottom
    IL_003d: ldarg.0      // r1
    IL_003e: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0043: ldarg.1      // r2
    IL_0044: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0049: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_004e: stind.i4
    IL_004f: ret

  } // end of method RectangleCounter::CalcMinMax

  .method public final hidebysig virtual newslot instance int32
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

    // [35 13 - 35 90]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // r1
    IL_0002: ldarg.2      // r2
    IL_0003: ldloca.s     left
    IL_0005: ldloca.s     right
    IL_0007: ldloca.s     top
    IL_0009: ldloca.s     bottom
    IL_000b: call         void Rectangles.RectangleCounter::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [37 13 - 37 94]
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

    // [37 95 - 37 104]
    IL_0034: ldc.i4.0
    IL_0035: ret

    // [38 13 - 38 94]
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

    // [38 95 - 38 104]
    IL_005a: ldc.i4.1
    IL_005b: ret

    // [39 13 - 39 23]
    IL_005c: ldc.i4.m1
    IL_005d: ret

  } // end of method RectangleCounter::IndexOfInnerRectangle

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method RectangleCounter::.ctor
} // end of class Rectangles.RectangleCounter

// Type: Rectangles.RectangleCounterFactory 
// Assembly: Rectangles-Author7-Net6_Factory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2727B68C-11C6-4854-9F87-0D6D43E58291
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author7-net6_factory/bin/Release/net6.0/Rectangles-Author7-Net6_Factory.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author7-net6_factory/bin/Release/net6.0/Rectangles-Author7-Net6_Factory.pdb

.class public auto ansi beforefieldinit
  Rectangles.RectangleCounterFactory
    extends [System.Runtime]System.Object
    implements Rectangles.IRectangleCounterFactory
{

  .method public final hidebysig virtual newslot instance class Rectangles.IRectangleCounter
    MakeRectangleCounter() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
      = (01 00 01 00 00 ) // .....
      // unsigned int8(1) // 0x01
    .maxstack 8

    // [55 13 - 55 43]
    IL_0000: newobj       instance void Rectangles.RectangleCounter::.ctor()
    IL_0005: ret

  } // end of method RectangleCounterFactory::MakeRectangleCounter

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method RectangleCounterFactory::.ctor
} // end of class Rectangles.RectangleCounterFactory
