// Type: Recognizer.GrayscaleTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 85B81BD7-4AF3-4BE7-B7A8-0D5D0AAECDCB
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.GrayscaleTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    ToGrayscale(
      class Recognizer.Pixel[0...,0...] original
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] float64[0...,0...] res,
      [3] int32 j,
      [4] int32 i
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

    // [25 4 - 25 31]
    IL_0010: ldloc.0      // w
    IL_0011: ldloc.1      // h
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // res

    // [27 9 - 27 18]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // j

    IL_001a: br.s         IL_0047
    // start of loop, entry point: IL_0047

      // [28 10 - 28 19]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      i

      IL_001f: br.s         IL_003e
      // start of loop, entry point: IL_003e

        // [29 6 - 29 47]
        IL_0021: ldloc.2      // res
        IL_0022: ldloc.s      i
        IL_0024: ldloc.3      // j
        IL_0025: ldarg.0      // original
        IL_0026: ldloc.s      i
        IL_0028: ldloc.3      // j
        IL_0029: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_002e: call         float64 Recognizer.GrayscaleTask::GetGrayValue(class Recognizer.Pixel)
        IL_0033: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [28 28 - 28 31]
        IL_0038: ldloc.s      i
        IL_003a: ldc.i4.1
        IL_003b: add
        IL_003c: stloc.s      i

        // [28 21 - 28 26]
        IL_003e: ldloc.s      i
        IL_0040: ldloc.0      // w
        IL_0041: blt.s        IL_0021
      // end of loop

      // [27 27 - 27 30]
      IL_0043: ldloc.3      // j
      IL_0044: ldc.i4.1
      IL_0045: add
      IL_0046: stloc.3      // j

      // [27 20 - 27 25]
      IL_0047: ldloc.3      // j
      IL_0048: ldloc.1      // h
      IL_0049: blt.s        IL_001c
    // end of loop

    // [31 4 - 31 15]
    IL_004b: ldloc.2      // res
    IL_004c: ret

  } // end of method GrayscaleTask::ToGrayscale

  .method private hidebysig static float64
    GetGrayValue(
      class Recognizer.Pixel pixel
    ) cil managed
  {
    .maxstack 3

    // [36 4 - 36 71]
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

  } // end of method GrayscaleTask::GetGrayValue
} // end of class Recognizer.GrayscaleTask

// Type: Recognizer.HoughTransformTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 85B81BD7-4AF3-4BE7-B7A8-0D5D0AAECDCB
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.HoughTransformTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class Recognizer.Line[]
    HoughAlgorithm(
      float64[0...,0...] original
    ) cil managed
  {
    .maxstack 7
    .locals init (
      [0] int32 width,
      [1] int32 height
    )

    // [7 13 - 7 47]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [9 13 - 9 48]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [10 13 - 14 15]
    IL_0010: ldc.i4.2
    IL_0011: newarr       Recognizer.Line
    IL_0016: dup
    IL_0017: ldc.i4.0
    IL_0018: ldc.i4.0
    IL_0019: ldc.i4.0
    IL_001a: ldloc.0      // width
    IL_001b: ldloc.1      // height
    IL_001c: newobj       instance void Recognizer.Line::.ctor(int32, int32, int32, int32)
    IL_0021: stelem.ref
    IL_0022: dup
    IL_0023: ldc.i4.1
    IL_0024: ldc.i4.0
    IL_0025: ldloc.1      // height
    IL_0026: ldloc.0      // width
    IL_0027: ldc.i4.0
    IL_0028: newobj       instance void Recognizer.Line::.ctor(int32, int32, int32, int32)
    IL_002d: stelem.ref
    IL_002e: ret

  } // end of method HoughTransformTask::HoughAlgorithm
} // end of class Recognizer.HoughTransformTask

