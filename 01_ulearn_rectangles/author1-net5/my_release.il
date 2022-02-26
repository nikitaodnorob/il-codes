// Type: Rectangles.RectanglesTask 
// Assembly: Rectangles-Author1-Net5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 885AED79-7317-47E2-A278-5E53084AD823
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\01_ulearn_rectangles\author1-net5\bin\Release\net5.0\Rectangles-Author1-Net5.dll
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Rectangles.RectanglesTask
    extends [System.Runtime]System.Object
{

  .method public hidebysig static bool
    AreIntersected(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 8

    // [13 70 - 13 158]
    IL_0000: ldarg.1      // r2
    IL_0001: ldfld        int32 Rectangles.Rectangle::Left
    IL_0006: ldarg.0      // r1
    IL_0007: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_000c: bgt.s        IL_003c

    IL_000e: ldarg.1      // r2
    IL_000f: ldfld        int32 Rectangles.Rectangle::Top
    IL_0014: ldarg.0      // r1
    IL_0015: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_001a: bgt.s        IL_003c
    IL_001c: ldarg.0      // r1
    IL_001d: ldfld        int32 Rectangles.Rectangle::Left
    IL_0022: ldarg.1      // r2
    IL_0023: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0028: bgt.s        IL_003c
    IL_002a: ldarg.0      // r1
    IL_002b: ldfld        int32 Rectangles.Rectangle::Top
    IL_0030: ldarg.1      // r2
    IL_0031: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0036: cgt
    IL_0038: ldc.i4.0
    IL_0039: ceq
    IL_003b: ret
    IL_003c: ldc.i4.0
    IL_003d: ret

  } // end of method RectanglesTask::AreIntersected

  .method public hidebysig static int32
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

    // [21 7 - 21 82]
    IL_0000: ldarg.0      // r1
    IL_0001: ldarg.1      // r2
    IL_0002: ldloca.s     left
    IL_0004: ldloca.s     right
    IL_0006: ldloca.s     top
    IL_0008: ldloca.s     bottom
    IL_000a: call         void Rectangles.RectanglesTask::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [22 7 - 22 30]
    IL_000f: ldloc.1      // right
    IL_0010: ldloc.0      // left
    IL_0011: sub
    IL_0012: stloc.s      num1

    // [23 7 - 23 30]
    IL_0014: ldloc.3      // bottom
    IL_0015: ldloc.2      // top
    IL_0016: sub
    IL_0017: stloc.s      num2

    // [24 7 - 24 55]
    IL_0019: ldloc.s      num1
    IL_001b: ldc.i4.0
    IL_001c: ble.s        IL_0023

    IL_001e: ldloc.s      num2
    IL_0020: ldc.i4.0
    IL_0021: bgt.s        IL_0025
    IL_0023: ldc.i4.0
    IL_0024: ret
    IL_0025: ldloc.s      num1
    IL_0027: ldloc.s      num2
    IL_0029: mul
    IL_002a: ret

  } // end of method RectanglesTask::IntersectionSquare

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

    // [35 7 - 35 40]
    IL_0000: ldarg.2      // left
    IL_0001: ldarg.0      // r1
    IL_0002: ldfld        int32 Rectangles.Rectangle::Left
    IL_0007: ldarg.1      // r2
    IL_0008: ldfld        int32 Rectangles.Rectangle::Left
    IL_000d: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_0012: stind.i4

    // [36 7 - 36 43]
    IL_0013: ldarg.3      // right
    IL_0014: ldarg.0      // r1
    IL_0015: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_001a: ldarg.1      // r2
    IL_001b: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0020: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_0025: stind.i4

    // [37 7 - 37 37]
    IL_0026: ldarg.s      top
    IL_0028: ldarg.0      // r1
    IL_0029: ldfld        int32 Rectangles.Rectangle::Top
    IL_002e: ldarg.1      // r2
    IL_002f: ldfld        int32 Rectangles.Rectangle::Top
    IL_0034: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_0039: stind.i4

    // [38 7 - 38 46]
    IL_003a: ldarg.s      bottom
    IL_003c: ldarg.0      // r1
    IL_003d: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0042: ldarg.1      // r2
    IL_0043: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0048: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_004d: stind.i4
    IL_004e: ret

  } // end of method RectanglesTask::CalcMinMax

  .method public hidebysig static int32
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

    // [47 7 - 47 82]
    IL_0000: ldarg.0      // r1
    IL_0001: ldarg.1      // r2
    IL_0002: ldloca.s     left
    IL_0004: ldloca.s     right
    IL_0006: ldloca.s     top
    IL_0008: ldloca.s     bottom
    IL_000a: call         void Rectangles.RectanglesTask::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)

    // [48 7 - 48 88]
    IL_000f: ldarg.0      // r1
    IL_0010: ldfld        int32 Rectangles.Rectangle::Left
    IL_0015: ldloc.0      // left
    IL_0016: bne.un.s     IL_0035

    IL_0018: ldarg.0      // r1
    IL_0019: ldfld        int32 Rectangles.Rectangle::Top
    IL_001e: ldloc.2      // top
    IL_001f: bne.un.s     IL_0035
    IL_0021: ldarg.0      // r1
    IL_0022: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0027: ldloc.1      // right
    IL_0028: bne.un.s     IL_0035
    IL_002a: ldarg.0      // r1
    IL_002b: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0030: ldloc.3      // bottom
    IL_0031: bne.un.s     IL_0035

    // [49 9 - 49 18]
    IL_0033: ldc.i4.0
    IL_0034: ret

    // [50 7 - 50 100]
    IL_0035: ldarg.1      // r2
    IL_0036: ldfld        int32 Rectangles.Rectangle::Left
    IL_003b: ldloc.0      // left
    IL_003c: bne.un.s     IL_005b

    IL_003e: ldarg.1      // r2
    IL_003f: ldfld        int32 Rectangles.Rectangle::Top
    IL_0044: ldloc.2      // top
    IL_0045: bne.un.s     IL_005b
    IL_0047: ldarg.1      // r2
    IL_0048: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_004d: ldloc.1      // right
    IL_004e: bne.un.s     IL_005b
    IL_0050: ldarg.1      // r2
    IL_0051: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0056: ldloc.3      // bottom
    IL_0057: bne.un.s     IL_005b
    IL_0059: ldc.i4.1
    IL_005a: ret
    IL_005b: ldc.i4.m1
    IL_005c: ret

  } // end of method RectanglesTask::IndexOfInnerRectangle
} // end of class Rectangles.RectanglesTask
