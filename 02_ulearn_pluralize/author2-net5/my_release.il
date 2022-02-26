// Type: Pluralize.PluralizeTask 
// Assembly: Pluralize-Author2-Net5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 080CD101-FD97-43C1-B5DC-91C45A61CD7D
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\02_ulearn_pluralize\author2-net5\bin\Release\net5.0\Pluralize-Author2-Net5.dll
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
    .maxstack 2

    // [13 7 - 13 48]
    IL_0000: ldarg.0      // count
    IL_0001: ldc.i4.s     10 // 0x0a
    IL_0003: rem
    IL_0004: ldc.i4.1
    IL_0005: bne.un.s     IL_0015

    IL_0007: ldarg.0      // count
    IL_0008: ldc.i4.s     100 // 0x64
    IL_000a: rem
    IL_000b: ldc.i4.s     11 // 0x0b
    IL_000d: beq.s        IL_0015

    // [14 9 - 14 24]
    IL_000f: ldstr        "рубль"
    IL_0014: ret

    // [15 7 - 15 131]
    IL_0015: ldarg.0      // count
    IL_0016: ldc.i4.s     10 // 0x0a
    IL_0018: rem
    IL_0019: ldc.i4.1
    IL_001a: ble.s        IL_0041

    IL_001c: ldarg.0      // count
    IL_001d: ldc.i4.s     10 // 0x0a
    IL_001f: rem
    IL_0020: ldc.i4.5
    IL_0021: bge.s        IL_0041
    IL_0023: ldarg.0      // count
    IL_0024: ldc.i4.s     100 // 0x64
    IL_0026: rem
    IL_0027: ldc.i4.s     12 // 0x0c
    IL_0029: beq.s        IL_0041
    IL_002b: ldarg.0      // count
    IL_002c: ldc.i4.s     100 // 0x64
    IL_002e: rem
    IL_002f: ldc.i4.s     13 // 0x0d
    IL_0031: beq.s        IL_0041
    IL_0033: ldarg.0      // count
    IL_0034: ldc.i4.s     100 // 0x64
    IL_0036: rem
    IL_0037: ldc.i4.s     14 // 0x0e
    IL_0039: beq.s        IL_0041
    IL_003b: ldstr        "рубля"
    IL_0040: ret
    IL_0041: ldstr        "рублей"
    IL_0046: ret

  } // end of method PluralizeTask::PluralizeRubles
} // end of class Pluralize.PluralizeTask
