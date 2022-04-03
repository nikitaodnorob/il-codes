// Type: Autocomplete.LeftBorderTask 
// Assembly: Autocomplete, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: FA4B9B90-4433-4FBE-841C-1ED70539E8A0
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author2\bin\Release\Autocomplete.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author2\bin\Release\Autocomplete.pdb

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

    // [19 15 - 19 37]
    IL_0000: ldarg.3      // right
    IL_0001: ldarg.2      // left
    IL_0002: sub
    IL_0003: ldc.i4.1
    IL_0004: bgt.s        IL_0008

    // [20 13 - 20 25]
    IL_0006: ldarg.2      // left
    IL_0007: ret

    // [21 13 - 21 45]
    IL_0008: ldarg.2      // left
    IL_0009: ldarg.3      // right
    IL_000a: add
    IL_000b: ldc.i4.2
    IL_000c: div
    IL_000d: stloc.0      // middle

    // [23 17 - 24 95]
    IL_000e: ldarg.1      // prefix
    IL_000f: ldarg.0      // phrases
    IL_0010: ldloc.0      // middle
    IL_0011: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_0016: ldc.i4.5
    IL_0017: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
    IL_001c: ldc.i4.0
    IL_001d: blt.s        IL_002f
    IL_001f: ldarg.0      // phrases
    IL_0020: ldloc.0      // middle
    IL_0021: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
    IL_0026: ldarg.1      // prefix
    IL_0027: ldc.i4.5
    IL_0028: callvirt     instance bool [mscorlib]System.String::StartsWith(string, valuetype [mscorlib]System.StringComparison)
    IL_002d: brfalse.s    IL_0039

    // [25 21 - 25 78]
    IL_002f: ldarg.0      // phrases
    IL_0030: ldarg.1      // prefix
    IL_0031: ldarg.2      // left
    IL_0032: ldloc.0      // middle
    IL_0033: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0038: ret

    // [27 13 - 27 71]
    IL_0039: ldarg.0      // phrases
    IL_003a: ldarg.1      // prefix
    IL_003b: ldloc.0      // middle
    IL_003c: ldarg.3      // right
    IL_003d: call         int32 Autocomplete.LeftBorderTask::GetLeftBorderIndex(class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>, string, int32, int32)
    IL_0042: ret

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
// MVID: FA4B9B90-4433-4FBE-841C-1ED70539E8A0
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author2\bin\Release\Autocomplete.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\09_ulearn_autocomplete\author2\bin\Release\Autocomplete.pdb

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

    IL_0000: br.s         IL_0031
    // start of loop, entry point: IL_0031

      // [23 17 - 23 49]
      IL_0002: ldarg.2      // left
      IL_0003: ldarg.3      // right
      IL_0004: add
      IL_0005: ldc.i4.2
      IL_0006: div
      IL_0007: stloc.0      // middle

      // [25 21 - 26 99]
      IL_0008: ldarg.1      // prefix
      IL_0009: ldarg.0      // phrases
      IL_000a: ldloc.0      // middle
      IL_000b: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0010: ldc.i4.5
      IL_0011: call         int32 [mscorlib]System.String::Compare(string, string, valuetype [mscorlib]System.StringComparison)
      IL_0016: ldc.i4.0
      IL_0017: bge.s        IL_0029
      IL_0019: ldarg.0      // phrases
      IL_001a: ldloc.0      // middle
      IL_001b: callvirt     instance !0/*string*/ class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>::get_Item(int32)
      IL_0020: ldarg.1      // prefix
      IL_0021: ldc.i4.5
      IL_0022: callvirt     instance bool [mscorlib]System.String::StartsWith(string, valuetype [mscorlib]System.StringComparison)
      IL_0027: brfalse.s    IL_002e

      // [27 25 - 27 39]
      IL_0029: ldloc.0      // middle
      IL_002a: starg.s      left

      IL_002c: br.s         IL_0031

      // [29 25 - 29 40]
      IL_002e: ldloc.0      // middle
      IL_002f: starg.s      right

      // [22 13 - 22 37]
      IL_0031: ldarg.3      // right
      IL_0032: ldarg.2      // left
      IL_0033: sub
      IL_0034: ldc.i4.1
      IL_0035: bgt.s        IL_0002
    // end of loop

    // [32 13 - 32 26]
    IL_0037: ldarg.3      // right
    IL_0038: ret

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
