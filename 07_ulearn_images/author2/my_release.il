// Type: Recognizer.GrayscaleTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: A65EC55F-5BFB-4038-A36F-E156BC83A7CD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.GrayscaleTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    ToGrayscale(
      class Recognizer.Pixel[0...,0...] original
    ) cil managed
  {
    .maxstack 8
    .locals init (
      [0] int32 widht,
      [1] int32 height,
      [2] float64[0...,0...] graysclace,
      [3] int32 i,
      [4] int32 j
    )

    // [23 4 - 23 38]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // widht

    // [24 4 - 24 39]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [25 4 - 25 47]
    IL_0010: ldloc.0      // widht
    IL_0011: ldloc.1      // height
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // graysclace

    // [26 18 - 26 27]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // i

    IL_001a: br.s         IL_0090
    // start of loop, entry point: IL_0090

      // [28 22 - 28 31]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      j

      IL_001f: br.s         IL_0087
      // start of loop, entry point: IL_0087

        // [30 6 - 30 110]
        IL_0021: ldloc.2      // graysclace
        IL_0022: ldloc.3      // i
        IL_0023: ldloc.s      j
        IL_0025: ldc.r8       0.299
        IL_002e: ldarg.0      // original
        IL_002f: ldloc.3      // i
        IL_0030: ldloc.s      j
        IL_0032: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_0037: callvirt     instance unsigned int8 Recognizer.Pixel::get_R()
        IL_003c: conv.r8
        IL_003d: mul
        IL_003e: ldc.r8       0.587
        IL_0047: ldarg.0      // original
        IL_0048: ldloc.3      // i
        IL_0049: ldloc.s      j
        IL_004b: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_0050: callvirt     instance unsigned int8 Recognizer.Pixel::get_G()
        IL_0055: conv.r8
        IL_0056: mul
        IL_0057: add
        IL_0058: ldc.r8       0.114
        IL_0061: ldarg.0      // original
        IL_0062: ldloc.3      // i
        IL_0063: ldloc.s      j
        IL_0065: call         instance class Recognizer.Pixel class Recognizer.Pixel[0...,0...]::Get(int32, int32)
        IL_006a: callvirt     instance unsigned int8 Recognizer.Pixel::get_B()
        IL_006f: conv.r8
        IL_0070: mul
        IL_0071: add
        IL_0072: ldc.r8       255
        IL_007b: div
        IL_007c: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [28 45 - 28 48]
        IL_0081: ldloc.s      j
        IL_0083: ldc.i4.1
        IL_0084: add
        IL_0085: stloc.s      j

        // [28 33 - 28 43]
        IL_0087: ldloc.s      j
        IL_0089: ldloc.1      // height
        IL_008a: blt.s        IL_0021
      // end of loop

      // [26 40 - 26 43]
      IL_008c: ldloc.3      // i
      IL_008d: ldc.i4.1
      IL_008e: add
      IL_008f: stloc.3      // i

      // [26 29 - 26 38]
      IL_0090: ldloc.3      // i
      IL_0091: ldloc.0      // widht
      IL_0092: blt.s        IL_001c
    // end of loop

    // [34 4 - 34 22]
    IL_0094: ldloc.2      // graysclace
    IL_0095: ret

  } // end of method GrayscaleTask::ToGrayscale
} // end of class Recognizer.GrayscaleTask

