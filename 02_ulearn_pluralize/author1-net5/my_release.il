// Type: Pluralize.PluralizeTask 
// Assembly: Pluralize-Author1-Net5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CCAC1305-0131-4D71-A781-52D5AFD50A89
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\02_ulearn_pluralize\author1-net5\bin\Release\net5.0\Pluralize-Author1-Net5.dll
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

    // [13 7 - 13 85]
    IL_0000: ldarg.0      // count
    IL_0001: ldc.i4.s     100 // 0x64
    IL_0003: rem
    IL_0004: ldc.i4.s     10 // 0x0a
    IL_0006: ble.s        IL_0010

    IL_0008: ldarg.0      // count
    IL_0009: ldc.i4.s     100 // 0x64
    IL_000b: rem
    IL_000c: ldc.i4.s     15 // 0x0f
    IL_000e: blt.s        IL_001d
    IL_0010: ldarg.0      // count
    IL_0011: ldc.i4.s     10 // 0x0a
    IL_0013: rem
    IL_0014: brfalse.s    IL_001d
    IL_0016: ldarg.0      // count
    IL_0017: ldc.i4.s     10 // 0x0a
    IL_0019: rem
    IL_001a: ldc.i4.4
    IL_001b: ble.s        IL_0023

    // [14 9 - 14 25]
    IL_001d: ldstr        "рублей"
    IL_0022: ret

    // [15 7 - 15 50]
    IL_0023: ldarg.0      // count
    IL_0024: ldc.i4.s     10 // 0x0a
    IL_0026: rem
    IL_0027: ldc.i4.1
    IL_0028: bne.un.s     IL_0030

    IL_002a: ldstr        "рубль"
    IL_002f: ret
    IL_0030: ldstr        "рубля"
    IL_0035: ret

  } // end of method PluralizeTask::PluralizeRubles
} // end of class Pluralize.PluralizeTask
