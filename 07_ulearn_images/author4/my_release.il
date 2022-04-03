// Type: Recognizer.GrayscaleTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 86A434FC-6FD0-4111-8DA7-377AC45ADAE4
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.GrayscaleTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    TransformToGray(
      class Recognizer.Pixel[0...,0...] original
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] float64[0...,0...] res2,
      [3] int32 i,
      [4] int32 j
    )

    // [23 4 - 23 33]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // w

    // [23 35 - 23 60]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // h

    // [25 4 - 25 32]
    IL_0010: ldloc.0      // w
    IL_0011: ldloc.1      // h
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // res2

    // [26 9 - 26 18]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // i

    IL_001a: br.s         IL_0047
    // start of loop, entry point: IL_0047

      // [27 10 - 27 19]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      j

      IL_001f: br.s         IL_003e
      // start of loop, entry point: IL_003e

        // [28 6 - 28 54]
        IL_0021: ldloc.2      // res2
        IL_0022: ldloc.3      // i
        IL_0023: ldloc.s      j
        IL_0025: ldarg.0      // original
        IL_0026: ldloc.3      // i
        IL_0027: ldloc.s      j
        IL_0029: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_002e: call         float64 Recognizer.GrayscaleTask::GetScaledGrayValue(class Recognizer.Pixel)
        IL_0033: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [27 28 - 27 31]
        IL_0038: ldloc.s      j
        IL_003a: ldc.i4.1
        IL_003b: add
        IL_003c: stloc.s      j

        // [27 21 - 27 26]
        IL_003e: ldloc.s      j
        IL_0040: ldloc.1      // h
        IL_0041: blt.s        IL_0021
      // end of loop

      // [26 27 - 26 30]
      IL_0043: ldloc.3      // i
      IL_0044: ldc.i4.1
      IL_0045: add
      IL_0046: stloc.3      // i

      // [26 20 - 26 25]
      IL_0047: ldloc.3      // i
      IL_0048: ldloc.0      // w
      IL_0049: blt.s        IL_001c
    // end of loop

    // [30 4 - 30 16]
    IL_004b: ldloc.2      // res2
    IL_004c: ret

  } // end of method GrayscaleTask::TransformToGray

  .method private hidebysig static float64
    GetScaledGrayValue(
      class Recognizer.Pixel pixel
    ) cil managed
  {
    .maxstack 3

    // [35 4 - 35 71]
    IL_0000: ldc.r8       0.299
    IL_0009: ldarg.0      // pixel
    IL_000a: callvirt     instance unsigned int8 Recognizer.Pixel::get_R()
    IL_000f: conv.r8
    IL_0010: mul
    IL_0011: ldc.r8       0.587
    IL_001a: ldarg.0      // pixel
    IL_001b: callvirt     instance unsigned int8 Recognizer.Pixel::get_G()
    IL_0020: conv.r8
    IL_0021: mul
    IL_0022: add
    IL_0023: ldc.r8       0.114
    IL_002c: ldarg.0      // pixel
    IL_002d: callvirt     instance unsigned int8 Recognizer.Pixel::get_B()
    IL_0032: conv.r8
    IL_0033: mul
    IL_0034: add
    IL_0035: ldc.r8       255
    IL_003e: div
    IL_003f: ret

  } // end of method GrayscaleTask::GetScaledGrayValue
} // end of class Recognizer.GrayscaleTask

