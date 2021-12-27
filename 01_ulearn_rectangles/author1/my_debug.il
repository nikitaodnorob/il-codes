// Type: Rectangles.RectanglesTask 
// Assembly: Rectangles, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 6EE72081-56F9-40A5-A649-233BD73EDF68
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\01 rectangles\01_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Rectangles.RectanglesTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static bool
    AreIntersected(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] bool V_0
    )

    IL_0000: nop

    // [13 70 - 13 158]
    IL_0001: ldarg.1      // r2
    IL_0002: ldfld        int32 Rectangles.Rectangle::Left
    IL_0007: ldarg.0      // r1
    IL_0008: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_000d: bgt.s        IL_003e

    IL_000f: ldarg.1      // r2
    IL_0010: ldfld        int32 Rectangles.Rectangle::Top
    IL_0015: ldarg.0      // r1
    IL_0016: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_001b: bgt.s        IL_003e
    IL_001d: ldarg.0      // r1
    IL_001e: ldfld        int32 Rectangles.Rectangle::Left
    IL_0023: ldarg.1      // r2
    IL_0024: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0029: bgt.s        IL_003e
    IL_002b: ldarg.0      // r1
    IL_002c: ldfld        int32 Rectangles.Rectangle::Top
    IL_0031: ldarg.1      // r2
    IL_0032: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0037: cgt
    IL_0039: ldc.i4.0
    IL_003a: ceq
    IL_003c: br.s         IL_003f
    IL_003e: ldc.i4.0
    IL_003f: stloc.0      // V_0
    IL_0040: br.s         IL_0042
    IL_0042: ldloc.0      // V_0
    IL_0043: ret

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
      [5] int32 num2,
      [6] bool V_6,
      [7] int32 V_7
    )

    IL_0000: nop

    // [21 7 - 21 82]
    IL_0001: ldarg.0      // r1
    IL_0002: ldarg.1      // r2
    IL_0003: ldloca.s     left
    IL_0005: ldloca.s     right
    IL_0007: ldloca.s     top
    IL_0009: ldloca.s     bottom
    IL_000b: call         void Rectangles.RectanglesTask::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)
    IL_0010: nop

    // [22 7 - 22 30]
    IL_0011: ldloc.1      // right
    IL_0012: ldloc.0      // left
    IL_0013: sub
    IL_0014: stloc.s      num1

    // [23 7 - 23 30]
    IL_0016: ldloc.3      // bottom
    IL_0017: ldloc.2      // top
    IL_0018: sub
    IL_0019: stloc.s      num2

    // [24 7 - 24 55]
    IL_001b: ldloc.s      num1
    IL_001d: ldc.i4.0
    IL_001e: ble.s        IL_002a

    IL_0020: ldloc.s      num2
    IL_0022: ldc.i4.0
    IL_0023: cgt
    IL_0025: ldc.i4.0
    IL_0026: ceq
    IL_0028: br.s         IL_002b
    IL_002a: ldc.i4.1
    IL_002b: stloc.s      V_6
    IL_002d: ldloc.s      V_6
    IL_002f: brfalse.s    IL_0036
    IL_0031: ldc.i4.0
    IL_0032: stloc.s      V_7
    IL_0034: br.s         IL_003f
    IL_0036: ldloc.s      num1
    IL_0038: ldloc.s      num2
    IL_003a: mul
    IL_003b: stloc.s      V_7
    IL_003d: br.s         IL_003f
    IL_003f: ldloc.s      V_7
    IL_0041: ret

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

    IL_0000: nop

    // [35 7 - 35 40]
    IL_0001: ldarg.2      // left
    IL_0002: ldarg.0      // r1
    IL_0003: ldfld        int32 Rectangles.Rectangle::Left
    IL_0008: ldarg.1      // r2
    IL_0009: ldfld        int32 Rectangles.Rectangle::Left
    IL_000e: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_0013: stind.i4

    // [36 7 - 36 43]
    IL_0014: ldarg.3      // right
    IL_0015: ldarg.0      // r1
    IL_0016: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_001b: ldarg.1      // r2
    IL_001c: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0021: call         int32 [mscorlib]System.Math::Min(int32, int32)
    IL_0026: stind.i4

    // [37 7 - 37 37]
    IL_0027: ldarg.s      top
    IL_0029: ldarg.0      // r1
    IL_002a: ldfld        int32 Rectangles.Rectangle::Top
    IL_002f: ldarg.1      // r2
    IL_0030: ldfld        int32 Rectangles.Rectangle::Top
    IL_0035: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_003a: stind.i4

    // [38 7 - 38 46]
    IL_003b: ldarg.s      bottom
    IL_003d: ldarg.0      // r1
    IL_003e: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0043: ldarg.1      // r2
    IL_0044: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0049: call         int32 [mscorlib]System.Math::Min(int32, int32)
    IL_004e: stind.i4
    IL_004f: ret

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
      [3] int32 bottom,
      [4] bool V_4,
      [5] int32 V_5,
      [6] bool V_6
    )

    IL_0000: nop

    // [47 7 - 47 82]
    IL_0001: ldarg.0      // r1
    IL_0002: ldarg.1      // r2
    IL_0003: ldloca.s     left
    IL_0005: ldloca.s     right
    IL_0007: ldloca.s     top
    IL_0009: ldloca.s     bottom
    IL_000b: call         void Rectangles.RectanglesTask::CalcMinMax(class Rectangles.Rectangle, class Rectangles.Rectangle, int32&, int32&, int32&, int32&)
    IL_0010: nop

    // [48 7 - 48 88]
    IL_0011: ldarg.0      // r1
    IL_0012: ldfld        int32 Rectangles.Rectangle::Left
    IL_0017: ldloc.0      // left
    IL_0018: bne.un.s     IL_0037

    IL_001a: ldarg.0      // r1
    IL_001b: ldfld        int32 Rectangles.Rectangle::Top
    IL_0020: ldloc.2      // top
    IL_0021: bne.un.s     IL_0037
    IL_0023: ldarg.0      // r1
    IL_0024: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0029: ldloc.1      // right
    IL_002a: bne.un.s     IL_0037
    IL_002c: ldarg.0      // r1
    IL_002d: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0032: ldloc.3      // bottom
    IL_0033: ceq
    IL_0035: br.s         IL_0038
    IL_0037: ldc.i4.0
    IL_0038: stloc.s      V_4
    IL_003a: ldloc.s      V_4
    IL_003c: brfalse.s    IL_0043

    // [49 9 - 49 18]
    IL_003e: ldc.i4.0
    IL_003f: stloc.s      V_5

    IL_0041: br.s         IL_007a

    // [50 7 - 50 100]
    IL_0043: ldarg.1      // r2
    IL_0044: ldfld        int32 Rectangles.Rectangle::Left
    IL_0049: ldloc.0      // left
    IL_004a: bne.un.s     IL_0069

    IL_004c: ldarg.1      // r2
    IL_004d: ldfld        int32 Rectangles.Rectangle::Top
    IL_0052: ldloc.2      // top
    IL_0053: bne.un.s     IL_0069
    IL_0055: ldarg.1      // r2
    IL_0056: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_005b: ldloc.1      // right
    IL_005c: bne.un.s     IL_0069
    IL_005e: ldarg.1      // r2
    IL_005f: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0064: ldloc.3      // bottom
    IL_0065: ceq
    IL_0067: br.s         IL_006a
    IL_0069: ldc.i4.0
    IL_006a: stloc.s      V_6
    IL_006c: ldloc.s      V_6
    IL_006e: brfalse.s    IL_0075
    IL_0070: ldc.i4.1
    IL_0071: stloc.s      V_5
    IL_0073: br.s         IL_007a
    IL_0075: ldc.i4.m1
    IL_0076: stloc.s      V_5
    IL_0078: br.s         IL_007a
    IL_007a: ldloc.s      V_5
    IL_007c: ret

  } // end of method RectanglesTask::IndexOfInnerRectangle
} // end of class Rectangles.RectanglesTask
