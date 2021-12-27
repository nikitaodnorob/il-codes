// Type: Pluralize.PluralizeTask 
// Assembly: Pluralize, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: C3E15F12-2A55-4F99-B163-450C05814CDA
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\02 pluralize\03_debug_mycompiler.exe
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

    // [13 7 - 13 19]
    IL_0001: ldarg.0      // count
    IL_0002: ldc.i4.s     100 // 0x64
    IL_0004: rem
    IL_0005: starg.s      count

    // [14 7 - 14 73]
    IL_0007: ldarg.0      // count
    IL_0008: ldc.i4.s     10 // 0x0a
    IL_000a: rem
    IL_000b: brfalse.s    IL_001f

    IL_000d: ldarg.0      // count
    IL_000e: ldc.i4.5
    IL_000f: blt.s        IL_0016
    IL_0011: ldarg.0      // count
    IL_0012: ldc.i4.s     20 // 0x14
    IL_0014: blt.s        IL_001f
    IL_0016: ldarg.0      // count
    IL_0017: ldc.i4.s     10 // 0x0a
    IL_0019: rem
    IL_001a: ldc.i4.4
    IL_001b: cgt
    IL_001d: br.s         IL_0020
    IL_001f: ldc.i4.1
    IL_0020: stloc.0      // V_0
    IL_0021: ldloc.0      // V_0
    IL_0022: brfalse.s    IL_002c

    // [15 9 - 15 25]
    IL_0024: ldstr        "рублей"
    IL_0029: stloc.1      // V_1

    IL_002a: br.s         IL_0047

    // [16 7 - 16 50]
    IL_002c: ldarg.0      // count
    IL_002d: ldc.i4.s     10 // 0x0a
    IL_002f: rem
    IL_0030: ldc.i4.1
    IL_0031: ceq
    IL_0033: stloc.2      // V_2

    IL_0034: ldloc.2      // V_2
    IL_0035: brfalse.s    IL_003f
    IL_0037: ldstr        "рубль"
    IL_003c: stloc.1      // V_1
    IL_003d: br.s         IL_0047
    IL_003f: ldstr        "рубля"
    IL_0044: stloc.1      // V_1
    IL_0045: br.s         IL_0047
    IL_0047: ldloc.1      // V_1
    IL_0048: ret

  } // end of method PluralizeTask::PluralizeRubles
} // end of class Pluralize.PluralizeTask
