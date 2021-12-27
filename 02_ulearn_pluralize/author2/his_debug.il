// Type: Pluralize.PluralizeTask 
// Assembly: Pluralize, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D3791C99-41BE-4C76-8E16-CADD4A2D42DD
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\02 pluralize\02_debug_himcompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Pluralize.PluralizeTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static string
    PluralizeRubles(
      int32 count
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] bool V_0,
      [1] string V_1,
      [2] bool V_2
    )

    IL_0000: nop

    // [13 7 - 13 48]
    IL_0001: ldarg.0      // count
    IL_0002: ldc.i4.s     10 // 0x0a
    IL_0004: rem
    IL_0005: ldc.i4.1
    IL_0006: bne.un.s     IL_0015

    IL_0008: ldarg.0      // count
    IL_0009: ldc.i4.s     100 // 0x64
    IL_000b: rem
    IL_000c: ldc.i4.s     11 // 0x0b
    IL_000e: ceq
    IL_0010: ldc.i4.0
    IL_0011: ceq
    IL_0013: br.s         IL_0016
    IL_0015: ldc.i4.0
    IL_0016: stloc.0      // V_0
    IL_0017: ldloc.0      // V_0
    IL_0018: brfalse.s    IL_0022

    // [14 9 - 14 24]
    IL_001a: ldstr        "рубль"
    IL_001f: stloc.1      // V_1

    IL_0020: br.s         IL_0062

    // [15 7 - 15 131]
    IL_0022: ldarg.0      // count
    IL_0023: ldc.i4.s     10 // 0x0a
    IL_0025: rem
    IL_0026: ldc.i4.1
    IL_0027: ble.s        IL_004d

    IL_0029: ldarg.0      // count
    IL_002a: ldc.i4.s     10 // 0x0a
    IL_002c: rem
    IL_002d: ldc.i4.5
    IL_002e: bge.s        IL_004d
    IL_0030: ldarg.0      // count
    IL_0031: ldc.i4.s     100 // 0x64
    IL_0033: rem
    IL_0034: ldc.i4.s     12 // 0x0c
    IL_0036: beq.s        IL_004d
    IL_0038: ldarg.0      // count
    IL_0039: ldc.i4.s     100 // 0x64
    IL_003b: rem
    IL_003c: ldc.i4.s     13 // 0x0d
    IL_003e: beq.s        IL_004d
    IL_0040: ldarg.0      // count
    IL_0041: ldc.i4.s     100 // 0x64
    IL_0043: rem
    IL_0044: ldc.i4.s     14 // 0x0e
    IL_0046: ceq
    IL_0048: ldc.i4.0
    IL_0049: ceq
    IL_004b: br.s         IL_004e
    IL_004d: ldc.i4.0
    IL_004e: stloc.2      // V_2
    IL_004f: ldloc.2      // V_2
    IL_0050: brfalse.s    IL_005a
    IL_0052: ldstr        "рубля"
    IL_0057: stloc.1      // V_1
    IL_0058: br.s         IL_0062
    IL_005a: ldstr        "рублей"
    IL_005f: stloc.1      // V_1
    IL_0060: br.s         IL_0062
    IL_0062: ldloc.1      // V_1
    IL_0063: ret

  } // end of method PluralizeTask::PluralizeRubles
} // end of class Pluralize.PluralizeTask