// Type: Recognizer.HoughTransformTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 86A434FC-6FD0-4111-8DA7-377AC45ADAE4
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.HoughTransformTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class Recognizer.Line[]
    HoughAlgo(
      float64[0...,0...] orig
    ) cil managed
  {
    .maxstack 7
    .locals init (
      [0] int32 height,
      [1] int32 width
    )

    // [7 13 - 7 44]
    IL_0000: ldarg.0      // orig
    IL_0001: ldc.i4.1
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // height

    // [8 13 - 8 43]
    IL_0008: ldarg.0      // orig
    IL_0009: ldc.i4.0
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // width

    // [9 13 - 13 15]
    IL_0010: ldc.i4.2
    IL_0011: newarr       Recognizer.Line
    IL_0016: dup
    IL_0017: ldc.i4.0
    IL_0018: ldc.i4.0
    IL_0019: ldc.i4.0
    IL_001a: ldloc.1      // width
    IL_001b: ldloc.0      // height
    IL_001c: newobj       instance void Recognizer.Line::.ctor(int32, int32, int32, int32)
    IL_0021: stelem.ref
    IL_0022: dup
    IL_0023: ldc.i4.1
    IL_0024: ldc.i4.0
    IL_0025: ldloc.0      // height
    IL_0026: ldloc.1      // width
    IL_0027: ldc.i4.0
    IL_0028: newobj       instance void Recognizer.Line::.ctor(int32, int32, int32, int32)
    IL_002d: stelem.ref
    IL_002e: ret

  } // end of method HoughTransformTask::HoughAlgo
} // end of class Recognizer.HoughTransformTask

