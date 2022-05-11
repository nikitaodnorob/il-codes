// Type: Rectangles.RectangleCounter 
// Assembly: Rectangles-Author5-Net6_Builder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2DDB330B-9077-4319-A1A1-0FDD8F36F706
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author5-net6_builder/bin/Release/net6.0/Rectangles-Author5-Net6_Builder.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author5-net6_builder/bin/Release/net6.0/Rectangles-Author5-Net6_Builder.pdb

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

  .field private bool areIntersectedEnabled

  .field private bool intersectionSquareEnabled

  .field private bool indexOfInnerRectangleEnabled

  .method public hidebysig specialname rtspecialname instance void
    .ctor(
      bool areIntersectedEnabled,
      bool intersectionSquareEnabled,
      bool indexOfInnerRectangleEnabled
    ) cil managed
  {
    .maxstack 8

    // [9 9 - 13 10]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [15 13 - 15 64]
    IL_0006: ldarg.0      // this
    IL_0007: ldarg.1      // areIntersectedEnabled
    IL_0008: stfld        bool Rectangles.RectangleCounter::areIntersectedEnabled

    // [16 13 - 16 72]
    IL_000d: ldarg.0      // this
    IL_000e: ldarg.2      // intersectionSquareEnabled
    IL_000f: stfld        bool Rectangles.RectangleCounter::intersectionSquareEnabled

    // [17 13 - 17 78]
    IL_0014: ldarg.0      // this
    IL_0015: ldarg.3      // indexOfInnerRectangleEnabled
    IL_0016: stfld        bool Rectangles.RectangleCounter::indexOfInnerRectangleEnabled

    // [18 9 - 18 10]
    IL_001b: ret

  } // end of method RectangleCounter::.ctor

  .method public hidebysig instance bool
    AreIntersected(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 2

    // [22 13 - 22 40]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.RectangleCounter::areIntersectedEnabled
    IL_0006: brtrue.s     IL_000e

    // [22 41 - 22 77]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [24 13 - 24 108]
    IL_000e: ldarg.2      // r2
    IL_000f: ldfld        int32 Rectangles.Rectangle::Left
    IL_0014: ldarg.1      // r1
    IL_0015: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_001a: bgt.s        IL_004a
    IL_001c: ldarg.2      // r2
    IL_001d: ldfld        int32 Rectangles.Rectangle::Top
    IL_0022: ldarg.1      // r1
    IL_0023: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0028: bgt.s        IL_004a
    IL_002a: ldarg.1      // r1
    IL_002b: ldfld        int32 Rectangles.Rectangle::Left
    IL_0030: ldarg.2      // r2
    IL_0031: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0036: bgt.s        IL_004a
    IL_0038: ldarg.1      // r1
    IL_0039: ldfld        int32 Rectangles.Rectangle::Top
    IL_003e: ldarg.2      // r2
    IL_003f: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0044: cgt
    IL_0046: ldc.i4.0
    IL_0047: ceq
    IL_0049: ret
    IL_004a: ldc.i4.0
    IL_004b: ret

  } // end of method RectangleCounter::AreIntersected

  .method public hidebysig instance int32
    IntersectionSquare(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 left,
      [1] int32 right,
      [2] int32 top,
      [3] int32 bottom,
      [4] int32 num1,
      [5] int32 num2
    )

    // [29 13 - 29 44]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.RectangleCounter::intersectionSquareEnabled
    IL_0006: brtrue.s     IL_000e

    // [29 45 - 29 81]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [31 13 - 31 90]
    IL_000e: ldarg.1      // r1
    IL_000f: ldarg.2      // r2
    IL_0010: ldloca.s     left
    IL_0012: ldloca.s     right
    IL_0014: ldloca.s     top
    IL_0016: ldloca.s     bottom
    IL_0018: call         void Rectangles.RectangleCounter::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [33 13 - 33 38]
    IL_001d: ldloc.1      // right
    IL_001e: ldloc.0      // left
    IL_001f: sub
    IL_0020: stloc.s      num1

    // [34 13 - 34 39]
    IL_0022: ldloc.3      // bottom
    IL_0023: ldloc.2      // top
    IL_0024: sub
    IL_0025: stloc.s      num2

    // [36 13 - 36 43]
    IL_0027: ldloc.s      num1
    IL_0029: ldc.i4.0
    IL_002a: ble.s        IL_0031
    IL_002c: ldloc.s      num2
    IL_002e: ldc.i4.0
    IL_002f: bgt.s        IL_0033

    // [36 44 - 36 53]
    IL_0031: ldc.i4.0
    IL_0032: ret

    // [37 13 - 37 35]
    IL_0033: ldloc.s      num1
    IL_0035: ldloc.s      num2
    IL_0037: mul
    IL_0038: ret

  } // end of method RectangleCounter::IntersectionSquare

  .method public hidebysig instance int32
    IndexOfInnerRectangle(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 left,
      [1] int32 right,
      [2] int32 top,
      [3] int32 bottom
    )

    // [42 13 - 42 47]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.RectangleCounter::indexOfInnerRectangleEnabled
    IL_0006: brtrue.s     IL_000e

    // [42 48 - 42 84]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [44 13 - 44 90]
    IL_000e: ldarg.1      // r1
    IL_000f: ldarg.2      // r2
    IL_0010: ldloca.s     left
    IL_0012: ldloca.s     right
    IL_0014: ldloca.s     top
    IL_0016: ldloca.s     bottom
    IL_0018: call         void Rectangles.RectangleCounter::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [46 13 - 46 94]
    IL_001d: ldarg.1      // r1
    IL_001e: ldfld        int32 Rectangles.Rectangle::Left
    IL_0023: ldloc.0      // left
    IL_0024: bne.un.s     IL_0043
    IL_0026: ldarg.1      // r1
    IL_0027: ldfld        int32 Rectangles.Rectangle::Top
    IL_002c: ldloc.2      // top
    IL_002d: bne.un.s     IL_0043
    IL_002f: ldarg.1      // r1
    IL_0030: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0035: ldloc.1      // right
    IL_0036: bne.un.s     IL_0043
    IL_0038: ldarg.1      // r1
    IL_0039: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_003e: ldloc.3      // bottom
    IL_003f: bne.un.s     IL_0043

    // [46 95 - 46 104]
    IL_0041: ldc.i4.0
    IL_0042: ret

    // [47 13 - 47 94]
    IL_0043: ldarg.2      // r2
    IL_0044: ldfld        int32 Rectangles.Rectangle::Left
    IL_0049: ldloc.0      // left
    IL_004a: bne.un.s     IL_0069
    IL_004c: ldarg.2      // r2
    IL_004d: ldfld        int32 Rectangles.Rectangle::Top
    IL_0052: ldloc.2      // top
    IL_0053: bne.un.s     IL_0069
    IL_0055: ldarg.2      // r2
    IL_0056: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_005b: ldloc.1      // right
    IL_005c: bne.un.s     IL_0069
    IL_005e: ldarg.2      // r2
    IL_005f: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0064: ldloc.3      // bottom
    IL_0065: bne.un.s     IL_0069

    // [47 95 - 47 104]
    IL_0067: ldc.i4.1
    IL_0068: ret

    // [48 13 - 48 23]
    IL_0069: ldc.i4.m1
    IL_006a: ret

  } // end of method RectangleCounter::IndexOfInnerRectangle

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

    // [53 13 - 53 47]
    IL_0000: ldarg.2      // left
    IL_0001: ldarg.0      // r1
    IL_0002: ldfld        int32 Rectangles.Rectangle::Left
    IL_0007: ldarg.1      // r2
    IL_0008: ldfld        int32 Rectangles.Rectangle::Left
    IL_000d: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_0012: stind.i4

    // [54 13 - 54 50]
    IL_0013: ldarg.3      // right
    IL_0014: ldarg.0      // r1
    IL_0015: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_001a: ldarg.1      // r2
    IL_001b: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0020: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_0025: stind.i4

    // [55 13 - 55 44]
    IL_0026: ldarg.s      top
    IL_0028: ldarg.0      // r1
    IL_0029: ldfld        int32 Rectangles.Rectangle::Top
    IL_002e: ldarg.1      // r2
    IL_002f: ldfld        int32 Rectangles.Rectangle::Top
    IL_0034: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_0039: stind.i4

    // [56 13 - 56 53]
    IL_003a: ldarg.s      bottom
    IL_003c: ldarg.0      // r1
    IL_003d: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0042: ldarg.1      // r2
    IL_0043: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0048: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_004d: stind.i4

    // [57 9 - 57 10]
    IL_004e: ret

  } // end of method RectangleCounter::CalcMinMax
} // end of class Rectangles.RectangleCounter

