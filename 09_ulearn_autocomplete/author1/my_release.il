// Type: Autocomplete.LeftBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 525198C8-4744-4CD7-BDE7-A2C2FE395B09
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author1\bin\Release\Autocomplete.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author1\bin\Release\Autocomplete.pdb

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

    // [27 13 - 29 69]
    IL_0010: ldarg.1      // prefix
    IL_0011: ldarg.0      // phrases
    IL_0012: ldloc.0      // middle
    IL_0013: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_0018: ldc.i4.5
    IL_0019: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
    IL_001e: ldc.i4.0
    IL_001f: bgt.s        IL_002b
    IL_0021: ldarg.0      // phrases
    IL_0022: ldarg.1      // prefix
    IL_0023: ldarg.2      // left
    IL_0024: ldloc.0      // middle
    IL_0025: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_002a: ret
    IL_002b: ldarg.0      // phrases
    IL_002c: ldarg.1      // prefix
    IL_002d: ldloc.0      // middle
    IL_002e: ldarg.3      // right
    IL_002f: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0034: ret

  } // end of method LeftBorderTask::GetLeftBorderIndex

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
// MVID: 525198C8-4744-4CD7-BDE7-A2C2FE395B09
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author1\bin\Release\Autocomplete.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author1\bin\Release\Autocomplete.pdb

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
      [0] int32 middle
    )

    IL_0000: br.s         IL_0032
    // start of loop, entry point: IL_0032

      // [21 17 - 21 56]
      IL_0002: ldarg.2      // left
      IL_0003: ldarg.3      // right
      IL_0004: ldarg.2      // left
      IL_0005: sub
      IL_0006: ldc.i4.2
      IL_0007: div
      IL_0008: add
      IL_0009: stloc.0      // middle

      // [22 17 - 23 102]
      IL_000a: ldarg.0      // phrases
      IL_000b: ldloc.0      // middle
      IL_000c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0011: ldarg.1      // prefix
      IL_0012: callvirt     instance bool [mscorlib]System.String::StartsWith(string)
      IL_0017: brtrue.s     IL_002a
      IL_0019: ldarg.1      // prefix
      IL_001a: ldarg.0      // phrases
      IL_001b: ldloc.0      // middle
      IL_001c: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0021: ldc.i4.5
      IL_0022: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
      IL_0027: ldc.i4.0
      IL_0028: blt.s        IL_002f

      // [24 21 - 24 35]
      IL_002a: ldloc.0      // middle
      IL_002b: starg.s      left

      IL_002d: br.s         IL_0032

      // [25 22 - 25 37]
      IL_002f: ldloc.0      // middle
      IL_0030: starg.s      right

      // [19 13 - 19 37]
      IL_0032: ldarg.3      // right
      IL_0033: ldarg.2      // left
      IL_0034: ldc.i4.1
      IL_0035: add
      IL_0036: bgt.s        IL_0002
    // end of loop

    // [27 13 - 27 26]
    IL_0038: ldarg.3      // right
    IL_0039: ret

  } // end of method RightBorderTask::GetRightBorderIndex

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method RightBorderTask::.ctor
} // end of class Autocomplete.RightBorderTask
