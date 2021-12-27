// Type: Pluralize.PluralizeTask 
// Assembly: Pluralize, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 3857DEF2-B1AD-44F7-9B22-D7F2C896C3AB
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\02 pluralize\01_debug_mycompiler.exe
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

    // [13 7 - 13 85]
    IL_0001: ldarg.0      // count
    IL_0002: ldc.i4.s     100 // 0x64
    IL_0004: rem
    IL_0005: ldc.i4.s     10 // 0x0a
    IL_0007: ble.s        IL_0011

    IL_0009: ldarg.0      // count
    IL_000a: ldc.i4.s     100 // 0x64
    IL_000c: rem
    IL_000d: ldc.i4.s     15 // 0x0f
    IL_000f: blt.s        IL_0020
    IL_0011: ldarg.0      // count
    IL_0012: ldc.i4.s     10 // 0x0a
    IL_0014: rem
    IL_0015: brfalse.s    IL_0020
    IL_0017: ldarg.0      // count
    IL_0018: ldc.i4.s     10 // 0x0a
    IL_001a: rem
    IL_001b: ldc.i4.4
    IL_001c: cgt
    IL_001e: br.s         IL_0021
    IL_0020: ldc.i4.1
    IL_0021: stloc.0      // V_0
    IL_0022: ldloc.0      // V_0
    IL_0023: brfalse.s    IL_002d

    // [14 9 - 14 25]
    IL_0025: ldstr        "рублей"
    IL_002a: stloc.1      // V_1

    IL_002b: br.s         IL_0048

    // [15 7 - 15 50]
    IL_002d: ldarg.0      // count
    IL_002e: ldc.i4.s     10 // 0x0a
    IL_0030: rem
    IL_0031: ldc.i4.1
    IL_0032: ceq
    IL_0034: stloc.2      // V_2

    IL_0035: ldloc.2      // V_2
    IL_0036: brfalse.s    IL_0040
    IL_0038: ldstr        "рубль"
    IL_003d: stloc.1      // V_1
    IL_003e: br.s         IL_0048
    IL_0040: ldstr        "рубля"
    IL_0045: stloc.1      // V_1
    IL_0046: br.s         IL_0048
    IL_0048: ldloc.1      // V_1
    IL_0049: ret

  } // end of method PluralizeTask::PluralizeRubles
} // end of class Pluralize.PluralizeTask
