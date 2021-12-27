// Type: Rectangles.RectanglesTask 
// Assembly: Rectangles, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8FD2062E-C9CE-4AC7-8E9B-B8ACBA403473
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\01 rectangles\02_debug_mycompiler.exe
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
    IL_0002: ldfld        int32 Rectangles.Rectangle::Top
    IL_0007: ldarg.0      // r1
    IL_0008: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_000d: bgt.s        IL_003e

    IL_000f: ldarg.1      // r2
    IL_0010: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0015: ldarg.0      // r1
    IL_0016: ldfld        int32 Rectangles.Rectangle::Top
    IL_001b: blt.s        IL_003e
    IL_001d: ldarg.1      // r2
    IL_001e: ldfld        int32 Rectangles.Rectangle::Left
    IL_0023: ldarg.0      // r1
    IL_0024: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0029: bgt.s        IL_003e
    IL_002b: ldarg.1      // r2
    IL_002c: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0031: ldarg.0      // r1
    IL_0032: ldfld        int32 Rectangles.Rectangle::Left
    IL_0037: clt
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
    .maxstack 4
    .locals init (
      [0] bool V_0,
      [1] int32 V_1
    )

    IL_0000: nop

    // [15 73 - 15 239]
    IL_0001: ldarg.0      // r1
    IL_0002: ldarg.1      // r2
    IL_0003: call         bool Rectangles.RectanglesTask::AreIntersected(class Rectangles.Rectangle, class Rectangles.Rectangle)
    IL_0008: ldc.i4.0
    IL_0009: ceq
    IL_000b: stloc.0      // V_0

    IL_000c: ldloc.0      // V_0
    IL_000d: brfalse.s    IL_0013
    IL_000f: ldc.i4.0
    IL_0010: stloc.1      // V_1
    IL_0011: br.s         IL_005d
    IL_0013: ldarg.0      // r1
    IL_0014: ldfld        int32 Rectangles.Rectangle::Top
    IL_0019: ldarg.1      // r2
    IL_001a: ldfld        int32 Rectangles.Rectangle::Top
    IL_001f: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_0024: ldarg.0      // r1
    IL_0025: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_002a: ldarg.1      // r2
    IL_002b: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0030: call         int32 [mscorlib]System.Math::Min(int32, int32)
    IL_0035: sub
    IL_0036: ldarg.0      // r1
    IL_0037: ldfld        int32 Rectangles.Rectangle::Left
    IL_003c: ldarg.1      // r2
    IL_003d: ldfld        int32 Rectangles.Rectangle::Left
    IL_0042: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_0047: ldarg.0      // r1
    IL_0048: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_004d: ldarg.1      // r2
    IL_004e: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0053: call         int32 [mscorlib]System.Math::Min(int32, int32)
    IL_0058: sub
    IL_0059: mul
    IL_005a: stloc.1      // V_1
    IL_005b: br.s         IL_005d
    IL_005d: ldloc.1      // V_1
    IL_005e: ret

  } // end of method RectanglesTask::IntersectionSquare

  .method public hidebysig static int32
    ComparisonOfTriangles(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] bool V_0,
      [1] int32 V_1,
      [2] bool V_2,
      [3] bool V_3
    )

    IL_0000: nop

    // [19 7 - 19 100]
    IL_0001: ldarg.0      // r1
    IL_0002: ldfld        int32 Rectangles.Rectangle::Top
    IL_0007: ldarg.1      // r2
    IL_0008: ldfld        int32 Rectangles.Rectangle::Top
    IL_000d: bgt.s        IL_003e

    IL_000f: ldarg.0      // r1
    IL_0010: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0015: ldarg.1      // r2
    IL_0016: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_001b: blt.s        IL_003e
    IL_001d: ldarg.0      // r1
    IL_001e: ldfld        int32 Rectangles.Rectangle::Left
    IL_0023: ldarg.1      // r2
    IL_0024: ldfld        int32 Rectangles.Rectangle::Left
    IL_0029: bgt.s        IL_003e
    IL_002b: ldarg.0      // r1
    IL_002c: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0031: ldarg.1      // r2
    IL_0032: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0037: clt
    IL_0039: ldc.i4.0
    IL_003a: ceq
    IL_003c: br.s         IL_003f
    IL_003e: ldc.i4.0
    IL_003f: stloc.0      // V_0
    IL_0040: ldloc.0      // V_0
    IL_0041: brfalse.s    IL_004a

    // [20 9 - 20 18]
    IL_0043: ldc.i4.1
    IL_0044: stloc.1      // V_1

    IL_0045: br           IL_00d7

    // [21 7 - 21 100]
    IL_004a: ldarg.1      // r2
    IL_004b: ldfld        int32 Rectangles.Rectangle::Left
    IL_0050: ldarg.0      // r1
    IL_0051: ldfld        int32 Rectangles.Rectangle::Left
    IL_0056: bgt.s        IL_0087

    IL_0058: ldarg.1      // r2
    IL_0059: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_005e: ldarg.0      // r1
    IL_005f: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_0064: blt.s        IL_0087
    IL_0066: ldarg.1      // r2
    IL_0067: ldfld        int32 Rectangles.Rectangle::Top
    IL_006c: ldarg.0      // r1
    IL_006d: ldfld        int32 Rectangles.Rectangle::Top
    IL_0072: bgt.s        IL_0087
    IL_0074: ldarg.1      // r2
    IL_0075: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_007a: ldarg.0      // r1
    IL_007b: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_0080: clt
    IL_0082: ldc.i4.0
    IL_0083: ceq
    IL_0085: br.s         IL_0088
    IL_0087: ldc.i4.0
    IL_0088: stloc.2      // V_2
    IL_0089: ldloc.2      // V_2
    IL_008a: brfalse.s    IL_0090

    // [22 9 - 22 18]
    IL_008c: ldc.i4.0
    IL_008d: stloc.1      // V_1

    IL_008e: br.s         IL_00d7

    // [23 7 - 23 112]
    IL_0090: ldarg.0      // r1
    IL_0091: ldfld        int32 Rectangles.Rectangle::Left
    IL_0096: ldarg.1      // r2
    IL_0097: ldfld        int32 Rectangles.Rectangle::Left
    IL_009c: bne.un.s     IL_00ca

    IL_009e: ldarg.0      // r1
    IL_009f: ldfld        int32 Rectangles.Rectangle::Top
    IL_00a4: ldarg.1      // r2
    IL_00a5: ldfld        int32 Rectangles.Rectangle::Top
    IL_00aa: bne.un.s     IL_00ca
    IL_00ac: ldarg.0      // r1
    IL_00ad: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_00b2: ldarg.1      // r2
    IL_00b3: callvirt     instance int32 Rectangles.Rectangle::get_Right()
    IL_00b8: bne.un.s     IL_00ca
    IL_00ba: ldarg.1      // r2
    IL_00bb: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_00c0: ldarg.1      // r2
    IL_00c1: callvirt     instance int32 Rectangles.Rectangle::get_Bottom()
    IL_00c6: ceq
    IL_00c8: br.s         IL_00cb
    IL_00ca: ldc.i4.0
    IL_00cb: stloc.3      // V_3
    IL_00cc: ldloc.3      // V_3
    IL_00cd: brfalse.s    IL_00d3
    IL_00cf: ldc.i4.1
    IL_00d0: stloc.1      // V_1
    IL_00d1: br.s         IL_00d7
    IL_00d3: ldc.i4.m1
    IL_00d4: stloc.1      // V_1
    IL_00d5: br.s         IL_00d7
    IL_00d7: ldloc.1      // V_1
    IL_00d8: ret

  } // end of method RectanglesTask::ComparisonOfTriangles

  .method public hidebysig static int32
    IndexOfInnerRectangle(
      class Rectangles.Rectangle r1,
      class Rectangles.Rectangle r2
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] int32 V_0
    )

    IL_0000: nop

    // [26 76 - 26 120]
    IL_0001: ldarg.0      // r1
    IL_0002: ldarg.1      // r2
    IL_0003: call         int32 Rectangles.RectanglesTask::ComparisonOfTriangles(class Rectangles.Rectangle, class Rectangles.Rectangle)
    IL_0008: stloc.0      // V_0
    IL_0009: br.s         IL_000b
    IL_000b: ldloc.0      // V_0
    IL_000c: ret

  } // end of method RectanglesTask::IndexOfInnerRectangle
} // end of class Rectangles.RectanglesTask
