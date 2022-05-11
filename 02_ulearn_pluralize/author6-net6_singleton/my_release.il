// Type: Rectangles.PluralizeFormatter 
// Assembly: Pluralize-Author6-Net6_Singleton, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 671F3950-538F-4F74-8E4B-4B678B08AA91
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author6-net6_singleton/bin/Release/net6.0/Pluralize-Author6-Net6_Singleton.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author6-net6_singleton/bin/Release/net6.0/Pluralize-Author6-Net6_Singleton.pdb

.class public auto ansi beforefieldinit
  Rectangles.PluralizeFormatter
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private static class Rectangles.PluralizeFormatter 'instance'
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 02 00 00 ) // .....
      // unsigned int8(2) // 0x02

  .method private hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    // [7 9 - 7 37]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [7 40 - 7 41]
    IL_0006: ret

  } // end of method PluralizeFormatter::.ctor

  .method public hidebysig static class Rectangles.PluralizeFormatter
    GetInstance() cil managed
  {
    .maxstack 8

    // [11 13 - 11 34]
    IL_0000: ldsfld       class Rectangles.PluralizeFormatter Rectangles.PluralizeFormatter::'instance'
    IL_0005: brtrue.s     IL_0011

    // [11 35 - 11 71]
    IL_0007: newobj       instance void Rectangles.PluralizeFormatter::.ctor()
    IL_000c: stsfld       class Rectangles.PluralizeFormatter Rectangles.PluralizeFormatter::'instance'

    // [12 13 - 12 29]
    IL_0011: ldsfld       class Rectangles.PluralizeFormatter Rectangles.PluralizeFormatter::'instance'
    IL_0016: ret

  } // end of method PluralizeFormatter::GetInstance

  .method public hidebysig instance string
    PluralizeRubles(
      int32 count
    ) cil managed
  {
    .maxstack 8

    // [17 13 - 17 91]
    IL_0000: ldarg.1      // count
    IL_0001: ldc.i4.s     100 // 0x64
    IL_0003: rem
    IL_0004: ldc.i4.s     10 // 0x0a
    IL_0006: ble.s        IL_0010
    IL_0008: ldarg.1      // count
    IL_0009: ldc.i4.s     100 // 0x64
    IL_000b: rem
    IL_000c: ldc.i4.s     15 // 0x0f
    IL_000e: blt.s        IL_001d
    IL_0010: ldarg.1      // count
    IL_0011: ldc.i4.s     10 // 0x0a
    IL_0013: rem
    IL_0014: brfalse.s    IL_001d
    IL_0016: ldarg.1      // count
    IL_0017: ldc.i4.s     10 // 0x0a
    IL_0019: rem
    IL_001a: ldc.i4.4
    IL_001b: ble.s        IL_0023

    // [17 92 - 17 108]
    IL_001d: ldstr        "рублей"
    IL_0022: ret

    // [18 13 - 18 33]
    IL_0023: ldarg.1      // count
    IL_0024: ldc.i4.s     10 // 0x0a
    IL_0026: rem
    IL_0027: ldc.i4.1
    IL_0028: bne.un.s     IL_0030

    // [18 34 - 18 49]
    IL_002a: ldstr        "рубль"
    IL_002f: ret

    // [19 13 - 19 28]
    IL_0030: ldstr        "рубля"
    IL_0035: ret

  } // end of method PluralizeFormatter::PluralizeRubles

  .method public hidebysig instance string
    PluralizeDollars(
      int32 count
    ) cil managed
  {
    .maxstack 8

    // [24 13 - 24 91]
    IL_0000: ldarg.1      // count
    IL_0001: ldc.i4.s     100 // 0x64
    IL_0003: rem
    IL_0004: ldc.i4.s     10 // 0x0a
    IL_0006: ble.s        IL_0010
    IL_0008: ldarg.1      // count
    IL_0009: ldc.i4.s     100 // 0x64
    IL_000b: rem
    IL_000c: ldc.i4.s     15 // 0x0f
    IL_000e: blt.s        IL_001d
    IL_0010: ldarg.1      // count
    IL_0011: ldc.i4.s     10 // 0x0a
    IL_0013: rem
    IL_0014: brfalse.s    IL_001d
    IL_0016: ldarg.1      // count
    IL_0017: ldc.i4.s     10 // 0x0a
    IL_0019: rem
    IL_001a: ldc.i4.4
    IL_001b: ble.s        IL_0023

    // [24 92 - 24 110]
    IL_001d: ldstr        "долларов"
    IL_0022: ret

    // [25 13 - 25 33]
    IL_0023: ldarg.1      // count
    IL_0024: ldc.i4.s     10 // 0x0a
    IL_0026: rem
    IL_0027: ldc.i4.1
    IL_0028: bne.un.s     IL_0030

    // [25 34 - 25 50]
    IL_002a: ldstr        "доллар"
    IL_002f: ret

    // [26 13 - 26 30]
    IL_0030: ldstr        "доллара"
    IL_0035: ret

  } // end of method PluralizeFormatter::PluralizeDollars
} // end of class Rectangles.PluralizeFormatter
