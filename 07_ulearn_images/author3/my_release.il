// Type: Recognizer.GrayscaleTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2A9EE84F-3438-4FF7-909B-544EB9CB2E0B
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.GrayscaleTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    ToGrayscale(
      class Recognizer.Pixel[0...,0...] originalImage
    ) cil managed
  {
    .maxstack 9
    .locals init (
      [0] int32 rows,
      [1] int32 columns,
      [2] float64[0...,0...] resultImage,
      [3] int32 x,
      [4] int32 y
    )

    // [9 4 - 9 50]
    IL_0000: ldarg.0      // originalImage
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetUpperBound(int32)
    IL_0007: ldc.i4.1
    IL_0008: add
    IL_0009: stloc.0      // rows

    // [10 4 - 10 46]
    IL_000a: ldarg.0      // originalImage
    IL_000b: callvirt     instance int32 [mscorlib]System.Array::get_Length()
    IL_0010: ldloc.0      // rows
    IL_0011: div
    IL_0012: stloc.1      // columns

    // [11 4 - 11 48]
    IL_0013: ldloc.0      // rows
    IL_0014: ldloc.1      // columns
    IL_0015: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001a: stloc.2      // resultImage

    // [13 9 - 13 18]
    IL_001b: ldc.i4.0
    IL_001c: stloc.3      // x

    IL_001d: br           IL_00a4
    // start of loop, entry point: IL_00a4

      // [14 10 - 14 19]
      IL_0022: ldc.i4.0
      IL_0023: stloc.s      y

      IL_0025: br.s         IL_009b
      // start of loop, entry point: IL_009b

        // [15 6 - 15 145]
        IL_0027: ldloc.2      // resultImage
        IL_0028: ldloc.3      // x
        IL_0029: ldloc.s      y
        IL_002b: ldc.r8       255
        IL_0034: ldc.r8       0.299
        IL_003d: ldarg.0      // originalImage
        IL_003e: ldloc.3      // x
        IL_003f: ldloc.s      y
        IL_0041: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_0046: callvirt     instance unsigned int8 Recognizer.Pixel::get_R()
        IL_004b: conv.r8
        IL_004c: mul
        IL_004d: ldc.r8       0.587
        IL_0056: ldarg.0      // originalImage
        IL_0057: ldloc.3      // x
        IL_0058: ldloc.s      y
        IL_005a: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_005f: callvirt     instance unsigned int8 Recognizer.Pixel::get_G()
        IL_0064: conv.r8
        IL_0065: mul
        IL_0066: add
        IL_0067: ldc.r8       0.114
        IL_0070: ldarg.0      // originalImage
        IL_0071: ldloc.3      // x
        IL_0072: ldloc.s      y
        IL_0074: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_0079: callvirt     instance unsigned int8 Recognizer.Pixel::get_B()
        IL_007e: conv.r8
        IL_007f: mul
        IL_0080: add
        IL_0081: ldc.r8       255
        IL_008a: div
        IL_008b: call         float64 [mscorlib]System.Math::Min(float64, float64)
        IL_0090: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [14 34 - 14 37]
        IL_0095: ldloc.s      y
        IL_0097: ldc.i4.1
        IL_0098: add
        IL_0099: stloc.s      y

        // [14 21 - 14 32]
        IL_009b: ldloc.s      y
        IL_009d: ldloc.1      // columns
        IL_009e: blt.s        IL_0027
      // end of loop

      // [13 30 - 13 33]
      IL_00a0: ldloc.3      // x
      IL_00a1: ldc.i4.1
      IL_00a2: add
      IL_00a3: stloc.3      // x

      // [13 20 - 13 28]
      IL_00a4: ldloc.3      // x
      IL_00a5: ldloc.0      // rows
      IL_00a6: blt          IL_0022
    // end of loop

    // [17 4 - 17 23]
    IL_00ab: ldloc.2      // resultImage
    IL_00ac: ret

  } // end of method GrayscaleTask::ToGrayscale
} // end of class Recognizer.GrayscaleTask