// Type: Rectangles.RectangleCounterBuilder 
// Assembly: Rectangles-Author5-Net6_Builder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2DDB330B-9077-4319-A1A1-0FDD8F36F706
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author5-net6_builder/bin/Release/net6.0/Rectangles-Author5-Net6_Builder.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/01_ulearn_rectangles/author5-net6_builder/bin/Release/net6.0/Rectangles-Author5-Net6_Builder.pdb

.class public auto ansi beforefieldinit
  Rectangles.RectangleCounterBuilder
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private bool areIntersectedEnabled

  .field private bool intersectionSquareEnabled

  .field private bool indexOfInnerRectangleEnabled

  .method public hidebysig instance class Rectangles.RectangleCounterBuilder
    EnableAreIntersected() cil managed
  {
    .maxstack 8

    // [68 13 - 68 42]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.RectangleCounterBuilder::areIntersectedEnabled

    // [69 13 - 69 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method RectangleCounterBuilder::EnableAreIntersected

  .method public hidebysig instance class Rectangles.RectangleCounterBuilder
    EnableIntersectionSquare() cil managed
  {
    .maxstack 8

    // [74 13 - 74 46]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.RectangleCounterBuilder::intersectionSquareEnabled

    // [75 13 - 75 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method RectangleCounterBuilder::EnableIntersectionSquare

  .method public hidebysig instance class Rectangles.RectangleCounterBuilder
    EnableIndexOfInnerRectangle() cil managed
  {
    .maxstack 8

    // [80 13 - 80 49]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.RectangleCounterBuilder::indexOfInnerRectangleEnabled

    // [81 13 - 81 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method RectangleCounterBuilder::EnableIndexOfInnerRectangle

  .method public hidebysig instance class Rectangles.RectangleCounter
    Build() cil managed
  {
    .maxstack 8

    // [86 13 - 86 121]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.RectangleCounterBuilder::areIntersectedEnabled
    IL_0006: ldarg.0      // this
    IL_0007: ldfld        bool Rectangles.RectangleCounterBuilder::intersectionSquareEnabled
    IL_000c: ldarg.0      // this
    IL_000d: ldfld        bool Rectangles.RectangleCounterBuilder::indexOfInnerRectangleEnabled
    IL_0012: newobj       instance void Rectangles.RectangleCounter::.ctor(bool, bool, bool)
    IL_0017: ret

  } // end of method RectangleCounterBuilder::Build

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method RectangleCounterBuilder::.ctor
} // end of class Rectangles.RectangleCounterBuilder