// Type: Recognizer.HoughTransformTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: A65EC55F-5BFB-4038-A36F-E156BC83A7CD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.pdb

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
// MVID: A65EC55F-5BFB-4038-A36F-E156BC83A7CD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.MedianFilterTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    MedianFilter(
      float64[0...,0...] original
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] float64[0...,0...] filteredPixels,
      [3] int32 x,
      [4] int32 y
    )

    // [9 13 - 9 47]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [10 13 - 10 48]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [11 13 - 11 60]
    IL_0010: ldloc.0      // width
    IL_0011: ldloc.1      // height
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // filteredPixels

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

        // [15 21 - 15 74]
        IL_0021: ldloc.2      // filteredPixels
        IL_0022: ldloc.3      // x
        IL_0023: ldloc.s      y
        IL_0025: ldloc.3      // x
        IL_0026: ldloc.s      y
        IL_0028: ldarg.0      // original
        IL_0029: call         float64 Recognizer.MedianFilterTask::GetPixelValue(int32, int32, float64[0...,0...])
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

    // [17 13 - 17 35]
    IL_0046: ldloc.2      // filteredPixels
    IL_0047: ret

  } // end of method MedianFilterTask::MedianFilter

  .method private hidebysig static float64
    GetPixelValue(
      int32 x,
      int32 y,
      float64[0...,0...] original
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] class [mscorlib]System.Collections.Generic.List`1<float64> edgeValues,
      [3] int32 offsetX,
      [4] int32 offsetY
    )

    // [22 13 - 22 47]
    IL_0000: ldarg.2      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [23 13 - 23 48]
    IL_0008: ldarg.2      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [24 13 - 24 49]
    IL_0010: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0015: stloc.2      // edgeValues

    // [26 18 - 26 34]
    IL_0016: ldc.i4.m1
    IL_0017: stloc.3      // offsetX

    IL_0018: br.s         IL_0051
    // start of loop, entry point: IL_0051

      // [28 22 - 28 38]
      IL_001a: ldc.i4.m1
      IL_001b: stloc.s      offsetY

      IL_001d: br.s         IL_0048
      // start of loop, entry point: IL_0048

        // [30 21 - 30 90]
        IL_001f: ldarg.0      // x
        IL_0020: ldloc.3      // offsetX
        IL_0021: add
        IL_0022: ldarg.1      // y
        IL_0023: ldloc.s      offsetY
        IL_0025: add
        IL_0026: ldloc.0      // width
        IL_0027: ldloc.1      // height
        IL_0028: call         bool Recognizer.MedianFilterTask::PixelIsInsideBoundaries(int32, int32, int32, int32)
        IL_002d: brfalse.s    IL_0042

        // [31 25 - 31 76]
        IL_002f: ldloc.2      // edgeValues
        IL_0030: ldarg.2      // original
        IL_0031: ldarg.0      // x
        IL_0032: ldloc.3      // offsetX
        IL_0033: add
        IL_0034: ldarg.1      // y
        IL_0035: ldloc.s      offsetY
        IL_0037: add
        IL_0038: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_003d: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

        // [28 53 - 28 62]
        IL_0042: ldloc.s      offsetY
        IL_0044: ldc.i4.1
        IL_0045: add
        IL_0046: stloc.s      offsetY

        // [28 40 - 28 51]
        IL_0048: ldloc.s      offsetY
        IL_004a: ldc.i4.2
        IL_004b: blt.s        IL_001f
      // end of loop

      // [26 49 - 26 58]
      IL_004d: ldloc.3      // offsetX
      IL_004e: ldc.i4.1
      IL_004f: add
      IL_0050: stloc.3      // offsetX

      // [26 36 - 26 47]
      IL_0051: ldloc.3      // offsetX
      IL_0052: ldc.i4.2
      IL_0053: blt.s        IL_001a
    // end of loop

    // [35 13 - 35 31]
    IL_0055: ldloc.2      // edgeValues
    IL_0056: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Sort()

    // [37 13 - 37 47]
    IL_005b: ldloc.2      // edgeValues
    IL_005c: call         float64 Recognizer.MedianFilterTask::GetMedianValue(class [mscorlib]System.Collections.Generic.List`1<float64>)
    IL_0061: ret

  } // end of method MedianFilterTask::GetPixelValue

  .method private hidebysig static bool
    PixelIsInsideBoundaries(
      int32 x,
      int32 y,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    // [42 13 - 42 68]
    IL_0000: ldarg.0      // x
    IL_0001: ldc.i4.m1
    IL_0002: ble.s        IL_0013
    IL_0004: ldarg.1      // y
    IL_0005: ldc.i4.m1
    IL_0006: ble.s        IL_0013
    IL_0008: ldarg.0      // x
    IL_0009: ldarg.2      // width
    IL_000a: bge.s        IL_0011
    IL_000c: ldarg.1      // y
    IL_000d: ldarg.3      // height
    IL_000e: clt
    IL_0010: ret
    IL_0011: ldc.i4.0
    IL_0012: ret
    IL_0013: ldc.i4.0
    IL_0014: ret

  } // end of method MedianFilterTask::PixelIsInsideBoundaries

  .method private hidebysig static float64
    GetMedianValue(
      class [mscorlib]System.Collections.Generic.List`1<float64> edge
    ) cil managed
  {
    .maxstack 4

    // [47 13 - 47 37]
    IL_0000: ldarg.0      // edge
    IL_0001: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0006: ldc.i4.2
    IL_0007: rem
    IL_0008: brtrue.s     IL_0034

    // [48 17 - 48 78]
    IL_000a: ldarg.0      // edge
    IL_000b: ldarg.0      // edge
    IL_000c: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0011: ldc.i4.2
    IL_0012: div
    IL_0013: ldc.i4.1
    IL_0014: sub
    IL_0015: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_001a: ldarg.0      // edge
    IL_001b: ldarg.0      // edge
    IL_001c: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_0021: ldc.i4.2
    IL_0022: div
    IL_0023: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_0028: add
    IL_0029: ldc.r8       2
    IL_0032: div
    IL_0033: ret

    // [50 17 - 50 45]
    IL_0034: ldarg.0      // edge
    IL_0035: ldarg.0      // edge
    IL_0036: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
    IL_003b: ldc.i4.2
    IL_003c: div
    IL_003d: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_0042: ret

  } // end of method MedianFilterTask::GetMedianValue
} // end of class Recognizer.MedianFilterTask

// Type: Recognizer.SobelFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: A65EC55F-5BFB-4038-A36F-E156BC83A7CD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.pdb

.class private abstract sealed auto ansi beforefieldinit
  Recognizer.SobelFilterTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    SobelFilter(
      float64[0...,0...] original,
      float64[0...,0...] sx
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] float64[0...,0...] filteredPixels,
      [3] int32 offsetX,
      [4] int32 offsetY,
      [5] float64[0...,0...] sy,
      [6] int32 x,
      [7] int32 y,
      [8] float64 gx,
      [9] float64 gy
    )

    // [9 13 - 9 47]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [10 13 - 10 48]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [11 13 - 11 60]
    IL_0010: ldloc.0      // width
    IL_0011: ldloc.1      // height
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // filteredPixels

    // [13 13 - 13 47]
    IL_0018: ldarg.1      // sx
    IL_0019: ldc.i4.0
    IL_001a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_001f: ldc.i4.2
    IL_0020: div
    IL_0021: stloc.3      // offsetX

    // [14 13 - 14 47]
    IL_0022: ldarg.1      // sx
    IL_0023: ldc.i4.1
    IL_0024: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0029: ldc.i4.2
    IL_002a: div
    IL_002b: stloc.s      offsetY

    // [16 13 - 16 46]
    IL_002d: ldarg.1      // sx
    IL_002e: call         float64[0...,0...] Recognizer.SobelFilterTask::GetTransposedMatrix(float64[0...,0...])
    IL_0033: stloc.s      sy

    // [18 18 - 18 33]
    IL_0035: ldloc.3      // offsetX
    IL_0036: stloc.s      x

    IL_0038: br.s         IL_008c
    // start of loop, entry point: IL_008c

      // [20 22 - 20 37]
      IL_003a: ldloc.s      offsetY
      IL_003c: stloc.s      y

      IL_003e: br.s         IL_007e
      // start of loop, entry point: IL_007e

        // [22 21 - 22 74]
        IL_0040: ldarg.0      // original
        IL_0041: ldarg.1      // sx
        IL_0042: ldloc.s      x
        IL_0044: ldloc.s      y
        IL_0046: ldloc.3      // offsetX
        IL_0047: call         float64 Recognizer.SobelFilterTask::GetConvolution(float64[0...,0...], float64[0...,0...], int32, int32, int32)
        IL_004c: stloc.s      gx

        // [23 21 - 23 74]
        IL_004e: ldarg.0      // original
        IL_004f: ldloc.s      sy
        IL_0051: ldloc.s      x
        IL_0053: ldloc.s      y
        IL_0055: ldloc.s      offsetY
        IL_0057: call         float64 Recognizer.SobelFilterTask::GetConvolution(float64[0...,0...], float64[0...,0...], int32, int32, int32)
        IL_005c: stloc.s      gy

        // [25 21 - 25 73]
        IL_005e: ldloc.2      // filteredPixels
        IL_005f: ldloc.s      x
        IL_0061: ldloc.s      y
        IL_0063: ldloc.s      gx
        IL_0065: ldloc.s      gx
        IL_0067: mul
        IL_0068: ldloc.s      gy
        IL_006a: ldloc.s      gy
        IL_006c: mul
        IL_006d: add
        IL_006e: call         float64 [mscorlib]System.Math::Sqrt(float64)
        IL_0073: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [20 61 - 20 64]
        IL_0078: ldloc.s      y
        IL_007a: ldc.i4.1
        IL_007b: add
        IL_007c: stloc.s      y

        // [20 39 - 20 59]
        IL_007e: ldloc.s      y
        IL_0080: ldloc.1      // height
        IL_0081: ldloc.s      offsetY
        IL_0083: sub
        IL_0084: blt.s        IL_0040
      // end of loop

      // [18 56 - 18 59]
      IL_0086: ldloc.s      x
      IL_0088: ldc.i4.1
      IL_0089: add
      IL_008a: stloc.s      x

      // [18 35 - 18 54]
      IL_008c: ldloc.s      x
      IL_008e: ldloc.0      // width
      IL_008f: ldloc.3      // offsetX
      IL_0090: sub
      IL_0091: blt.s        IL_003a
    // end of loop

    // [29 13 - 29 35]
    IL_0093: ldloc.2      // filteredPixels
    IL_0094: ret

  } // end of method SobelFilterTask::SobelFilter

  .method private hidebysig static float64[0...,0...]
    GetTransposedMatrix(
      float64[0...,0...] matrix
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] float64[0...,0...] transposedMatrix,
      [3] int32 x,
      [4] int32 y
    )

    // [34 13 - 34 45]
    IL_0000: ldarg.0      // matrix
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [35 13 - 35 46]
    IL_0008: ldarg.0      // matrix
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [36 13 - 36 62]
    IL_0010: ldloc.0      // width
    IL_0011: ldloc.1      // height
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // transposedMatrix

    // [38 18 - 38 27]
    IL_0018: ldc.i4.0
    IL_0019: stloc.3      // x

    IL_001a: br.s         IL_0042
    // start of loop, entry point: IL_0042

      // [39 22 - 39 31]
      IL_001c: ldc.i4.0
      IL_001d: stloc.s      y

      IL_001f: br.s         IL_0039
      // start of loop, entry point: IL_0039

        // [40 21 - 40 59]
        IL_0021: ldloc.2      // transposedMatrix
        IL_0022: ldloc.3      // x
        IL_0023: ldloc.s      y
        IL_0025: ldarg.0      // matrix
        IL_0026: ldloc.s      y
        IL_0028: ldloc.3      // x
        IL_0029: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_002e: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [39 45 - 39 48]
        IL_0033: ldloc.s      y
        IL_0035: ldc.i4.1
        IL_0036: add
        IL_0037: stloc.s      y

        // [39 33 - 39 43]
        IL_0039: ldloc.s      y
        IL_003b: ldloc.1      // height
        IL_003c: blt.s        IL_0021
      // end of loop

      // [38 40 - 38 43]
      IL_003e: ldloc.3      // x
      IL_003f: ldc.i4.1
      IL_0040: add
      IL_0041: stloc.3      // x

      // [38 29 - 38 38]
      IL_0042: ldloc.3      // x
      IL_0043: ldloc.0      // width
      IL_0044: blt.s        IL_001c
    // end of loop

    // [42 13 - 42 37]
    IL_0046: ldloc.2      // transposedMatrix
    IL_0047: ret

  } // end of method SobelFilterTask::GetTransposedMatrix

  .method private hidebysig static float64
    GetConvolution(
      float64[0...,0...] original,
      float64[0...,0...] s,
      int32 x,
      int32 y,
      int32 offset
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] float64 result,
      [3] int32 sx,
      [4] int32 sy
    )

    // [47 13 - 47 40]
    IL_0000: ldarg.1      // s
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [48 13 - 48 41]
    IL_0008: ldarg.1      // s
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [49 13 - 49 30]
    IL_0010: ldc.r8       0.0
    IL_0019: stloc.2      // result

    // [51 18 - 51 28]
    IL_001a: ldc.i4.0
    IL_001b: stloc.3      // sx

    IL_001c: br.s         IL_0052
    // start of loop, entry point: IL_0052

      // [52 22 - 52 32]
      IL_001e: ldc.i4.0
      IL_001f: stloc.s      sy

      IL_0021: br.s         IL_0049
      // start of loop, entry point: IL_0049

        // [53 21 - 53 86]
        IL_0023: ldloc.2      // result
        IL_0024: ldarg.1      // s
        IL_0025: ldloc.3      // sx
        IL_0026: ldloc.s      sy
        IL_0028: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_002d: ldarg.0      // original
        IL_002e: ldarg.2      // x
        IL_002f: ldloc.3      // sx
        IL_0030: add
        IL_0031: ldarg.s      offset
        IL_0033: sub
        IL_0034: ldarg.3      // y
        IL_0035: ldloc.s      sy
        IL_0037: add
        IL_0038: ldarg.s      offset
        IL_003a: sub
        IL_003b: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0040: mul
        IL_0041: add
        IL_0042: stloc.2      // result

        // [52 47 - 52 51]
        IL_0043: ldloc.s      sy
        IL_0045: ldc.i4.1
        IL_0046: add
        IL_0047: stloc.s      sy

        // [52 34 - 52 45]
        IL_0049: ldloc.s      sy
        IL_004b: ldloc.1      // height
        IL_004c: blt.s        IL_0023
      // end of loop

      // [51 42 - 51 46]
      IL_004e: ldloc.3      // sx
      IL_004f: ldc.i4.1
      IL_0050: add
      IL_0051: stloc.3      // sx

      // [51 30 - 51 40]
      IL_0052: ldloc.3      // sx
      IL_0053: ldloc.0      // width
      IL_0054: blt.s        IL_001e
    // end of loop

    // [55 13 - 55 27]
    IL_0056: ldloc.2      // result
    IL_0057: ret

  } // end of method SobelFilterTask::GetConvolution
} // end of class Recognizer.SobelFilterTask

// Type: Recognizer.ThresholdFilterTask 
// Assembly: Recognizer, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: A65EC55F-5BFB-4038-A36F-E156BC83A7CD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\07_ulearn_images\author2\bin\Release\Recognizer.pdb

.class public abstract sealed auto ansi beforefieldinit
  Recognizer.ThresholdFilterTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static float64[0...,0...]
    ThresholdFilter(
      float64[0...,0...] original,
      float64 threshold
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] float64[0...,0...] filteredPixels,
      [3] float64 thresholdValue,
      [4] int32 x,
      [5] int32 y
    )

    // [9 13 - 9 47]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [10 13 - 10 48]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [11 13 - 11 60]
    IL_0010: ldloc.0      // width
    IL_0011: ldloc.1      // height
    IL_0012: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0017: stloc.2      // filteredPixels

    // [13 13 - 13 79]
    IL_0018: ldarg.0      // original
    IL_0019: ldarg.1      // threshold
    IL_001a: call         float64 Recognizer.ThresholdFilterTask::CalculateThresholdValue(float64[0...,0...], float64)
    IL_001f: stloc.3      // thresholdValue

    // [15 18 - 15 27]
    IL_0020: ldc.i4.0
    IL_0021: stloc.s      x

    IL_0023: br.s         IL_0066
    // start of loop, entry point: IL_0066

      // [16 22 - 16 31]
      IL_0025: ldc.i4.0
      IL_0026: stloc.s      y

      IL_0028: br.s         IL_005b
      // start of loop, entry point: IL_005b

        // [17 21 - 17 91]
        IL_002a: ldloc.2      // filteredPixels
        IL_002b: ldloc.s      x
        IL_002d: ldloc.s      y
        IL_002f: ldarg.0      // original
        IL_0030: ldloc.s      x
        IL_0032: ldloc.s      y
        IL_0034: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0039: ldloc.3      // thresholdValue
        IL_003a: bge.s        IL_0047
        IL_003c: ldc.r8       0.0
        IL_0045: br.s         IL_0050
        IL_0047: ldc.r8       1
        IL_0050: call         instance void float64[0...,0...]::Set(int32, int32, float64)

        // [16 45 - 16 48]
        IL_0055: ldloc.s      y
        IL_0057: ldc.i4.1
        IL_0058: add
        IL_0059: stloc.s      y

        // [16 33 - 16 43]
        IL_005b: ldloc.s      y
        IL_005d: ldloc.1      // height
        IL_005e: blt.s        IL_002a
      // end of loop

      // [15 40 - 15 43]
      IL_0060: ldloc.s      x
      IL_0062: ldc.i4.1
      IL_0063: add
      IL_0064: stloc.s      x

      // [15 29 - 15 38]
      IL_0066: ldloc.s      x
      IL_0068: ldloc.0      // width
      IL_0069: blt.s        IL_0025
    // end of loop

    // [19 13 - 19 35]
    IL_006b: ldloc.2      // filteredPixels
    IL_006c: ret

  } // end of method ThresholdFilterTask::ThresholdFilter

  .method private hidebysig static float64
    CalculateThresholdValue(
      float64[0...,0...] original,
      float64 threshold
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 width,
      [1] int32 height,
      [2] int32 numberOfPixels,
      [3] class [mscorlib]System.Collections.Generic.List`1<float64> pixels,
      [4] int32 pixelsToChange,
      [5] int32 x,
      [6] int32 y
    )

    // [24 13 - 24 47]
    IL_0000: ldarg.0      // original
    IL_0001: ldc.i4.0
    IL_0002: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_0007: stloc.0      // width

    // [25 13 - 25 48]
    IL_0008: ldarg.0      // original
    IL_0009: ldc.i4.1
    IL_000a: callvirt     instance int32 [mscorlib]System.Array::GetLength(int32)
    IL_000f: stloc.1      // height

    // [26 13 - 26 49]
    IL_0010: ldloc.0      // width
    IL_0011: ldloc.1      // height
    IL_0012: mul
    IL_0013: stloc.2      // numberOfPixels

    // [27 13 - 27 59]
    IL_0014: ldloc.0      // width
    IL_0015: ldloc.1      // height
    IL_0016: mul
    IL_0017: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor(int32)
    IL_001c: stloc.3      // pixels

    // [29 13 - 29 68]
    IL_001d: ldloc.2      // numberOfPixels
    IL_001e: conv.r8
    IL_001f: ldarg.1      // threshold
    IL_0020: mul
    IL_0021: conv.i4
    IL_0022: stloc.s      pixelsToChange

    // [31 18 - 31 27]
    IL_0024: ldc.i4.0
    IL_0025: stloc.s      x

    IL_0027: br.s         IL_004f
    // start of loop, entry point: IL_004f

      // [32 22 - 32 31]
      IL_0029: ldc.i4.0
      IL_002a: stloc.s      y

      IL_002c: br.s         IL_0044
      // start of loop, entry point: IL_0044

        // [33 21 - 33 48]
        IL_002e: ldloc.3      // pixels
        IL_002f: ldarg.0      // original
        IL_0030: ldloc.s      x
        IL_0032: ldloc.s      y
        IL_0034: call         instance float64 float64[0...,0...]::Get(int32, int32)
        IL_0039: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

        // [32 45 - 32 48]
        IL_003e: ldloc.s      y
        IL_0040: ldc.i4.1
        IL_0041: add
        IL_0042: stloc.s      y

        // [32 33 - 32 43]
        IL_0044: ldloc.s      y
        IL_0046: ldloc.1      // height
        IL_0047: blt.s        IL_002e
      // end of loop

      // [31 40 - 31 43]
      IL_0049: ldloc.s      x
      IL_004b: ldc.i4.1
      IL_004c: add
      IL_004d: stloc.s      x

      // [31 29 - 31 38]
      IL_004f: ldloc.s      x
      IL_0051: ldloc.0      // width
      IL_0052: blt.s        IL_0029
    // end of loop

    // [35 13 - 35 27]
    IL_0054: ldloc.3      // pixels
    IL_0055: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Sort()

    // [37 13 - 37 78]
    IL_005a: ldloc.3      // pixels
    IL_005b: ldloc.2      // numberOfPixels
    IL_005c: ldloc.s      pixelsToChange
    IL_005e: call         float64 Recognizer.ThresholdFilterTask::GetThresholdValue(class [mscorlib]System.Collections.Generic.List`1<float64>, int32, int32)
    IL_0063: ret

  } // end of method ThresholdFilterTask::CalculateThresholdValue

  .method private hidebysig static float64
    GetThresholdValue(
      class [mscorlib]System.Collections.Generic.List`1<float64> pixels,
      int32 numberOfPixels,
      int32 pixelsToChange
    ) cil managed
  {
    .maxstack 8

    // [42 13 - 42 50]
    IL_0000: ldarg.2      // pixelsToChange
    IL_0001: ldarg.1      // numberOfPixels
    IL_0002: bne.un.s     IL_000e

    // [43 17 - 43 29]
    IL_0004: ldc.r8       -1
    IL_000d: ret

    // [44 18 - 44 42]
    IL_000e: ldarg.2      // pixelsToChange
    IL_000f: brtrue.s     IL_001b

    // [45 17 - 45 40]
    IL_0011: ldc.r8       1.79769313486232E+308 // double.MaxValue
    IL_001a: ret

    // [47 17 - 47 64]
    IL_001b: ldarg.0      // pixels
    IL_001c: ldarg.1      // numberOfPixels
    IL_001d: ldarg.2      // pixelsToChange
    IL_001e: sub
    IL_001f: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
    IL_0024: ret

  } // end of method ThresholdFilterTask::GetThresholdValue
} // end of class Recognizer.ThresholdFilterTask
