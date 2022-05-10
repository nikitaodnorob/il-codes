// Type: Autocomplete.LeftBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 1D2DDF10-1228-4ED1-9D9E-3A1A8BCD7BBD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author4\bin\Release\Autocomplete.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author4\bin\Release\Autocomplete.pdb

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
      [0] int32 middle
    )

    // [25 13 - 25 34]
    IL_0000: ldarg.3      // right
    IL_0001: ldarg.2      // left
    IL_0002: sub
    IL_0003: ldc.i4.2
    IL_0004: bge.s        IL_0008

    // [25 35 - 25 47]
    IL_0006: ldarg.2      // left
    IL_0007: ret

    // [26 13 - 26 52]
    IL_0008: ldarg.2      // left
    IL_0009: ldarg.3      // right
    IL_000a: ldarg.2      // left
    IL_000b: sub
    IL_000c: ldc.i4.2
    IL_000d: div
    IL_000e: add
    IL_000f: stloc.0      // middle

    // [27 13 - 27 97]
    IL_0010: ldarg.1      // prefix
    IL_0011: ldarg.0      // phrases
    IL_0012: ldloc.0      // middle
    IL_0013: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_0018: ldc.i4.5
    IL_0019: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
    IL_001e: ldc.i4.0
    IL_001f: ble.s        IL_002b

    // [28 17 - 28 78]
    IL_0021: ldarg.0      // phrases
    IL_0022: ldarg.1      // prefix
    IL_0023: ldloc.0      // middle
    IL_0024: ldarg.3      // right
    IL_0025: call         int32 Autocomplete.LeftBorderTask::ObtainLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_002a: ret

    // [29 13 - 29 73]
    IL_002b: ldarg.0      // phrases
    IL_002c: ldarg.1      // prefix
    IL_002d: ldarg.2      // left
    IL_002e: ldloc.0      // middle
    IL_002f: call         int32 Autocomplete.LeftBorderTask::ObtainLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0034: ret

  } // end of method LeftBorderTask::ObtainLeftBorderIndex

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method LeftBorderTask::.ctor
} // end of class Autocomplete.LeftBorderTask

// Type: Autocomplete.RightBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 1D2DDF10-1228-4ED1-9D9E-3A1A8BCD7BBD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author4\bin\Release\Autocomplete.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author4\bin\Release\Autocomplete.pdb

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
      [0] int32 middle
    )

    IL_0000: br.s         IL_003a
    // start of loop, entry point: IL_003a

      // [21 17 - 21 56]
      IL_0002: ldarg.2      // left
      IL_0003: ldarg.3      // right
      IL_0004: ldarg.2      // left
      IL_0005: sub
      IL_0006: ldc.i4.2
      IL_0007: div
      IL_0008: add
      IL_0009: stloc.0      // middle

      // [22 17 - 23 103]
      IL_000a: ldarg.0      // phrases
      IL_000b: ldloc.0      // middle
      IL_000c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0011: ldarg.1      // prefix
      IL_0012: callvirt     instance bool [mscorlib]System.String::StartsWith(string)
      IL_0017: brtrue.s     IL_002f
      IL_0019: ldarg.1      // prefix
      IL_001a: ldarg.0      // phrases
      IL_001b: ldloc.0      // middle
      IL_001c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0021: ldc.i4.5
      IL_0022: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
      IL_0027: ldc.i4.0
      IL_0028: clt
      IL_002a: ldc.i4.0
      IL_002b: ceq
      IL_002d: br.s         IL_0030
      IL_002f: ldc.i4.1

      // [24 17 - 24 26]
      IL_0030: brfalse.s    IL_0037

      // [25 21 - 25 35]
      IL_0032: ldloc.0      // middle
      IL_0033: starg.s      left

      IL_0035: br.s         IL_003a

      // [26 22 - 26 37]
      IL_0037: ldloc.0      // middle
      IL_0038: starg.s      right

      // [19 13 - 19 37]
      IL_003a: ldarg.3      // right
      IL_003b: ldarg.2      // left
      IL_003c: ldc.i4.1
      IL_003d: add
      IL_003e: bgt.s        IL_0002
    // end of loop

    // [28 13 - 28 26]
    IL_0040: ldarg.3      // right
    IL_0041: ret

  } // end of method RightBorderTask::ObtainRightBorderIndex

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method RightBorderTask::.ctor
} // end of class Autocomplete.RightBorderTask
