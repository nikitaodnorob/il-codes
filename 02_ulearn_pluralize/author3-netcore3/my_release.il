// Type: Pluralize.PluralizeTask 
// Assembly: Pluralize-Author3-NetCore3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8196CA8D-5368-4B20-912D-796A4864B5BD
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\02_ulearn_pluralize\author3-netcore3\bin\Release\netcoreapp3.1\Pluralize-Author3-NetCore3.dll
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Pluralize.PluralizeTask
    extends [System.Runtime]System.Object
{

  .method public hidebysig static string
    PluralizeRubles(
      int32 count
    ) cil managed
  {
    .maxstack 8

    // [13 7 - 13 19]
    IL_0000: ldarg.0      // count
    IL_0001: ldc.i4.s     100 // 0x64
    IL_0003: rem
    IL_0004: starg.s      count

    // [14 7 - 14 73]
    IL_0006: ldarg.0      // count
    IL_0007: ldc.i4.s     10 // 0x0a
    IL_0009: rem
    IL_000a: brfalse.s    IL_001c

    IL_000c: ldarg.0      // count
    IL_000d: ldc.i4.5
    IL_000e: blt.s        IL_0015
    IL_0010: ldarg.0      // count
    IL_0011: ldc.i4.s     20 // 0x14
    IL_0013: blt.s        IL_001c
    IL_0015: ldarg.0      // count
    IL_0016: ldc.i4.s     10 // 0x0a
    IL_0018: rem
    IL_0019: ldc.i4.4
    IL_001a: ble.s        IL_0022

    // [15 9 - 15 25]
    IL_001c: ldstr        "рублей"
    IL_0021: ret

    // [16 7 - 16 50]
    IL_0022: ldarg.0      // count
    IL_0023: ldc.i4.s     10 // 0x0a
    IL_0025: rem
    IL_0026: ldc.i4.1
    IL_0027: beq.s     IL_002f

    IL_0029: ldstr        "рубля"
    IL_002e: ret
    IL_002f: ldstr        "рубль"
    IL_0034: ret

  } // end of method PluralizeTask::PluralizeRubles
} // end of class Pluralize.PluralizeTask