// Type: Recognizer.HoughTransformTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2A9EE84F-3438-4FF7-909B-544EB9CB2E0B
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.HoughTransformTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class Recognizer.Line[]
    HoughAlgorithm(
      float64[0...,0...] originalImage
    ) cil managed
  {
    .maxstack 7
    .locals init (
      [0] int32 width,
      [1] int32 height
    )

    // [7 13 - 7 52]
    IL_0000: ldarg.0      // originalImage
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [8 13 - 8 53]
    IL_0008: ldarg.0      // originalImage
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
// MVID: 2A9EE84F-3438-4FF7-909B-544EB9CB2E0B
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.MedianFilterTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64
    Mediana(
      int32 fromX,
      int32 fromY,
      int32 toX,
      int32 toY,
      float64[0...,0...] originalImage,
      int32 rows,
      int32 columns
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class [mscorlib]System.Collections.Generic.List`1<float64> medianList,
      [1] int32 i,
      [2] int32 j
    )

    // [20 4 - 20 49]
    IL_0000: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0005: stloc.0      // medianList

    // [21 9 - 21 35]
    IL_0006: ldc.i4.0
    IL_0007: ldarg.0      // fromX
    IL_0008: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_000d: stloc.1      // i

    IL_000e: br.s         IL_003e
    // start of loop, entry point: IL_003e

      // [22 10 - 22 36]
      IL_0010: ldc.i4.0
      IL_0011: ldarg.1      // fromY
      IL_0012: call         int32 [mscorlib]System.Math::Max(int32, int32)
      IL_0017: stloc.2      // j

      IL_0018: br.s         IL_002d
      // start of loop, entry point: IL_002d

        // [23 6 - 23 42]
        IL_001a: ldloc.0      // medianList
        IL_001b: ldarg.s      originalImage
        IL_001d: ldloc.1      // i
        IL_001e: ldloc.2      // j
        IL_001f: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0024: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

        // [22 71 - 22 74]
        IL_0029: ldloc.2      // j
        IL_002a: ldc.i4.1
        IL_002b: add
        IL_002c: stloc.2      // j

        // [22 38 - 22 69]
        IL_002d: ldloc.2      // j
        IL_002e: ldarg.s      columns
        IL_0030: ldc.i4.1
        IL_0031: sub
        IL_0032: ldarg.3      // toY
        IL_0033: call         int32 [mscorlib]System.Math::Min(int32, int32)
        IL_0038: ble.s        IL_001a
      // end of loop

      // [21 67 - 21 70]
      IL_003a: ldloc.1      // i
      IL_003b: ldc.i4.1
      IL_003c: add
      IL_003d: stloc.1      // i

      // [21 37 - 21 65]
      IL_003e: ldloc.1      // i
      IL_003f: ldarg.s      rows
      IL_0041: ldc.i4.1
      IL_0042: sub
      IL_0043: ldarg.2      // toX
      IL_0044: call         int32 [mscorlib]System.Math::Min(int32, int32)
      IL_0049: ble.s        IL_0010
    // end of loop

    // [25 4 - 25 22]
    IL_004b: ldloc.0      // medianList
    IL_004c: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Sort()

    // [26 4 - 26 34]
    IL_0051: ldloc.0      // medianList
    IL_0052: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0057: ldc.i4.2
    IL_0058: rem
    IL_0059: brfalse.s    IL_006c

    // [27 5 - 27 51]
    IL_005b: ldloc.0      // medianList
    IL_005c: ldloc.0      // medianList
    IL_005d: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0062: ldc.i4.1
    IL_0063: sub
    IL_0064: ldc.i4.2
    IL_0065: div
    IL_0066: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_006b: ret

    // [29 4 - 29 93]
    IL_006c: ldloc.0      // medianList
    IL_006d: ldloc.0      // medianList
    IL_006e: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0073: ldc.i4.1
    IL_0074: sub
    IL_0075: ldc.i4.2
    IL_0076: div
    IL_0077: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_007c: ldloc.0      // medianList
    IL_007d: ldloc.0      // medianList
    IL_007e: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0083: ldc.i4.2
    IL_0084: div
    IL_0085: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_008a: add
    IL_008b: ldc.r8       2
    IL_0094: div
    IL_0095: ret

  } // end of method MedianFilterTask::Mediana

  .method public hidebysig static float64[0...,0...]
    MedianFilter(
      float64[0...,0...] originalImage
    ) cil managed
  {
    .maxstack 10
    .locals init (
      [0] int32 rows,
      [1] int32 columns,
      [2] float64[0...,0...] resultImage,
      [3] int32 x,
      [4] int32 y
    )

    // [34 4 - 34 50]
    IL_0000: ldarg.0      // originalImage
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetUpperBound(int32)
    IL_0007: ldc.i4.1
    IL_0008: add
    IL_0009: stloc.0      // rows

    // [35 4 - 35 46]
    IL_000a: ldarg.0      // originalImage
    IL_000b: callvirt     instance int32 [mscorlib]System.Array::get_Length()
    IL_0010: ldloc.0      // rows
    IL_0011: div
    IL_0012: stloc.1      // columns

    // [36 4 - 36 48]
    IL_0013: ldloc.0      // rows
    IL_0014: ldloc.1      // columns
    IL_0015: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001a: stloc.2      // resultImage

    // [38 9 - 38 18]
    IL_001b: ldc.i4.0
    IL_001c: stloc.3      // x

    IL_001d: br.s         IL_0052
    // start of loop, entry point: IL_0052

      // [39 10 - 39 19]
      IL_001f: ldc.i4.0
      IL_0020: stloc.s      y

      IL_0022: br.s         IL_0049
      // start of loop, entry point: IL_0049

        // [40 6 - 40 92]
        IL_0024: ldloc.2      // resultImage
        IL_0025: ldloc.3      // x
        IL_0026: ldloc.s      y
        IL_0028: ldloc.3      // x
        IL_0029: ldc.i4.1
        IL_002a: sub
        IL_002b: ldloc.s      y
        IL_002d: ldc.i4.1
        IL_002e: sub
        IL_002f: ldloc.3      // x
        IL_0030: ldc.i4.1
        IL_0031: add
        IL_0032: ldloc.s      y
        IL_0034: ldc.i4.1
        IL_0035: add
        IL_0036: ldarg.0      // originalImage
        IL_0037: ldloc.0      // rows
        IL_0038: ldloc.1      // columns
        IL_0039: call         float64 Recognizer.MedianFilterTask::Mediana(int32, int32, int32, int32, float64[0...,0...], int32, int32)
        IL_003e: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [39 34 - 39 37]
        IL_0043: ldloc.s      y
        IL_0045: ldc.i4.1
        IL_0046: add
        IL_0047: stloc.s      y

        // [39 21 - 39 32]
        IL_0049: ldloc.s      y
        IL_004b: ldloc.1      // columns
        IL_004c: blt.s        IL_0024
      // end of loop

      // [38 30 - 38 33]
      IL_004e: ldloc.3      // x
      IL_004f: ldc.i4.1
      IL_0050: add
      IL_0051: stloc.3      // x

      // [38 20 - 38 28]
      IL_0052: ldloc.3      // x
      IL_0053: ldloc.0      // rows
      IL_0054: blt.s        IL_001f
    // end of loop

    // [42 4 - 42 23]
    IL_0056: ldloc.2      // resultImage
    IL_0057: ret

  } // end of method MedianFilterTask::MedianFilter
} // end of class Recognizer.MedianFilterTask

// Type: Recognizer.SobelFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2A9EE84F-3438-4FF7-909B-544EB9CB2E0B
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.SobelFilterTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    Transponent(
      float64[0...,0...] originalImage
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] float64[0...,0...] resultImage,
      [3] int32 x,
      [4] int32 y
    )

    // [9 13 - 9 52]
    IL_0000: ldarg.0      // originalImage
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [10 13 - 10 53]
    IL_0008: ldarg.0      // originalImage
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [11 13 - 11 57]
    IL_0010: ldloc.0      // width
    IL_0011: ldloc.1      // height
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // resultImage

    // [13 18 - 13 27]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // x

    IL_001a: br.s         IL_0042
    // start of loop, entry point: IL_0042

      // [14 22 - 14 31]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      y

      IL_001f: br.s         IL_0039
      // start of loop, entry point: IL_0039

        // [15 21 - 15 61]
        IL_0021: ldloc.2      // resultImage
        IL_0022: ldloc.3      // x
        IL_0023: ldloc.s      y
        IL_0025: ldarg.0      // originalImage
        IL_0026: ldloc.s      y
        IL_0028: ldloc.3      // x
        IL_0029: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_002e: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [14 45 - 14 48]
        IL_0033: ldloc.s      y
        IL_0035: ldc.i4.1
        IL_0036: add
        IL_0037: stloc.s      y

        // [14 33 - 14 43]
        IL_0039: ldloc.s      y
        IL_003b: ldloc.1      // height
        IL_003c: blt.s        IL_0021
      // end of loop

      // [13 40 - 13 43]
      IL_003e: ldloc.3      // x
      IL_003f: ldc.i4.1
      IL_0040: add
      IL_0041: stloc.3      // x

      // [13 29 - 13 38]
      IL_0042: ldloc.3      // x
      IL_0043: ldloc.0      // width
      IL_0044: blt.s        IL_001c
    // end of loop

    // [17 13 - 17 32]
    IL_0046: ldloc.2      // resultImage
    IL_0047: ret

  } // end of method SobelFilterTask::Transponent

  .method public hidebysig static float64
    Sobel(
      int32 x,
      int32 y,
      float64[0...,0...] originalImage,
      int32 rows,
      int32 columns,
      float64[0...,0...] sx,
      float64[0...,0...] sy,
      int32 step
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] float64 resX,
      [1] float64 resY,
      [2] int32 width,
      [3] int32 height,
      [4] int32 i,
      [5] int32 j
    )

    // [22 13 - 22 31]
    IL_0000: ldc.r8       0.0
    IL_0009: stloc.0      // resX

    // [23 13 - 23 31]
    IL_000a: ldc.r8       0.0
    IL_0013: stloc.1      // resY

    // [24 13 - 24 49]
    IL_0014: ldarg.s      sx
    IL_0016: ldc.i4.0
    IL_0017: callvirt     instance int32 [mscorlib]System.Array::GetUpperBound(int32)
    IL_001c: ldc.i4.1
    IL_001d: add
    IL_001e: stloc.2      // width

    // [25 13 - 25 44]
    IL_001f: ldarg.s      sx
    IL_0021: callvirt     instance int32 [mscorlib]System.Array::get_Length()
    IL_0026: ldloc.2      // width
    IL_0027: div
    IL_0028: stloc.3      // height

    // [27 18 - 27 27]
    IL_0029: ldc.i4.0
    IL_002a: stloc.s      i

    IL_002c: br.s         IL_008a
    // start of loop, entry point: IL_008a

      // [28 22 - 28 31]
      IL_002e: ldc.i4.0
      IL_002f: stloc.s      j

      IL_0031: br.s         IL_007f
      // start of loop, entry point: IL_007f

        // [30 21 - 30 82]
        IL_0033: ldloc.0      // resX
        IL_0034: ldarg.s      sx
        IL_0036: ldloc.s      i
        IL_0038: ldloc.s      j
        IL_003a: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_003f: ldarg.2      // originalImage
        IL_0040: ldarg.0      // x
        IL_0041: ldloc.s      i
        IL_0043: add
        IL_0044: ldarg.s      step
        IL_0046: sub
        IL_0047: ldarg.1      // y
        IL_0048: ldloc.s      j
        IL_004a: add
        IL_004b: ldarg.s      step
        IL_004d: sub
        IL_004e: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0053: mul
        IL_0054: add
        IL_0055: stloc.0      // resX

        // [31 21 - 31 82]
        IL_0056: ldloc.1      // resY
        IL_0057: ldarg.s      sy
        IL_0059: ldloc.s      i
        IL_005b: ldloc.s      j
        IL_005d: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0062: ldarg.2      // originalImage
        IL_0063: ldarg.0      // x
        IL_0064: ldloc.s      i
        IL_0066: add
        IL_0067: ldarg.s      step
        IL_0069: sub
        IL_006a: ldarg.1      // y
        IL_006b: ldloc.s      j
        IL_006d: add
        IL_006e: ldarg.s      step
        IL_0070: sub
        IL_0071: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0076: mul
        IL_0077: add
        IL_0078: stloc.1      // resY

        // [28 45 - 28 48]
        IL_0079: ldloc.s      j
        IL_007b: ldc.i4.1
        IL_007c: add
        IL_007d: stloc.s      j

        // [28 33 - 28 43]
        IL_007f: ldloc.s      j
        IL_0081: ldloc.3      // height
        IL_0082: blt.s        IL_0033
      // end of loop

      // [27 40 - 27 43]
      IL_0084: ldloc.s      i
      IL_0086: ldc.i4.1
      IL_0087: add
      IL_0088: stloc.s      i

      // [27 29 - 27 38]
      IL_008a: ldloc.s      i
      IL_008c: ldloc.2      // width
      IL_008d: blt.s        IL_002e
    // end of loop

    // [33 13 - 33 57]
    IL_008f: ldloc.0      // resX
    IL_0090: ldloc.0      // resX
    IL_0091: mul
    IL_0092: ldloc.1      // resY
    IL_0093: ldloc.1      // resY
    IL_0094: mul
    IL_0095: add
    IL_0096: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_009b: ret

  } // end of method SobelFilterTask::Sobel

  .method public hidebysig static float64[0...,0...]
    SobelFilter(
      float64[0...,0...] g,
      float64[0...,0...] sx
    ) cil managed
  {
    .maxstack 11
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] int32 widthSX,
      [3] float64[0...,0...] resultImage,
      [4] float64[0...,0...] sy,
      [5] int32 x,
      [6] int32 y
    )

    // [38 13 - 38 48]
    IL_0000: ldarg.0      // g
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetUpperBound(int32)
    IL_0007: ldc.i4.1
    IL_0008: add
    IL_0009: stloc.0      // width

    // [39 13 - 39 43]
    IL_000a: ldarg.0      // g
    IL_000b: callvirt     instance int32 [mscorlib]System.Array::get_Length()
    IL_0010: ldloc.0      // width
    IL_0011: div
    IL_0012: stloc.1      // height

    // [41 13 - 41 57]
    IL_0013: ldarg.1      // sx
    IL_0014: ldc.i4.0
    IL_0015: callvirt     instance int32 [mscorlib]System.Array::GetUpperBound(int32)
    IL_001a: ldc.i4.1
    IL_001b: add
    IL_001c: ldc.i4.2
    IL_001d: div
    IL_001e: stloc.2      // widthSX

    // [43 13 - 43 57]
    IL_001f: ldloc.0      // width
    IL_0020: ldloc.1      // height
    IL_0021: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0026: stloc.3      // resultImage

    // [44 13 - 44 38]
    IL_0027: ldarg.1      // sx
    IL_0028: call         float64[0...,0...] Recognizer.SobelFilterTask::Transponent(float64[0...,0...])
    IL_002d: stloc.s      sy

    // [45 13 - 45 43]
    IL_002f: ldloc.0      // width
    IL_0030: ldc.i4.1
    IL_0031: bne.un.s     IL_0066
    IL_0033: ldloc.1      // height
    IL_0034: ldc.i4.1
    IL_0035: bne.un.s     IL_0066

    // [46 17 - 46 81]
    IL_0037: ldloc.3      // resultImage
    IL_0038: ldc.i4.0
    IL_0039: ldc.i4.0
    IL_003a: ldarg.1      // sx
    IL_003b: ldc.i4.0
    IL_003c: ldc.i4.0
    IL_003d: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_0042: ldarg.0      // g
    IL_0043: ldc.i4.0
    IL_0044: ldc.i4.0
    IL_0045: call         instance float64 float64[0...,0...]::Get(int32, int32)
    IL_004a: mul
    IL_004b: ldc.r8       2
    IL_0054: call         float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0059: mul
    IL_005a: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_005f: call         instance void float64[0...,0...]::Set(int32, int32, float64)

    IL_0064: br.s         IL_00a4

    // [48 22 - 48 37]
    IL_0066: ldloc.2      // widthSX
    IL_0067: stloc.s      x

    IL_0069: br.s         IL_009d
    // start of loop, entry point: IL_009d

      // [49 26 - 49 41]
      IL_006b: ldloc.2      // widthSX
      IL_006c: stloc.s      y

      IL_006e: br.s         IL_0090
      // start of loop, entry point: IL_0090

        // [51 25 - 51 92]
        IL_0070: ldloc.3      // resultImage
        IL_0071: ldloc.s      x
        IL_0073: ldloc.s      y
        IL_0075: ldloc.s      x
        IL_0077: ldloc.s      y
        IL_0079: ldarg.0      // g
        IL_007a: ldloc.0      // width
        IL_007b: ldloc.1      // height
        IL_007c: ldarg.1      // sx
        IL_007d: ldloc.s      sy
        IL_007f: ldloc.2      // widthSX
        IL_0080: call         float64 Recognizer.SobelFilterTask::Sobel(int32, int32, float64[0...,0...], int32, int32, float64[0...,0...], float64[0...,0...], int32)
        IL_0085: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [49 65 - 49 68]
        IL_008a: ldloc.s      y
        IL_008c: ldc.i4.1
        IL_008d: add
        IL_008e: stloc.s      y

        // [49 43 - 49 63]
        IL_0090: ldloc.s      y
        IL_0092: ldloc.1      // height
        IL_0093: ldloc.2      // widthSX
        IL_0094: sub
        IL_0095: blt.s        IL_0070
      // end of loop

      // [48 60 - 48 63]
      IL_0097: ldloc.s      x
      IL_0099: ldc.i4.1
      IL_009a: add
      IL_009b: stloc.s      x

      // [48 39 - 48 58]
      IL_009d: ldloc.s      x
      IL_009f: ldloc.0      // width
      IL_00a0: ldloc.2      // widthSX
      IL_00a1: sub
      IL_00a2: blt.s        IL_006b
    // end of loop

    // [53 13 - 53 32]
    IL_00a4: ldloc.3      // resultImage
    IL_00a5: ret

  } // end of method SobelFilterTask::SobelFilter
} // end of class Recognizer.SobelFilterTask

// Type: Recognizer.ThresholdFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2A9EE84F-3438-4FF7-909B-544EB9CB2E0B
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author3\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.ThresholdFilterTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    ThresholdFilter(
      float64[0...,0...] originalImage,
      float64 whitePixelsFraction
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 rows,
      [1] int32 columns,
      [2] float64[0...,0...] resultImage,
      [3] class [mscorlib]System.Collections.Generic.Dictionary`2<float64, int32> pixelsDictionary,
      [4] int32 procent,
      [5] int32 pixelsCount,
      [6] float64 t,
      [7] class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>> pixelsList,
      [8] int32 x,
      [9] int32 y,
      [10] float64 V_10,
      [11] int32 V_11,
      [12] valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32> V_12,
      [13] int32 x_V_13,
      [14] int32 y_V_14
    )

    // [21 4 - 21 50]
    IL_0000: ldarg.0      // originalImage
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetUpperBound(int32)
    IL_0007: ldc.i4.1
    IL_0008: add
    IL_0009: stloc.0      // rows

    // [22 4 - 22 46]
    IL_000a: ldarg.0      // originalImage
    IL_000b: callvirt     instance int32 [mscorlib]System.Array::get_Length()
    IL_0010: ldloc.0      // rows
    IL_0011: div
    IL_0012: stloc.1      // columns

    // [23 4 - 23 48]
    IL_0013: ldloc.0      // rows
    IL_0014: ldloc.1      // columns
    IL_0015: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_001a: stloc.2      // resultImage

    // [25 4 - 25 57]
    IL_001b: newobj       instance void class [mscorlib]System.Collections.Generic.Dictionary`2<float64, int32>::.ctor()
    IL_0020: stloc.3      // pixelsDictionary

    // [26 9 - 26 18]
    IL_0021: ldc.i4.0
    IL_0022: stloc.s      x

    IL_0024: br.s         IL_0083
    // start of loop, entry point: IL_0083

      // [27 10 - 27 19]
      IL_0026: ldc.i4.0
      IL_0027: stloc.s      y

      IL_0029: br.s         IL_0078
      // start of loop, entry point: IL_0078

        // [28 6 - 28 60]
        IL_002b: ldloc.3      // pixelsDictionary
        IL_002c: ldarg.0      // originalImage
        IL_002d: ldloc.s      x
        IL_002f: ldloc.s      y
        IL_0031: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0036: callvirt     instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<float64, int32>::ContainsKey(!0/*float64*/)
        IL_003b: brfalse.s    IL_0061

        // [29 7 - 29 47]
        IL_003d: ldloc.3      // pixelsDictionary
        IL_003e: ldarg.0      // originalImage
        IL_003f: ldloc.s      x
        IL_0041: ldloc.s      y
        IL_0043: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0048: stloc.s      V_10
        IL_004a: dup
        IL_004b: ldloc.s      V_10
        IL_004d: callvirt     instance !1/*int32*/ class [mscorlib]System.Collections.Generic.Dictionary`2<float64, int32>::get_Item(!0/*float64*/)
        IL_0052: stloc.s      V_11
        IL_0054: ldloc.s      V_10
        IL_0056: ldloc.s      V_11
        IL_0058: ldc.i4.1
        IL_0059: add
        IL_005a: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<float64, int32>::set_Item(!0/*float64*/, !1/*int32*/)

        IL_005f: br.s         IL_0072

        // [31 7 - 31 52]
        IL_0061: ldloc.3      // pixelsDictionary
        IL_0062: ldarg.0      // originalImage
        IL_0063: ldloc.s      x
        IL_0065: ldloc.s      y
        IL_0067: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_006c: ldc.i4.1
        IL_006d: callvirt     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<float64, int32>::Add(!0/*float64*/, !1/*int32*/)

        // [27 34 - 27 37]
        IL_0072: ldloc.s      y
        IL_0074: ldc.i4.1
        IL_0075: add
        IL_0076: stloc.s      y

        // [27 21 - 27 32]
        IL_0078: ldloc.s      y
        IL_007a: ldloc.1      // columns
        IL_007b: blt.s        IL_002b
      // end of loop

      // [26 30 - 26 33]
      IL_007d: ldloc.s      x
      IL_007f: ldc.i4.1
      IL_0080: add
      IL_0081: stloc.s      x

      // [26 20 - 26 28]
      IL_0083: ldloc.s      x
      IL_0085: ldloc.0      // rows
      IL_0086: blt.s        IL_0026
    // end of loop

    // [35 4 - 35 61]
    IL_0088: ldarg.1      // whitePixelsFraction
    IL_0089: ldloc.0      // rows
    IL_008a: conv.r8
    IL_008b: mul
    IL_008c: ldloc.1      // columns
    IL_008d: conv.r8
    IL_008e: mul
    IL_008f: conv.i4
    IL_0090: stloc.s      procent

    // [35 63 - 35 78]
    IL_0092: ldc.i4.0
    IL_0093: stloc.s      pixelsCount

    // [36 4 - 36 18]
    IL_0095: ldc.r8       255
    IL_009e: stloc.s      t

    // [37 4 - 37 47]
    IL_00a0: ldloc.3      // pixelsDictionary
    IL_00a1: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/> [System.Core]System.Linq.Enumerable::ToList<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/>)
    IL_00a6: stloc.s      pixelsList

    // [38 4 - 38 38]
    IL_00a8: ldloc.s      pixelsList
    IL_00aa: newobj       instance void Recognizer.MyComparer::.ctor()
    IL_00af: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>::Sort(class [mscorlib]System.Collections.Generic.IComparer`1<!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/>)

    IL_00b4: br.s         IL_00e5
    // start of loop, entry point: IL_00e5

      // [42 5 - 42 38]
      IL_00b6: ldloc.s      pixelsList
      IL_00b8: call         !!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/ [System.Core]System.Linq.Enumerable::First<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/>)
      IL_00bd: stloc.s      V_12
      IL_00bf: ldloca.s     V_12
      IL_00c1: call         instance !0/*float64*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>::get_Key()

      // [43 5 - 43 45]
      IL_00c6: ldloc.s      pixelsCount
      IL_00c8: ldloc.s      pixelsList
      IL_00ca: call         !!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/ [System.Core]System.Linq.Enumerable::First<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/>)
      IL_00cf: stloc.s      V_12
      IL_00d1: ldloca.s     V_12
      IL_00d3: call         instance !1/*int32*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>::get_Value()
      IL_00d8: add
      IL_00d9: stloc.s      pixelsCount

      // [44 5 - 44 13]
      IL_00db: stloc.s      t

      // [45 5 - 45 28]
      IL_00dd: ldloc.s      pixelsList
      IL_00df: ldc.i4.0
      IL_00e0: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>::RemoveAt(int32)

      // [40 4 - 40 57]
      IL_00e5: ldloc.s      pixelsCount
      IL_00e7: ldloc.s      procent
      IL_00e9: bge.s        IL_00f5
      IL_00eb: ldloc.s      pixelsList
      IL_00ed: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>::get_Count()
      IL_00f2: ldc.i4.0
      IL_00f3: bgt.s        IL_00b6
    // end of loop

    // [48 4 - 48 54]
    IL_00f5: ldloc.s      pixelsList
    IL_00f7: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>::get_Count()
    IL_00fc: ldc.i4.0
    IL_00fd: ble.s        IL_0119
    IL_00ff: ldloc.s      pixelsCount
    IL_0101: ldloc.s      procent
    IL_0103: bge.s        IL_0119

    // [49 5 - 49 37]
    IL_0105: ldloc.s      pixelsList
    IL_0107: call         !!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/ [System.Core]System.Linq.Enumerable::First<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>*/>)
    IL_010c: stloc.s      V_12
    IL_010e: ldloca.s     V_12
    IL_0110: call         instance !0/*float64*/ valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<float64, int32>::get_Key()
    IL_0115: conv.i4
    IL_0116: conv.r8
    IL_0117: stloc.s      t

    // [51 4 - 51 34]
    IL_0119: ldloc.s      procent
    IL_011b: ldloc.0      // rows
    IL_011c: ldloc.1      // columns
    IL_011d: mul
    IL_011e: bne.un.s     IL_012b

    // [52 5 - 52 12]
    IL_0120: ldc.r8       -1
    IL_0129: stloc.s      t

    // [54 9 - 54 18]
    IL_012b: ldc.i4.0
    IL_012c: stloc.s      x_V_13

    IL_012e: br.s         IL_0172
    // start of loop, entry point: IL_0172

      // [55 10 - 55 19]
      IL_0130: ldc.i4.0
      IL_0131: stloc.s      y_V_14

      IL_0133: br.s         IL_0167
      // start of loop, entry point: IL_0167

        // [56 6 - 56 63]
        IL_0135: ldloc.2      // resultImage
        IL_0136: ldloc.s      x_V_13
        IL_0138: ldloc.s      y_V_14
        IL_013a: ldarg.0      // originalImage
        IL_013b: ldloc.s      x_V_13
        IL_013d: ldloc.s      y_V_14
        IL_013f: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0144: ldloc.s      t
        IL_0146: bge.s        IL_0153
        IL_0148: ldc.r8       0.0
        IL_0151: br.s         IL_015c
        IL_0153: ldc.r8       1
        IL_015c: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [55 34 - 55 37]
        IL_0161: ldloc.s      y_V_14
        IL_0163: ldc.i4.1
        IL_0164: add
        IL_0165: stloc.s      y_V_14

        // [55 21 - 55 32]
        IL_0167: ldloc.s      y_V_14
        IL_0169: ldloc.1      // columns
        IL_016a: blt.s        IL_0135
      // end of loop

      // [54 30 - 54 33]
      IL_016c: ldloc.s      x_V_13
      IL_016e: ldc.i4.1
      IL_016f: add
      IL_0170: stloc.s      x_V_13

      // [54 20 - 54 28]
      IL_0172: ldloc.s      x_V_13
      IL_0174: ldloc.0      // rows
      IL_0175: blt.s        IL_0130
    // end of loop

    // [58 4 - 58 23]
    IL_0177: ldloc.2      // resultImage
    IL_0178: ret

  } // end of method ThresholdFilterTask::ThresholdFilter
} // end of class Recognizer.ThresholdFilterTask