// Type: Recognizer.MedianFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 86A434FC-6FD0-4111-8DA7-377AC45ADAE4
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.MedianFilterTask
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class Recognizer.MedianFilterTask/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<float64, float64> '<>9__2_0'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void Recognizer.MedianFilterTask/'<>c'::.ctor()
      IL_0005: stsfld       class Recognizer.MedianFilterTask/'<>c' Recognizer.MedianFilterTask/'<>c'::'<>9'
      IL_000a: ret

    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance float64
      '<GetMedian>b__2_0'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [46 40 - 46 41]
      IL_0000: ldarg.1      // v
      IL_0001: ret

    } // end of method '<>c'::'<GetMedian>b__2_0'
  } // end of class '<>c'

  .method public hidebysig static float64[0...,0...]
    MedianFilter(
      float64[0...,0...] original
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 h,
      [1] int32 w,
      [2] float64[0...,0...] resutlt,
      [3] int32 j,
      [4] int32 i
    )

    // [19 4 - 19 34]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.1
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // h

    // [20 4 - 20 34]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.0
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // w

    // [21 4 - 21 35]
    IL_0010: ldloc.1      // w
    IL_0011: ldloc.0      // h
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // resutlt

    // [23 9 - 23 18]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // j

    IL_001a: br.s         IL_0047
    // start of loop, entry point: IL_0047

      // [24 10 - 24 19]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      i

      IL_001f: br.s         IL_003e
      // start of loop, entry point: IL_003e

        // [25 6 - 25 59]
        IL_0021: ldloc.2      // resutlt
        IL_0022: ldloc.s      i
        IL_0024: ldloc.3      // j
        IL_0025: ldarg.0      // original
        IL_0026: ldloc.s      i
        IL_0028: ldloc.3      // j
        IL_0029: call         float64[] Recognizer.MedianFilterTask::GetWindow(float64[0...,0...], int32, int32)
        IL_002e: call         float64 Recognizer.MedianFilterTask::GetMedian(float64[])
        IL_0033: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [24 28 - 24 31]
        IL_0038: ldloc.s      i
        IL_003a: ldc.i4.1
        IL_003b: add
        IL_003c: stloc.s      i

        // [24 21 - 24 26]
        IL_003e: ldloc.s      i
        IL_0040: ldloc.1      // w
        IL_0041: blt.s        IL_0021
      // end of loop

      // [23 27 - 23 30]
      IL_0043: ldloc.3      // j
      IL_0044: ldc.i4.1
      IL_0045: add
      IL_0046: stloc.3      // j

      // [23 20 - 23 25]
      IL_0047: ldloc.3      // j
      IL_0048: ldloc.0      // h
      IL_0049: blt.s        IL_001c
    // end of loop

    // [27 4 - 27 19]
    IL_004b: ldloc.2      // resutlt
    IL_004c: ret

  } // end of method MedianFilterTask::MedianFilter

  .method private hidebysig static float64[]
    GetWindow(
      float64[0...,0...] original,
      int32 x,
      int32 y
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] class [mscorlib]System.Collections.Generic.List`1<float64> window,
      [3] int32 dx,
      [4] int32 dy,
      [5] bool cond
    )

    // [32 4 - 32 33]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // w

    // [32 35 - 32 60]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // h

    // [33 4 - 33 45]
    IL_0010: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0015: stloc.2      // window

    // [34 9 - 34 20]
    IL_0016: ldc.i4.m1
    IL_0017: stloc.3      // dx

    IL_0018: br.s         IL_0068
    // start of loop, entry point: IL_0068

      // [35 10 - 35 21]
      IL_001a: ldc.i4.m1
      IL_001b: stloc.s      dy

      IL_001d: br.s         IL_005f
      // start of loop, entry point: IL_005f

        // [37 6 - 37 59]
        IL_001f: ldarg.1      // x
        IL_0020: ldloc.3      // dx
        IL_0021: add
        IL_0022: ldc.i4.0
        IL_0023: blt.s        IL_0037
        IL_0025: ldarg.1      // x
        IL_0026: ldloc.3      // dx
        IL_0027: add
        IL_0028: ldloc.0      // w
        IL_0029: bge.s        IL_0037
        IL_002b: ldarg.2      // y
        IL_002c: ldloc.s      dy
        IL_002e: add
        IL_002f: ldc.i4.0
        IL_0030: clt
        IL_0032: ldc.i4.0
        IL_0033: ceq
        IL_0035: br.s         IL_0038
        IL_0037: ldc.i4.0
        IL_0038: stloc.s      cond

        // [38 6 - 38 29]
        IL_003a: ldarg.2      // y
        IL_003b: ldloc.s      dy
        IL_003d: add
        IL_003e: ldloc.1      // h
        IL_003f: clt
        IL_0041: ldloc.s      cond
        IL_0043: and
        IL_0044: brfalse.s    IL_0059

        // [39 7 - 39 44]
        IL_0046: ldloc.2      // window
        IL_0047: ldarg.0      // original
        IL_0048: ldarg.1      // x
        IL_0049: ldloc.3      // dx
        IL_004a: add
        IL_004b: ldarg.2      // y
        IL_004c: ldloc.s      dy
        IL_004e: add
        IL_004f: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0054: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

        // [35 32 - 35 36]
        IL_0059: ldloc.s      dy
        IL_005b: ldc.i4.1
        IL_005c: add
        IL_005d: stloc.s      dy

        // [35 23 - 35 30]
        IL_005f: ldloc.s      dy
        IL_0061: ldc.i4.1
        IL_0062: ble.s        IL_001f
      // end of loop

      // [34 31 - 34 35]
      IL_0064: ldloc.3      // dx
      IL_0065: ldc.i4.1
      IL_0066: add
      IL_0067: stloc.3      // dx

      // [34 22 - 34 29]
      IL_0068: ldloc.3      // dx
      IL_0069: ldc.i4.1
      IL_006a: ble.s        IL_001a
    // end of loop

    // [41 4 - 41 28]
    IL_006c: ldloc.2      // window
    IL_006d: callvirt     instance !0/*float64*/[] class [mscorlib]System.Collections.Generic.List`1<float64>::ToArray()
    IL_0072: ret

  } // end of method MedianFilterTask::GetWindow

  .method private hidebysig static float64
    GetMedian(
      float64[] window
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64[] sortedWow
    )

    // [46 4 - 46 53]
    IL_0000: ldarg.0      // window
    IL_0001: ldsfld       class [mscorlib]System.Func`2<float64, float64> Recognizer.MedianFilterTask/'<>c'::'<>9__2_0'
    IL_0006: dup
    IL_0007: brtrue.s     IL_0020
    IL_0009: pop
    IL_000a: ldsfld       class Recognizer.MedianFilterTask/'<>c' Recognizer.MedianFilterTask/'<>c'::'<>9'
    IL_000f: ldftn        instance float64 Recognizer.MedianFilterTask/'<>c'::'<GetMedian>b__2_0'(float64)
    IL_0015: newobj       instance void class [mscorlib]System.Func`2<float64, float64>::.ctor(object, native int)
    IL_001a: dup
    IL_001b: stsfld       class [mscorlib]System.Func`2<float64, float64> Recognizer.MedianFilterTask/'<>c'::'<>9__2_0'
    IL_0020: call         class [System.Core]System.Linq.IOrderedEnumerable`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::OrderBy<float64, float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, !!1/*float64*/>)
    IL_0025: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_002a: stloc.0      // sortedWow

    // [47 4 - 47 34]
    IL_002b: ldloc.0      // sortedWow
    IL_002c: ldlen
    IL_002d: conv.i4
    IL_002e: ldc.i4.2
    IL_002f: rem
    IL_0030: ldc.i4.1
    IL_0031: bne.un.s     IL_003b

    // [47 35 - 47 74]
    IL_0033: ldloc.0      // sortedWow
    IL_0034: ldloc.0      // sortedWow
    IL_0035: ldlen
    IL_0036: conv.i4
    IL_0037: ldc.i4.2
    IL_0038: div
    IL_0039: ldelem.r8
    IL_003a: ret

    // [48 9 - 48 92]
    IL_003b: ldloc.0      // sortedWow
    IL_003c: ldloc.0      // sortedWow
    IL_003d: ldlen
    IL_003e: conv.i4
    IL_003f: ldc.i4.2
    IL_0040: div
    IL_0041: ldelem.r8
    IL_0042: ldloc.0      // sortedWow
    IL_0043: ldloc.0      // sortedWow
    IL_0044: ldlen
    IL_0045: conv.i4
    IL_0046: ldc.i4.2
    IL_0047: div
    IL_0048: ldc.i4.1
    IL_0049: sub
    IL_004a: ldelem.r8
    IL_004b: add
    IL_004c: ldc.r8       2
    IL_0055: div
    IL_0056: ret

  } // end of method MedianFilterTask::GetMedian
} // end of class Recognizer.MedianFilterTask