// Type: Recognizer.MedianFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 85B81BD7-4AF3-4BE7-B7A8-0D5D0AAECDCB
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.pdb

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

      // [42 43 - 42 44]
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
      [0] int32 w,
      [1] int32 h,
      [2] float64[0...,0...] res,
      [3] int32 j,
      [4] int32 i
    )

    // [19 4 - 19 33]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // w

    // [19 35 - 19 60]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // h

    // [20 4 - 20 31]
    IL_0010: ldloc.0      // w
    IL_0011: ldloc.1      // h
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // res

    // [22 9 - 22 18]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // j

    IL_001a: br.s         IL_0047
    // start of loop, entry point: IL_0047

      // [23 10 - 23 19]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      i

      IL_001f: br.s         IL_003e
      // start of loop, entry point: IL_003e

        // [24 6 - 24 55]
        IL_0021: ldloc.2      // res
        IL_0022: ldloc.s      i
        IL_0024: ldloc.3      // j
        IL_0025: ldarg.0      // original
        IL_0026: ldloc.s      i
        IL_0028: ldloc.3      // j
        IL_0029: call         float64[] Recognizer.MedianFilterTask::GetWindow(float64[0...,0...], int32, int32)
        IL_002e: call         float64 Recognizer.MedianFilterTask::GetMedian(float64[])
        IL_0033: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [23 28 - 23 31]
        IL_0038: ldloc.s      i
        IL_003a: ldc.i4.1
        IL_003b: add
        IL_003c: stloc.s      i

        // [23 21 - 23 26]
        IL_003e: ldloc.s      i
        IL_0040: ldloc.0      // w
        IL_0041: blt.s        IL_0021
      // end of loop

      // [22 27 - 22 30]
      IL_0043: ldloc.3      // j
      IL_0044: ldc.i4.1
      IL_0045: add
      IL_0046: stloc.3      // j

      // [22 20 - 22 25]
      IL_0047: ldloc.3      // j
      IL_0048: ldloc.1      // h
      IL_0049: blt.s        IL_001c
    // end of loop

    // [26 4 - 26 15]
    IL_004b: ldloc.2      // res
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
      [4] int32 dy
    )

    // [31 4 - 31 33]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // w

    // [31 35 - 31 60]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // h

    // [32 4 - 32 45]
    IL_0010: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0015: stloc.2      // window

    // [33 9 - 33 20]
    IL_0016: ldc.i4.m1
    IL_0017: stloc.3      // dx

    IL_0018: br.s         IL_005b
    // start of loop, entry point: IL_005b

      // [34 10 - 34 21]
      IL_001a: ldc.i4.m1
      IL_001b: stloc.s      dy

      IL_001d: br.s         IL_0052
      // start of loop, entry point: IL_0052

        // [35 6 - 35 65]
        IL_001f: ldarg.1      // x
        IL_0020: ldloc.3      // dx
        IL_0021: add
        IL_0022: ldc.i4.0
        IL_0023: blt.s        IL_004c
        IL_0025: ldarg.1      // x
        IL_0026: ldloc.3      // dx
        IL_0027: add
        IL_0028: ldloc.0      // w
        IL_0029: bge.s        IL_004c
        IL_002b: ldarg.2      // y
        IL_002c: ldloc.s      dy
        IL_002e: add
        IL_002f: ldc.i4.0
        IL_0030: blt.s        IL_004c
        IL_0032: ldarg.2      // y
        IL_0033: ldloc.s      dy
        IL_0035: add
        IL_0036: ldloc.1      // h
        IL_0037: bge.s        IL_004c

        // [36 7 - 36 44]
        IL_0039: ldloc.2      // window
        IL_003a: ldarg.0      // original
        IL_003b: ldarg.1      // x
        IL_003c: ldloc.3      // dx
        IL_003d: add
        IL_003e: ldarg.2      // y
        IL_003f: ldloc.s      dy
        IL_0041: add
        IL_0042: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0047: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

        // [34 32 - 34 36]
        IL_004c: ldloc.s      dy
        IL_004e: ldc.i4.1
        IL_004f: add
        IL_0050: stloc.s      dy

        // [34 23 - 34 30]
        IL_0052: ldloc.s      dy
        IL_0054: ldc.i4.1
        IL_0055: ble.s        IL_001f
      // end of loop

      // [33 31 - 33 35]
      IL_0057: ldloc.3      // dx
      IL_0058: ldc.i4.1
      IL_0059: add
      IL_005a: stloc.3      // dx

      // [33 22 - 33 29]
      IL_005b: ldloc.3      // dx
      IL_005c: ldc.i4.1
      IL_005d: ble.s        IL_001a
    // end of loop

    // [37 4 - 37 28]
    IL_005f: ldloc.2      // window
    IL_0060: callvirt     instance !0/*float64*/[] class [mscorlib]System.Collections.Generic.List`1<float64>::ToArray()
    IL_0065: ret

  } // end of method MedianFilterTask::GetWindow

  .method private hidebysig static float64
    GetMedian(
      float64[] window
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64[] sortedWindow,
      [1] int32 len
    )

    // [42 4 - 42 56]
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
    IL_002a: stloc.0      // sortedWindow

    // [43 4 - 43 34]
    IL_002b: ldloc.0      // sortedWindow
    IL_002c: ldlen
    IL_002d: conv.i4
    IL_002e: stloc.1      // len

    // [44 4 - 44 21]
    IL_002f: ldloc.1      // len
    IL_0030: ldc.i4.2
    IL_0031: rem
    IL_0032: ldc.i4.1
    IL_0033: bne.un.s     IL_003b

    // [44 22 - 44 51]
    IL_0035: ldloc.0      // sortedWindow
    IL_0036: ldloc.1      // len
    IL_0037: ldc.i4.2
    IL_0038: div
    IL_0039: ldelem.r8
    IL_003a: ret

    // [45 9 - 45 72]
    IL_003b: ldloc.0      // sortedWindow
    IL_003c: ldloc.1      // len
    IL_003d: ldc.i4.2
    IL_003e: div
    IL_003f: ldelem.r8
    IL_0040: ldloc.0      // sortedWindow
    IL_0041: ldloc.1      // len
    IL_0042: ldc.i4.2
    IL_0043: div
    IL_0044: ldc.i4.1
    IL_0045: sub
    IL_0046: ldelem.r8
    IL_0047: add
    IL_0048: ldc.r8       2
    IL_0051: div
    IL_0052: ret

  } // end of method MedianFilterTask::GetMedian
} // end of class Recognizer.MedianFilterTask

// Type: Recognizer.SobelFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 85B81BD7-4AF3-4BE7-B7A8-0D5D0AAECDCB
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.pdb

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
      [0] int32 sz,
      [1] float64[0...,0...] res,
      [2] int32 j,
      [3] int32 i
    )

    // [9 13 - 9 42]
    IL_0000: ldarg.0      // matrix
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // sz

    // [10 13 - 10 42]
    IL_0008: ldloc.0      // sz
    IL_0009: ldloc.0      // sz
    IL_000a: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_000f: stloc.1      // res

    // [11 18 - 11 27]
    IL_0010: ldc.i4.0
    IL_0011: stloc.2      // j

    IL_0012: br.s         IL_0034
    // start of loop, entry point: IL_0034

      // [12 22 - 12 31]
      IL_0014: ldc.i4.0
      IL_0015: stloc.3      // i

      IL_0016: br.s         IL_002c
      // start of loop, entry point: IL_002c

        // [13 21 - 13 46]
        IL_0018: ldloc.1      // res
        IL_0019: ldloc.3      // i
        IL_001a: ldloc.2      // j
        IL_001b: ldarg.0      // matrix
        IL_001c: ldloc.2      // j
        IL_001d: ldloc.3      // i
        IL_001e: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0023: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [12 41 - 12 44]
        IL_0028: ldloc.3      // i
        IL_0029: ldc.i4.1
        IL_002a: add
        IL_002b: stloc.3      // i

        // [12 33 - 12 39]
        IL_002c: ldloc.3      // i
        IL_002d: ldloc.0      // sz
        IL_002e: blt.s        IL_0018
      // end of loop

      // [11 37 - 11 40]
      IL_0030: ldloc.2      // j
      IL_0031: ldc.i4.1
      IL_0032: add
      IL_0033: stloc.2      // j

      // [11 29 - 11 35]
      IL_0034: ldloc.2      // j
      IL_0035: ldloc.0      // sz
      IL_0036: blt.s        IL_0014
    // end of loop

    // [14 13 - 14 24]
    IL_0038: ldloc.1      // res
    IL_0039: ret

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
      [0] float64 res,
      [1] int32 sz,
      [2] int32 j,
      [3] int32 i
    )

    // [19 13 - 19 28]
    IL_0000: ldc.r8       0.0
    IL_0009: stloc.0      // res

    // [20 13 - 20 42]
    IL_000a: ldarg.1      // matrix
    IL_000b: ldc.i4.0
    IL_000c: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0011: stloc.1      // sz

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

        // [23 21 - 23 72]
        IL_001a: ldloc.0      // res
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
        IL_0037: stloc.0      // res

        // [22 41 - 22 44]
        IL_0038: ldloc.3      // i
        IL_0039: ldc.i4.1
        IL_003a: add
        IL_003b: stloc.3      // i

        // [22 33 - 22 39]
        IL_003c: ldloc.3      // i
        IL_003d: ldloc.1      // sz
        IL_003e: blt.s        IL_001a
      // end of loop

      // [21 37 - 21 40]
      IL_0040: ldloc.2      // j
      IL_0041: ldc.i4.1
      IL_0042: add
      IL_0043: stloc.2      // j

      // [21 29 - 21 35]
      IL_0044: ldloc.2      // j
      IL_0045: ldloc.1      // sz
      IL_0046: blt.s        IL_0016
    // end of loop

    // [24 13 - 24 24]
    IL_0048: ldloc.0      // res
    IL_0049: ret

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
      [7] float64 gx,
      [8] float64 gy
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

    IL_002d: br.s         IL_007e
    // start of loop, entry point: IL_007e

      // [34 22 - 34 31]
      IL_002f: ldloc.2      // d
      IL_0030: stloc.s      x

      IL_0032: br.s         IL_0071
      // start of loop, entry point: IL_0071

        // [36 21 - 36 70]
        IL_0034: ldarg.0      // g
        IL_0035: ldarg.1      // sx
        IL_0036: ldloc.s      x
        IL_0038: ldloc.s      y
        IL_003a: ldloc.2      // d
        IL_003b: call         float64 Recognizer.SobelFilterTask::MultiplyPixelsAndMatrix(float64[0...,0...], float64[0...,0...], int32, int32, int32)
        IL_0040: stloc.s      gx

        // [37 21 - 37 70]
        IL_0042: ldarg.0      // g
        IL_0043: ldloc.3      // sy
        IL_0044: ldloc.s      x
        IL_0046: ldloc.s      y
        IL_0048: ldloc.2      // d
        IL_0049: call         float64 Recognizer.SobelFilterTask::MultiplyPixelsAndMatrix(float64[0...,0...], float64[0...,0...], int32, int32, int32)
        IL_004e: stloc.s      gy

        // [38 21 - 38 65]
        IL_0050: ldloc.s      result
        IL_0052: ldloc.s      x
        IL_0054: ldloc.s      y
        IL_0056: ldloc.s      gx
        IL_0058: ldloc.s      gx
        IL_005a: mul
        IL_005b: ldloc.s      gy
        IL_005d: ldloc.s      gy
        IL_005f: mul
        IL_0060: add
        IL_0061: call         float64 [mscorlib]System.Math::Sqrt(float64)
        IL_0066: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [34 44 - 34 47]
        IL_006b: ldloc.s      x
        IL_006d: ldc.i4.1
        IL_006e: add
        IL_006f: stloc.s      x

        // [34 33 - 34 42]
        IL_0071: ldloc.s      x
        IL_0073: ldloc.0      // w
        IL_0074: ldloc.2      // d
        IL_0075: sub
        IL_0076: blt.s        IL_0034
      // end of loop

      // [33 40 - 33 43]
      IL_0078: ldloc.s      y
      IL_007a: ldc.i4.1
      IL_007b: add
      IL_007c: stloc.s      y

      // [33 29 - 33 38]
      IL_007e: ldloc.s      y
      IL_0080: ldloc.1      // h
      IL_0081: ldloc.2      // d
      IL_0082: sub
      IL_0083: blt.s        IL_002f
    // end of loop

    // [40 13 - 40 27]
    IL_0085: ldloc.s      result
    IL_0087: ret

  } // end of method SobelFilterTask::SobelFilter
} // end of class Recognizer.SobelFilterTask

// Type: Recognizer.ThresholdFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 85B81BD7-4AF3-4BE7-B7A8-0D5D0AAECDCB
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author1\bin\Release\Recognizer.pdb

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
      '<ThresholdFilter>b__1_0'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [25 63 - 25 64]
      IL_0000: ldarg.1      // v
      IL_0001: ret

    } // end of method '<>c'::'<ThresholdFilter>b__1_0'
  } // end of class '<>c'

  .method private hidebysig static class [mscorlib]System.Collections.Generic.List`1<float64>
    GetAllPixels(
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

  } // end of method ThresholdFilterTask::GetAllPixels

  .method public hidebysig static float64[0...,0...]
    ThresholdFilter(
      float64[0...,0...] original,
      float64 whitePixelsFraction
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 w,
      [1] int32 h,
      [2] int32 minWhitePixels,
      [3] class [mscorlib]System.Collections.Generic.List`1<float64> pixels,
      [4] float64 t,
      [5] float64[0...,0...] res,
      [6] int32 j,
      [7] int32 i
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

    // [25 4 - 25 75]
    IL_0028: ldarg.0      // original
    IL_0029: call         class [mscorlib]System.Collections.Generic.List`1<float64> Recognizer.ThresholdFilterTask::GetAllPixels(float64[0...,0...])
    IL_002e: ldsfld       class [mscorlib]System.Func`2<float64, float64> Recognizer.ThresholdFilterTask/'<>c'::'<>9__1_0'
    IL_0033: dup
    IL_0034: brtrue.s     IL_004d
    IL_0036: pop
    IL_0037: ldsfld       class Recognizer.ThresholdFilterTask/'<>c' Recognizer.ThresholdFilterTask/'<>c'::'<>9'
    IL_003c: ldftn        instance float64 Recognizer.ThresholdFilterTask/'<>c'::'<ThresholdFilter>b__1_0'(float64)
    IL_0042: newobj       instance void class [mscorlib]System.Func`2<float64, float64>::.ctor(object, native int)
    IL_0047: dup
    IL_0048: stsfld       class [mscorlib]System.Func`2<float64, float64> Recognizer.ThresholdFilterTask/'<>c'::'<>9__1_0'
    IL_004d: call         class [System.Core]System.Linq.IOrderedEnumerable`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::OrderByDescending<float64, float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, !!1/*float64*/>)
    IL_0052: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::ToList<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_0057: stloc.3      // pixels

    // [27 4 - 27 69]
    IL_0058: ldloc.2      // minWhitePixels
    IL_0059: ldc.i4.0
    IL_005a: bgt.s        IL_0067
    IL_005c: ldc.r8       255
    IL_0065: br.s         IL_0070
    IL_0067: ldloc.3      // pixels
    IL_0068: ldloc.2      // minWhitePixels
    IL_0069: ldc.i4.1
    IL_006a: sub
    IL_006b: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_0070: stloc.s      t

    // [29 4 - 29 31]
    IL_0072: ldloc.0      // w
    IL_0073: ldloc.1      // h
    IL_0074: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0079: stloc.s      res

    // [30 9 - 30 18]
    IL_007b: ldc.i4.0
    IL_007c: stloc.s      j

    IL_007e: br.s         IL_00b4
    // start of loop, entry point: IL_00b4

      // [31 10 - 31 19]
      IL_0080: ldc.i4.0
      IL_0081: stloc.s      i

      IL_0083: br.s         IL_00a9
      // start of loop, entry point: IL_00a9

        // [32 6 - 32 46]
        IL_0085: ldloc.s      res
        IL_0087: ldloc.s      i
        IL_0089: ldloc.s      j
        IL_008b: ldarg.0      // original
        IL_008c: ldloc.s      i
        IL_008e: ldloc.s      j
        IL_0090: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0095: ldloc.s      t
        IL_0097: bge.s        IL_009c
        IL_0099: ldc.i4.0
        IL_009a: br.s         IL_009d
        IL_009c: ldc.i4.1
        IL_009d: conv.r8
        IL_009e: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [31 28 - 31 31]
        IL_00a3: ldloc.s      i
        IL_00a5: ldc.i4.1
        IL_00a6: add
        IL_00a7: stloc.s      i

        // [31 21 - 31 26]
        IL_00a9: ldloc.s      i
        IL_00ab: ldloc.0      // w
        IL_00ac: blt.s        IL_0085
      // end of loop

      // [30 27 - 30 30]
      IL_00ae: ldloc.s      j
      IL_00b0: ldc.i4.1
      IL_00b1: add
      IL_00b2: stloc.s      j

      // [30 20 - 30 25]
      IL_00b4: ldloc.s      j
      IL_00b6: ldloc.1      // h
      IL_00b7: blt.s        IL_0080
    // end of loop

    // [34 4 - 34 15]
    IL_00b9: ldloc.s      res
    IL_00bb: ret

  } // end of method ThresholdFilterTask::ThresholdFilter
} // end of class Recognizer.ThresholdFilterTask
