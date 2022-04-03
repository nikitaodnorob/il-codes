// Type: Autocomplete.LeftBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 56DA78BA-8A04-47FB-9F2A-468692A4E25D
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\09 autocomplete\02_debug_mycompiler.exe
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
      [2] int32 V_2,
      [3] bool V_3
    )

    IL_0000: nop

    // [20 7 - 20 29]
    IL_0001: ldarg.3      // right
    IL_0002: ldarg.2      // left
    IL_0003: sub
    IL_0004: ldc.i4.1
    IL_0005: cgt
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: stloc.1      // V_1

    IL_000b: ldloc.1      // V_1
    IL_000c: brfalse.s    IL_0012

    // [21 9 - 21 21]
    IL_000e: ldarg.2      // left
    IL_000f: stloc.2      // V_2

    IL_0010: br.s         IL_0058

    // [22 7 - 22 35]
    IL_0012: ldarg.2      // left
    IL_0013: ldarg.3      // right
    IL_0014: add
    IL_0015: ldc.i4.2
    IL_0016: div
    IL_0017: stloc.0      // num
    IL_0018: nop

    // [23 7 - 23 291]
    IL_0019: ldarg.1      // prefix
    IL_001a: ldarg.0      // phrases
    IL_001b: ldloc.0      // num
    IL_001c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_0021: ldc.i4.5
    IL_0022: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
    IL_0027: ldc.i4.0
    IL_0028: blt.s        IL_003a

    IL_002a: ldarg.0      // phrases
    IL_002b: ldloc.0      // num
    IL_002c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_0031: ldarg.1      // prefix
    IL_0032: ldc.i4.5
    IL_0033: callvirt     instance bool [mscorlib]System.String::StartsWith(string, valuetype [mscorlib]System.StringComparison)
    IL_0038: br.s         IL_003b
    IL_003a: ldc.i4.1
    IL_003b: stloc.3      // V_3
    IL_003c: ldloc.3      // V_3
    IL_003d: brfalse.s    IL_004b
    IL_003f: ldarg.0      // phrases
    IL_0040: ldarg.1      // prefix
    IL_0041: ldarg.2      // left
    IL_0042: ldloc.0      // num
    IL_0043: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0048: stloc.2      // V_2
    IL_0049: br.s         IL_0058
    IL_004b: nop
    IL_004c: ldarg.0      // phrases
    IL_004d: ldarg.1      // prefix
    IL_004e: ldloc.0      // num
    IL_004f: ldarg.3      // right
    IL_0050: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0055: stloc.2      // V_2
    IL_0056: br.s         IL_0058
    IL_0058: ldloc.2      // V_2
    IL_0059: ret

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
// MVID: 56DA78BA-8A04-47FB-9F2A-468692A4E25D
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\09 autocomplete\02_debug_mycompiler.exe
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

    IL_0001: br.s         IL_003b
    // start of loop, entry point: IL_003b
      IL_0003: nop

      // [22 9 - 22 39]
      IL_0004: ldarg.2      // left
      IL_0005: ldarg.3      // right
      IL_0006: add
      IL_0007: ldc.i4.2
      IL_0008: div
      IL_0009: stloc.0      // index
      IL_000a: nop

      // [23 9 - 23 166]
      IL_000b: ldarg.1      // prefix
      IL_000c: ldarg.0      // phrases
      IL_000d: ldloc.0      // index
      IL_000e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0013: ldc.i4.5
      IL_0014: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
      IL_0019: ldc.i4.0
      IL_001a: bge.s        IL_002c

      IL_001c: ldarg.0      // phrases
      IL_001d: ldloc.0      // index
      IL_001e: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0023: ldarg.1      // prefix
      IL_0024: ldc.i4.5
      IL_0025: callvirt     instance bool [mscorlib]System.String::StartsWith(string, valuetype [mscorlib]System.StringComparison)
      IL_002a: br.s         IL_002d
      IL_002c: ldc.i4.1
      IL_002d: stloc.1      // V_1
      IL_002e: ldloc.1      // V_1
      IL_002f: brfalse.s    IL_0036

      // [24 11 - 24 23]
      IL_0031: ldloc.0      // index
      IL_0032: starg.s      left

      IL_0034: br.s         IL_0039

      // [26 11 - 26 24]
      IL_0036: ldloc.0      // index
      IL_0037: starg.s      right
      IL_0039: nop
      IL_003a: nop

      // [20 7 - 20 31]
      IL_003b: ldarg.3      // right
      IL_003c: ldarg.2      // left
      IL_003d: sub
      IL_003e: ldc.i4.1
      IL_003f: cgt
      IL_0041: stloc.2      // V_2

      IL_0042: ldloc.2      // V_2
      IL_0043: brtrue.s     IL_0003
    // end of loop

    // [28 7 - 28 20]
    IL_0045: ldarg.3      // right
    IL_0046: stloc.3      // V_3
    IL_0047: br.s         IL_0049
    IL_0049: ldloc.3      // V_3
    IL_004a: ret

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
