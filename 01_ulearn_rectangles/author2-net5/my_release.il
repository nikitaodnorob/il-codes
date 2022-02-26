// Type: Rectangles.RectanglesTask 
// Assembly: Rectangles-Author2-Net5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 6B688DF2-DD82-42D2-9A36-FCF65F6EA1C8
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\01_ulearn_rectangles\author2-net5\bin\Release\net5.0\Rectangles-Author2-Net5.dll
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
    IL_0001: ldfld        int32 Rectangles.Rectangle::Top
    IL_0006: ldarg.0      // r1
    IL_0007: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_000c: bgt.s        IL_003c

    IL_000e: ldarg.1      // r2
    IL_000f: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0014: ldarg.0      // r1
    IL_0015: ldfld        int32 Rectangles.Rectangle::Top
    IL_001a: blt.s        IL_003c
    IL_001c: ldarg.1      // r2
    IL_001d: ldfld        int32 Rectangles.Rectangle::Left
    IL_0022: ldarg.0      // r1
    IL_0023: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0028: bgt.s        IL_003c
    IL_002a: ldarg.1      // r2
    IL_002b: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0030: ldarg.0      // r1
    IL_0031: ldfld        int32 Rectangles.Rectangle::Left
    IL_0036: clt
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
    .maxstack 4

    // [15 73 - 15 239]
    IL_0000: ldarg.0      // r1
    IL_0001: ldarg.1      // r2
    IL_0002: call         bool Rectangles.RectanglesTask::AreIntersected(class Rectangles.Rectangle, class Rectangles.Rectangle)
    IL_0007: brtrue.s     IL_000b

    IL_0009: ldc.i4.0
    IL_000a: ret
    IL_000b: ldarg.0      // r1
    IL_000c: ldfld        int32 Rectangles.Rectangle::Top
    IL_0011: ldarg.1      // r2
    IL_0012: ldfld        int32 Rectangles.Rectangle::Top
    IL_0017: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_001c: ldarg.0      // r1
    IL_001d: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0022: ldarg.1      // r2
    IL_0023: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0028: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_002d: sub
    IL_002e: ldarg.0      // r1
    IL_002f: ldfld        int32 Rectangles.Rectangle::Left
    IL_0034: ldarg.1      // r2
    IL_0035: ldfld        int32 Rectangles.Rectangle::Left
    IL_003a: call         int32 [System.Runtime]System.Math::Max(int32, int32)
    IL_003f: ldarg.0      // r1
    IL_0040: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0045: ldarg.1      // r2
    IL_0046: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_004b: call         int32 [System.Runtime]System.Math::Min(int32, int32)
    IL_0050: sub
    IL_0051: mul
    IL_0052: ret

  } // end of method RectanglesTask::IntersectionSquare

  .method public hidebysig static int32
    ComparisonOfTriangles(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 2

    // [19 7 - 19 100]
    IL_0000: ldarg.0      // r1
    IL_0001: ldfld        int32 Rectangles.Rectangle::Top
    IL_0006: ldarg.1      // r2
    IL_0007: ldfld        int32 Rectangles.Rectangle::Top
    IL_000c: bgt.s        IL_003a

    IL_000e: ldarg.0      // r1
    IL_000f: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0014: ldarg.1      // r2
    IL_0015: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_001a: blt.s        IL_003a
    IL_001c: ldarg.0      // r1
    IL_001d: ldfld        int32 Rectangles.Rectangle::Left
    IL_0022: ldarg.1      // r2
    IL_0023: ldfld        int32 Rectangles.Rectangle::Left
    IL_0028: bgt.s        IL_003a
    IL_002a: ldarg.0      // r1
    IL_002b: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0030: ldarg.1      // r2
    IL_0031: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0036: blt.s        IL_003a

    // [20 9 - 20 18]
    IL_0038: ldc.i4.1
    IL_0039: ret

    // [21 7 - 21 100]
    IL_003a: ldarg.1      // r2
    IL_003b: ldfld        int32 Rectangles.Rectangle::Left
    IL_0040: ldarg.0      // r1
    IL_0041: ldfld        int32 Rectangles.Rectangle::Left
    IL_0046: bgt.s        IL_0074

    IL_0048: ldarg.1      // r2
    IL_0049: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_004e: ldarg.0      // r1
    IL_004f: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0054: blt.s        IL_0074
    IL_0056: ldarg.1      // r2
    IL_0057: ldfld        int32 Rectangles.Rectangle::Top
    IL_005c: ldarg.0      // r1
    IL_005d: ldfld        int32 Rectangles.Rectangle::Top
    IL_0062: bgt.s        IL_0074
    IL_0064: ldarg.1      // r2
    IL_0065: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_006a: ldarg.0      // r1
    IL_006b: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0070: blt.s        IL_0074

    // [22 9 - 22 18]
    IL_0072: ldc.i4.0
    IL_0073: ret

    // [23 7 - 23 112]
    IL_0074: ldarg.0      // r1
    IL_0075: ldfld        int32 Rectangles.Rectangle::Left
    IL_007a: ldarg.1      // r2
    IL_007b: ldfld        int32 Rectangles.Rectangle::Left
    IL_0080: bne.un.s     IL_00ae

    IL_0082: ldarg.0      // r1
    IL_0083: ldfld        int32 Rectangles.Rectangle::Top
    IL_0088: ldarg.1      // r2
    IL_0089: ldfld        int32 Rectangles.Rectangle::Top
    IL_008e: bne.un.s     IL_00ae
    IL_0090: ldarg.0      // r1
    IL_0091: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0096: ldarg.1      // r2
    IL_0097: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_009c: bne.un.s     IL_00ae
    IL_009e: ldarg.1      // r2
    IL_009f: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_00a4: ldarg.1      // r2
    IL_00a5: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_00aa: bne.un.s     IL_00ae
    IL_00ac: ldc.i4.1
    IL_00ad: ret
    IL_00ae: ldc.i4.m1
    IL_00af: ret

  } // end of method RectanglesTask::ComparisonOfTriangles

  .method public hidebysig static int32
    IndexOfInnerRectangle(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 8

    // [26 76 - 26 120]
    IL_0000: ldarg.0      // r1
    IL_0001: ldarg.1      // r2
    IL_0002: call         int32 Rectangles.RectanglesTask::ComparisonOfTriangles(class Rectangles.Rectangle, class Rectangles.Rectangle)
    IL_0007: ret

  } // end of method RectanglesTask::IndexOfInnerRectangle
} // end of class Rectangles.RectanglesTask