// Type: Recognizer.SobelFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 86A434FC-6FD0-4111-8DA7-377AC45ADAE4
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.SobelFilterTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static float64[0...,0...]
    TransposeMatrix(
      float64[0...,0...] matrix
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 size,
      [1] float64[0...,0...] res,
      [2] int32 j,
      [3] int32 i
    )

    // [9 13 - 9 44]
    IL_0000: ldarg.0      // matrix
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // size

    // [10 13 - 10 61]
    IL_0008: ldarg.0      // matrix
    IL_0009: ldc.i4.0
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: ldloc.0      // size
    IL_0010: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0015: stloc.1      // res

    // [11 18 - 11 27]
    IL_0016: ldc.i4.0
    IL_0017: stloc.2      // j

    IL_0018: br.s         IL_0040
    // start of loop, entry point: IL_0040

      // [12 22 - 12 31]
      IL_001a: ldc.i4.0
      IL_001b: stloc.3      // i

      IL_001c: br.s         IL_0032
      // start of loop, entry point: IL_0032

        // [13 21 - 13 46]
        IL_001e: ldloc.1      // res
        IL_001f: ldloc.3      // i
        IL_0020: ldloc.2      // j
        IL_0021: ldarg.0      // matrix
        IL_0022: ldloc.2      // j
        IL_0023: ldloc.3      // i
        IL_0024: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0029: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [12 58 - 12 61]
        IL_002e: ldloc.3      // i
        IL_002f: ldc.i4.1
        IL_0030: add
        IL_0031: stloc.3      // i

        // [12 33 - 12 56]
        IL_0032: ldloc.3      // i
        IL_0033: ldarg.0      // matrix
        IL_0034: ldc.i4.0
        IL_0035: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
        IL_003a: blt.s        IL_001e
      // end of loop

      // [11 39 - 11 42]
      IL_003c: ldloc.2      // j
      IL_003d: ldc.i4.1
      IL_003e: add
      IL_003f: stloc.2      // j

      // [11 29 - 11 37]
      IL_0040: ldloc.2      // j
      IL_0041: ldloc.0      // size
      IL_0042: blt.s        IL_001a
    // end of loop

    // [14 13 - 14 24]
    IL_0044: ldloc.1      // res
    IL_0045: ret

  } // end of method SobelFilterTask::TransposeMatrix

  .method private hidebysig static float64
    MultiplyPixelsAndMatrix(
      float64[0...,0...] pixels,
      float64[0...,0...] matrix,
      int32 x,
      int32 y,
      int32 d
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] float64 ressss,
      [1] int32 sz2,
      [2] int32 j,
      [3] int32 i
    )

    // [19 13 - 19 31]
    IL_0000: ldc.r8       0.0
    IL_0009: stloc.0      // ressss

    // [20 13 - 20 43]
    IL_000a: ldarg.1      // matrix
    IL_000b: ldc.i4.0
    IL_000c: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0011: stloc.1      // sz2

    // [21 18 - 21 27]
    IL_0012: ldc.i4.0
    IL_0013: stloc.2      // j

    IL_0014: br.s         IL_0044
    // start of loop, entry point: IL_0044

      // [22 22 - 22 31]
      IL_0016: ldc.i4.0
      IL_0017: stloc.3      // i

      IL_0018: br.s         IL_003c
      // start of loop, entry point: IL_003c

        // [23 21 - 23 75]
        IL_001a: ldloc.0      // ressss
        IL_001b: ldarg.1      // matrix
        IL_001c: ldloc.3      // i
        IL_001d: ldloc.2      // j
        IL_001e: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0023: ldarg.0      // pixels
        IL_0024: ldarg.2      // x
        IL_0025: ldloc.3      // i
        IL_0026: add
        IL_0027: ldarg.s      d
        IL_0029: sub
        IL_002a: ldarg.3      // y
        IL_002b: ldloc.2      // j
        IL_002c: add
        IL_002d: ldarg.s      d
        IL_002f: sub
        IL_0030: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0035: mul
        IL_0036: add
        IL_0037: stloc.0      // ressss

        // [22 42 - 22 45]
        IL_0038: ldloc.3      // i
        IL_0039: ldc.i4.1
        IL_003a: add
        IL_003b: stloc.3      // i

        // [22 33 - 22 40]
        IL_003c: ldloc.3      // i
        IL_003d: ldloc.1      // sz2
        IL_003e: blt.s        IL_001a
      // end of loop

      // [21 54 - 21 57]
      IL_0040: ldloc.2      // j
      IL_0041: ldc.i4.1
      IL_0042: add
      IL_0043: stloc.2      // j

      // [21 29 - 21 52]
      IL_0044: ldloc.2      // j
      IL_0045: ldarg.1      // matrix
      IL_0046: ldc.i4.0
      IL_0047: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
      IL_004c: blt.s        IL_0016
    // end of loop

    // [24 13 - 24 27]
    IL_004e: ldloc.0      // ressss
    IL_004f: ret

  } // end of method SobelFilterTask::MultiplyPixelsAndMatrix

  .method public hidebysig static float64[0...,0...]
    SobelFilter(
      float64[0...,0...] g,
      float64[0...,0...] sx
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] int32 d,
      [3] float64[0...,0...] sy,
      [4] float64[0...,0...] result,
      [5] int32 y,
      [6] int32 x,
      [7] float64 dx_2,
      [8] float64 dy_2
    )

    // [29 13 - 29 35]
    IL_0000: ldarg.0      // g
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // w

    // [29 37 - 29 55]
    IL_0008: ldarg.0      // g
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // h

    // [29 57 - 29 80]
    IL_0010: ldarg.1      // sx
    IL_0011: ldc.i4.0
    IL_0012: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0017: ldc.i4.2
    IL_0018: div
    IL_0019: stloc.2      // d

    // [30 13 - 30 42]
    IL_001a: ldarg.1      // sx
    IL_001b: call         float64[0...,0...] Recognizer.SobelFilterTask::TransposeMatrix(float64[0...,0...])
    IL_0020: stloc.3      // sy

    // [31 13 - 31 43]
    IL_0021: ldloc.0      // w
    IL_0022: ldloc.1      // h
    IL_0023: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0028: stloc.s      result

    // [33 18 - 33 27]
    IL_002a: ldloc.2      // d
    IL_002b: stloc.s      y

    IL_002d: br.s         IL_007c
    // start of loop, entry point: IL_007c

      // [34 22 - 34 31]
      IL_002f: ldloc.2      // d
      IL_0030: stloc.s      x

      IL_0032: br.s         IL_006f
      // start of loop, entry point: IL_006f

        // [36 21 - 36 70]
        IL_0034: ldarg.0      // g
        IL_0035: ldloc.3      // sy
        IL_0036: ldloc.s      x
        IL_0038: ldloc.s      y
        IL_003a: ldloc.2      // d
        IL_003b: call         float64 Recognizer.SobelFilterTask::MultiplyPixelsAndMatrix(float64[0...,0...], float64[0...,0...], int32, int32, int32)

        // [37 21 - 37 70]
        IL_0040: ldarg.0      // g
        IL_0041: ldarg.1      // sx
        IL_0042: ldloc.s      x
        IL_0044: ldloc.s      y
        IL_0046: ldloc.2      // d
        IL_0047: call         float64 Recognizer.SobelFilterTask::MultiplyPixelsAndMatrix(float64[0...,0...], float64[0...,0...], int32, int32, int32)

        // [38 21 - 38 40]
        IL_004c: dup
        IL_004d: mul
        IL_004e: stloc.s      dx_2

        // [39 21 - 39 40]
        IL_0050: dup
        IL_0051: mul
        IL_0052: stloc.s      dy_2

        // [40 21 - 40 59]
        IL_0054: ldloc.s      result
        IL_0056: ldloc.s      x
        IL_0058: ldloc.s      y
        IL_005a: ldloc.s      dx_2
        IL_005c: ldloc.s      dy_2
        IL_005e: add
        IL_005f: call         float64 [mscorlib]System.Math::Sqrt(float64)
        IL_0064: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [34 44 - 34 47]
        IL_0069: ldloc.s      x
        IL_006b: ldc.i4.1
        IL_006c: add
        IL_006d: stloc.s      x

        // [34 33 - 34 42]
        IL_006f: ldloc.s      x
        IL_0071: ldloc.0      // w
        IL_0072: ldloc.2      // d
        IL_0073: sub
        IL_0074: blt.s        IL_0034
      // end of loop

      // [33 40 - 33 43]
      IL_0076: ldloc.s      y
      IL_0078: ldc.i4.1
      IL_0079: add
      IL_007a: stloc.s      y

      // [33 29 - 33 38]
      IL_007c: ldloc.s      y
      IL_007e: ldloc.1      // h
      IL_007f: ldloc.2      // d
      IL_0080: sub
      IL_0081: blt.s        IL_002f
    // end of loop

    // [42 13 - 42 27]
    IL_0083: ldloc.s      result
    IL_0085: ret

  } // end of method SobelFilterTask::SobelFilter
} // end of class Recognizer.SobelFilterTask

