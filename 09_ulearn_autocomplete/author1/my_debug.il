// Type: Autocomplete.LeftBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: F38052F6-EAC5-47AE-9240-036827177283
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\09 autocomplete\01_debug_mycompiler.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Autocomplete.LeftBorderTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static int32
    GetLeftBorderIndex(
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
      [2] int32 V_2
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

    IL_000d: br.s         IL_003f

    // [22 7 - 22 42]
    IL_000f: ldarg.2      // left
    IL_0010: ldarg.3      // right
    IL_0011: ldarg.2      // left
    IL_0012: sub
    IL_0013: ldc.i4.2
    IL_0014: div
    IL_0015: add
    IL_0016: stloc.0      // num

    // [23 7 - 23 220]
    IL_0017: ldarg.1      // prefix
    IL_0018: ldarg.0      // phrases
    IL_0019: ldloc.0      // num
    IL_001a: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_001f: ldc.i4.5
    IL_0020: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
    IL_0025: ldc.i4.0
    IL_0026: bgt.s        IL_0033

    IL_0028: ldarg.0      // phrases
    IL_0029: ldarg.1      // prefix
    IL_002a: ldarg.2      // left
    IL_002b: ldloc.0      // num
    IL_002c: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0031: br.s         IL_003c
    IL_0033: ldarg.0      // phrases
    IL_0034: ldarg.1      // prefix
    IL_0035: ldloc.0      // num
    IL_0036: ldarg.3      // right
    IL_0037: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_003c: stloc.2      // V_2
    IL_003d: br.s         IL_003f
    IL_003f: ldloc.2      // V_2
    IL_0040: ret

  } // end of method LeftBorderTask::GetLeftBorderIndex

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
// MVID: F38052F6-EAC5-47AE-9240-036827177283
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\09 autocomplete\01_debug_mycompiler.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  Autocomplete.RightBorderTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static int32
    GetRightBorderIndex(
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
      [3] int32 V_3
    )

    IL_0000: nop

    IL_0001: br.s         IL_003f
    // start of loop, entry point: IL_003f
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
      IL_0034: brfalse.s    IL_003b

      // [24 11 - 24 23]
      IL_0036: ldloc.0      // index
      IL_0037: starg.s      left

      IL_0039: br.s         IL_003e

      // [26 11 - 26 24]
      IL_003b: ldloc.0      // index
      IL_003c: starg.s      right
      IL_003e: nop

      // [20 7 - 20 31]
      IL_003f: ldarg.3      // right
      IL_0040: ldarg.2      // left
      IL_0041: ldc.i4.1
      IL_0042: add
      IL_0043: cgt
      IL_0045: stloc.2      // V_2

      IL_0046: ldloc.2      // V_2
      IL_0047: brtrue.s     IL_0003
    // end of loop

    // [28 7 - 28 20]
    IL_0049: ldarg.3      // right
    IL_004a: stloc.3      // V_3
    IL_004b: br.s         IL_004d
    IL_004d: ldloc.3      // V_3
    IL_004e: ret

  } // end of method RightBorderTask::GetRightBorderIndex

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
