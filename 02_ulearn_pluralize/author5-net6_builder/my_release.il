// Type: Rectangles.PluralizeFormatter 
// Assembly: Pluralize-Author5-Net6_Builder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 80132DED-C7A7-4719-9C28-70E07FC9A53D
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author5-net6_builder/bin/Release/net6.0/Pluralize-Author5-Net6_Builder.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author5-net6_builder/bin/Release/net6.0/Pluralize-Author5-Net6_Builder.pdb

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

  .field private bool rublesEnabled

  .field private bool dollarsEnabled

  .method public hidebysig specialname rtspecialname instance void
    .ctor(
      bool rublesEnabled,
      bool dollarsEnabled
    ) cil managed
  {
    .maxstack 8

    // [8 9 - 8 75]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [10 13 - 10 48]
    IL_0006: ldarg.0      // this
    IL_0007: ldarg.1      // rublesEnabled
    IL_0008: stfld        bool Rectangles.PluralizeFormatter::rublesEnabled

    // [11 13 - 11 50]
    IL_000d: ldarg.0      // this
    IL_000e: ldarg.2      // dollarsEnabled
    IL_000f: stfld        bool Rectangles.PluralizeFormatter::dollarsEnabled

    // [12 9 - 12 10]
    IL_0014: ret

  } // end of method PluralizeFormatter::.ctor

  .method public hidebysig instance string
    PluralizeRubles(
      int32 count
    ) cil managed
  {
    .maxstack 2

    // [16 13 - 16 32]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.PluralizeFormatter::rublesEnabled
    IL_0006: brtrue.s     IL_000e

    // [16 33 - 16 69]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [18 13 - 18 91]
    IL_000e: ldarg.1      // count
    IL_000f: ldc.i4.s     100 // 0x64
    IL_0011: rem
    IL_0012: ldc.i4.s     10 // 0x0a
    IL_0014: ble.s        IL_001e
    IL_0016: ldarg.1      // count
    IL_0017: ldc.i4.s     100 // 0x64
    IL_0019: rem
    IL_001a: ldc.i4.s     15 // 0x0f
    IL_001c: blt.s        IL_002b
    IL_001e: ldarg.1      // count
    IL_001f: ldc.i4.s     10 // 0x0a
    IL_0021: rem
    IL_0022: brfalse.s    IL_002b
    IL_0024: ldarg.1      // count
    IL_0025: ldc.i4.s     10 // 0x0a
    IL_0027: rem
    IL_0028: ldc.i4.4
    IL_0029: ble.s        IL_0031

    // [18 92 - 18 108]
    IL_002b: ldstr        "рублей"
    IL_0030: ret

    // [19 13 - 19 33]
    IL_0031: ldarg.1      // count
    IL_0032: ldc.i4.s     10 // 0x0a
    IL_0034: rem
    IL_0035: ldc.i4.1
    IL_0036: bne.un.s     IL_003e

    // [19 34 - 19 49]
    IL_0038: ldstr        "рубль"
    IL_003d: ret

    // [20 13 - 20 28]
    IL_003e: ldstr        "рубля"
    IL_0043: ret

  } // end of method PluralizeFormatter::PluralizeRubles

  .method public hidebysig instance string
    PluralizeDollars(
      int32 count
    ) cil managed
  {
    .maxstack 2

    // [25 13 - 25 33]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.PluralizeFormatter::dollarsEnabled
    IL_0006: brtrue.s     IL_000e

    // [25 34 - 25 70]
    IL_0008: newobj       instance void [System.Runtime]System.NotImplementedException::.ctor()
    IL_000d: throw

    // [27 13 - 27 91]
    IL_000e: ldarg.1      // count
    IL_000f: ldc.i4.s     100 // 0x64
    IL_0011: rem
    IL_0012: ldc.i4.s     10 // 0x0a
    IL_0014: ble.s        IL_001e
    IL_0016: ldarg.1      // count
    IL_0017: ldc.i4.s     100 // 0x64
    IL_0019: rem
    IL_001a: ldc.i4.s     15 // 0x0f
    IL_001c: blt.s        IL_002b
    IL_001e: ldarg.1      // count
    IL_001f: ldc.i4.s     10 // 0x0a
    IL_0021: rem
    IL_0022: brfalse.s    IL_002b
    IL_0024: ldarg.1      // count
    IL_0025: ldc.i4.s     10 // 0x0a
    IL_0027: rem
    IL_0028: ldc.i4.4
    IL_0029: ble.s        IL_0031

    // [27 92 - 27 110]
    IL_002b: ldstr        "долларов"
    IL_0030: ret

    // [28 13 - 28 33]
    IL_0031: ldarg.1      // count
    IL_0032: ldc.i4.s     10 // 0x0a
    IL_0034: rem
    IL_0035: ldc.i4.1
    IL_0036: bne.un.s     IL_003e

    // [28 34 - 28 50]
    IL_0038: ldstr        "доллар"
    IL_003d: ret

    // [29 13 - 29 30]
    IL_003e: ldstr        "доллара"
    IL_0043: ret

  } // end of method PluralizeFormatter::PluralizeDollars
} // end of class Rectangles.PluralizeFormatter

// Type: Rectangles.PluralizeFormatterBuilder 
// Assembly: Pluralize-Author5-Net6_Builder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 80132DED-C7A7-4719-9C28-70E07FC9A53D
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author5-net6_builder/bin/Release/net6.0/Pluralize-Author5-Net6_Builder.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author5-net6_builder/bin/Release/net6.0/Pluralize-Author5-Net6_Builder.pdb

.class public auto ansi beforefieldinit
  Rectangles.PluralizeFormatterBuilder
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .field private bool rublesEnabled

  .field private bool dollarsEnabled

  .method public hidebysig instance class Rectangles.PluralizeFormatterBuilder
    EnableRubles() cil managed
  {
    .maxstack 8

    // [40 13 - 40 34]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.PluralizeFormatterBuilder::rublesEnabled

    // [41 13 - 41 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method PluralizeFormatterBuilder::EnableRubles

  .method public hidebysig instance class Rectangles.PluralizeFormatterBuilder
    EnableDollars() cil managed
  {
    .maxstack 8

    // [46 13 - 46 35]
    IL_0000: ldarg.0      // this
    IL_0001: ldc.i4.1
    IL_0002: stfld        bool Rectangles.PluralizeFormatterBuilder::dollarsEnabled

    // [47 13 - 47 25]
    IL_0007: ldarg.0      // this
    IL_0008: ret

  } // end of method PluralizeFormatterBuilder::EnableDollars

  .method public hidebysig instance class Rectangles.PluralizeFormatter
    Build() cil managed
  {
    .maxstack 8

    // [52 13 - 52 74]
    IL_0000: ldarg.0      // this
    IL_0001: ldfld        bool Rectangles.PluralizeFormatterBuilder::rublesEnabled
    IL_0006: ldarg.0      // this
    IL_0007: ldfld        bool Rectangles.PluralizeFormatterBuilder::dollarsEnabled
    IL_000c: newobj       instance void Rectangles.PluralizeFormatter::.ctor(bool, bool)
    IL_0011: ret

  } // end of method PluralizeFormatterBuilder::Build

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method PluralizeFormatterBuilder::.ctor
} // end of class Rectangles.PluralizeFormatterBuilder