// Type: Recognizer.ThresholdFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 86A434FC-6FD0-4111-8DA7-377AC45ADAE4
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author4\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.ThresholdFilterTask
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class Recognizer.ThresholdFilterTask/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<float64, float64> '<>9__1_0'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void Recognizer.ThresholdFilterTask/'<>c'::.ctor()
      IL_0005: stsfld       class Recognizer.ThresholdFilterTask/'<>c' Recognizer.ThresholdFilterTask/'<>c'::'<>9'
      IL_000a: ret

    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance float64
      '<FilterByThreshold>b__1_0'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [25 74 - 25 75]
      IL_0000: ldarg.1      // v
      IL_0001: ret

    } // end of method '<>c'::'<FilterByThreshold>b__1_0'
  } // end of class '<>c'

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<float64>
    GetPixelsFromEverywhere(
      float64[0...,0...] original
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] class [mscorlib]System.Collections.Generic.List`1<float64> res,
      [3] int32 j,
      [4] int32 i
    )

    // [11 4 - 11 33]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // w

    // [11 35 - 11 60]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // h

    // [12 4 - 12 47]
    IL_0010: ldloc.0      // w
    IL_0011: ldloc.1      // h
    IL_0012: mul
    IL_0013: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor(int32)
    IL_0018: stloc.2      // res

    // [13 9 - 13 18]
    IL_0019: ldc.i4.0
    IL_001a: stloc.3      // j

    IL_001b: br.s         IL_0040
    // start of loop, entry point: IL_0040

      // [14 10 - 14 19]
      IL_001d: ldc.i4.0
      IL_001e: stloc.s      i

      IL_0020: br.s         IL_0037
      // start of loop, entry point: IL_0037

        // [15 6 - 15 30]
        IL_0022: ldloc.2      // res
        IL_0023: ldarg.0      // original
        IL_0024: ldloc.s      i
        IL_0026: ldloc.3      // j
        IL_0027: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_002c: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

        // [14 28 - 14 31]
        IL_0031: ldloc.s      i
        IL_0033: ldc.i4.1
        IL_0034: add
        IL_0035: stloc.s      i

        // [14 21 - 14 26]
        IL_0037: ldloc.s      i
        IL_0039: ldloc.0      // w
        IL_003a: blt.s        IL_0022
      // end of loop

      // [13 27 - 13 30]
      IL_003c: ldloc.3      // j
      IL_003d: ldc.i4.1
      IL_003e: add
      IL_003f: stloc.3      // j

      // [13 20 - 13 25]
      IL_0040: ldloc.3      // j
      IL_0041: ldloc.1      // h
      IL_0042: blt.s        IL_001d
    // end of loop

    // [16 4 - 16 15]
    IL_0044: ldloc.2      // res
    IL_0045: ret

  } // end of method ThresholdFilterTask::GetPixelsFromEverywhere

  .method public hidebysig static float64[0...,0...]
    FilterByThreshold(
      float64[0...,0...] original,
      float64 whitePixelsFraction
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] int32 minWhitePixels,
      [3] float64 t,
      [4] float64[0...,0...] res,
      [5] int32 j,
      [6] int32 i
    )

    // [21 4 - 21 34]
    IL_0000: ldc.r8       -1
    IL_0009: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_000e: pop

    // [22 4 - 22 33]
    IL_000f: ldarg.0      // original
    IL_0010: ldc.i4.0
    IL_0011: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0016: stloc.0      // w

    // [22 35 - 22 60]
    IL_0017: ldarg.0      // original
    IL_0018: ldc.i4.1
    IL_0019: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_001e: stloc.1      // h

    // [23 4 - 23 60]
    IL_001f: ldarg.1      // whitePixelsFraction
    IL_0020: ldloc.0      // w
    IL_0021: conv.r8
    IL_0022: mul
    IL_0023: ldloc.1      // h
    IL_0024: conv.r8
    IL_0025: mul
    IL_0026: conv.i4
    IL_0027: stloc.2      // minWhitePixels

    // [25 4 - 25 86]
    IL_0028: ldarg.0      // original
    IL_0029: call         class [mscorlib]System.Collections.Generic.List`1<float64> Recognizer.ThresholdFilterTask::GetPixelsFromEverywhere(float64[0...,0...])
    IL_002e: ldsfld       class [mscorlib]System.Func`2<float64, float64> Recognizer.ThresholdFilterTask/'<>c'::'<>9__1_0'
    IL_0033: dup
    IL_0034: brtrue.s     IL_004d
    IL_0036: pop
    IL_0037: ldsfld       class Recognizer.ThresholdFilterTask/'<>c' Recognizer.ThresholdFilterTask/'<>c'::'<>9'
    IL_003c: ldftn        instance float64 Recognizer.ThresholdFilterTask/'<>c'::'<FilterByThreshold>b__1_0'(float64)
    IL_0042: newobj       instance void class [mscorlib]System.Func`2<float64, float64>::.ctor(object, native int)
    IL_0047: dup
    IL_0048: stsfld       class [mscorlib]System.Func`2<float64, float64> Recognizer.ThresholdFilterTask/'<>c'::'<>9__1_0'
    IL_004d: call         class [System.Core]System.Linq.IOrderedEnumerable`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::OrderByDescending<float64, float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, !!1/*float64*/>)
    IL_0052: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::ToList<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)

    // [27 4 - 27 42]
    IL_0057: ldloc.2      // minWhitePixels
    IL_0058: ldc.i4.1
    IL_0059: sub
    IL_005a: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_005f: stloc.3      // t

    // [28 4 - 28 28]
    IL_0060: ldloc.2      // minWhitePixels
    IL_0061: ldc.i4.0
    IL_0062: bgt.s        IL_006e

    // [29 5 - 29 13]
    IL_0064: ldc.r8       255
    IL_006d: stloc.3      // t

    // [31 4 - 31 31]
    IL_006e: ldloc.0      // w
    IL_006f: ldloc.1      // h
    IL_0070: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0075: stloc.s      res

    // [32 9 - 32 18]
    IL_0077: ldc.i4.0
    IL_0078: stloc.s      j

    IL_007a: br.s         IL_00af
    // start of loop, entry point: IL_00af

      // [33 10 - 33 19]
      IL_007c: ldc.i4.0
      IL_007d: stloc.s      i

      IL_007f: br.s         IL_00a4
      // start of loop, entry point: IL_00a4

        // [34 6 - 34 46]
        IL_0081: ldloc.s      res
        IL_0083: ldloc.s      i
        IL_0085: ldloc.s      j
        IL_0087: ldarg.0      // original
        IL_0088: ldloc.s      i
        IL_008a: ldloc.s      j
        IL_008c: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0091: ldloc.3      // t
        IL_0092: bge.s        IL_0097
        IL_0094: ldc.i4.0
        IL_0095: br.s         IL_0098
        IL_0097: ldc.i4.1
        IL_0098: conv.r8
        IL_0099: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [33 28 - 33 31]
        IL_009e: ldloc.s      i
        IL_00a0: ldc.i4.1
        IL_00a1: add
        IL_00a2: stloc.s      i

        // [33 21 - 33 26]
        IL_00a4: ldloc.s      i
        IL_00a6: ldloc.0      // w
        IL_00a7: blt.s        IL_0081
      // end of loop

      // [32 27 - 32 30]
      IL_00a9: ldloc.s      j
      IL_00ab: ldc.i4.1
      IL_00ac: add
      IL_00ad: stloc.s      j

      // [32 20 - 32 25]
      IL_00af: ldloc.s      j
      IL_00b1: ldloc.1      // h
      IL_00b2: blt.s        IL_007c
    // end of loop

    // [36 4 - 36 15]
    IL_00b4: ldloc.s      res
    IL_00b6: ret

  } // end of method ThresholdFilterTask::FilterByThreshold
} // end of class Recognizer.ThresholdFilterTask
