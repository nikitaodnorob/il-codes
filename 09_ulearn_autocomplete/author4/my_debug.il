// Type: Autocomplete.LeftBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 56E2D402-B587-4D0E-B84B-993E44A6602D
// Location: D:\Windows\Desktop\nikita refactoring\09 autocomplete\01_odnorob\bin\Debug\Autocomplete.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Autocomplete.LeftBorderTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static int32
    ObtainLeftBorderIndex(
      class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string> phrases,
      string prefix,
      int32 left,
      int32 right
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 num,
      [1] bool V_1,
      [2] int32 V_2,
      [3] bool V_3
    )

    IL_0000: nop

    // [20 7 - 20 28]
    IL_0001: ldarg.3      // right
    IL_0002: ldarg.2      // left
    IL_0003: sub
    IL_0004: ldc.i4.2
    IL_0005: clt
    IL_0007: stloc.1      // V_1

    IL_0008: ldloc.1      // V_1
    IL_0009: brfalse.s    IL_000f

    // [21 9 - 21 21]
    IL_000b: ldarg.2      // left
    IL_000c: stloc.2      // V_2

    IL_000d: br.s         IL_0044

    // [22 7 - 22 42]
    IL_000f: ldarg.2      // left
    IL_0010: ldarg.3      // right
    IL_0011: ldarg.2      // left
    IL_0012: sub
    IL_0013: ldc.i4.2
    IL_0014: div
    IL_0015: add
    IL_0016: stloc.0      // num

    // [23 7 - 23 226]
    IL_0017: ldarg.1      // prefix
    IL_0018: ldarg.0      // phrases
    IL_0019: ldloc.0      // num
    IL_001a: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_001f: ldc.i4.5
    IL_0020: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
    IL_0025: ldc.i4.0
    IL_0026: cgt
    IL_0028: stloc.3      // V_3

    IL_0029: ldloc.3      // V_3
    IL_002a: brfalse.s    IL_0038
    IL_002c: ldarg.0      // phrases
    IL_002d: ldarg.1      // prefix
    IL_002e: ldloc.0      // num
    IL_002f: ldarg.3      // right
    IL_0030: call         int32 Autocomplete.LeftBorderTask::ObtainLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0035: stloc.2      // V_2
    IL_0036: br.s         IL_0044
    IL_0038: ldarg.0      // phrases
    IL_0039: ldarg.1      // prefix
    IL_003a: ldarg.2      // left
    IL_003b: ldloc.0      // num
    IL_003c: call         int32 Autocomplete.LeftBorderTask::ObtainLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0041: stloc.2      // V_2
    IL_0042: br.s         IL_0044
    IL_0044: ldloc.2      // V_2
    IL_0045: ret

  } // end of method LeftBorderTask::ObtainLeftBorderIndex

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret

  } // end of method LeftBorderTask::.ctor
} // end of class Autocomplete.LeftBorderTask

// Type: Autocomplete.RightBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 56E2D402-B587-4D0E-B84B-993E44A6602D
// Location: D:\Windows\Desktop\nikita refactoring\09 autocomplete\01_odnorob\bin\Debug\Autocomplete.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Autocomplete.RightBorderTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static int32
    ObtainRightBorderIndex(
      class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string> phrases,
      string prefix,
      int32 left,
      int32 right
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 index,
      [1] bool V_1,
      [2] bool V_2,
      [3] bool V_3,
      [4] int32 V_4
    )

    IL_0000: nop

    IL_0001: br.s         IL_0041
    // start of loop, entry point: IL_0041
      IL_0003: nop

      // [22 9 - 22 46]
      IL_0004: ldarg.2      // left
      IL_0005: ldarg.3      // right
      IL_0006: ldarg.2      // left
      IL_0007: sub
      IL_0008: ldc.i4.2
      IL_0009: div
      IL_000a: add
      IL_000b: stloc.0      // index

      // [23 9 - 23 130]
      IL_000c: ldarg.0      // phrases
      IL_000d: ldloc.0      // index
      IL_000e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0013: ldarg.1      // prefix
      IL_0014: callvirt     instance bool [mscorlib]System.String::StartsWith(string)
      IL_0019: brtrue.s     IL_0031

      IL_001b: ldarg.1      // prefix
      IL_001c: ldarg.0      // phrases
      IL_001d: ldloc.0      // index
      IL_001e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0023: ldc.i4.5
      IL_0024: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
      IL_0029: ldc.i4.0
      IL_002a: clt
      IL_002c: ldc.i4.0
      IL_002d: ceq
      IL_002f: br.s         IL_0032
      IL_0031: ldc.i4.1
      IL_0032: stloc.1      // V_1
      IL_0033: ldloc.1      // V_1
      IL_0034: stloc.2      // V_2
      IL_0035: ldloc.2      // V_2
      IL_0036: brfalse.s    IL_003d

      // [24 11 - 24 23]
      IL_0038: ldloc.0      // index
      IL_0039: starg.s      left

      IL_003b: br.s         IL_0040

      // [26 11 - 26 24]
      IL_003d: ldloc.0      // index
      IL_003e: starg.s      right
      IL_0040: nop

      // [20 7 - 20 31]
      IL_0041: ldarg.3      // right
      IL_0042: ldarg.2      // left
      IL_0043: ldc.i4.1
      IL_0044: add
      IL_0045: cgt
      IL_0047: stloc.3      // V_3

      IL_0048: ldloc.3      // V_3
      IL_0049: brtrue.s     IL_0003
    // end of loop

    // [28 7 - 28 20]
    IL_004b: ldarg.3      // right
    IL_004c: stloc.s      V_4
    IL_004e: br.s         IL_0050
    IL_0050: ldloc.s      V_4
    IL_0052: ret

  } // end of method RightBorderTask::ObtainRightBorderIndex

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret

  } // end of method RightBorderTask::.ctor
} // end of class Autocomplete.RightBorderTask
