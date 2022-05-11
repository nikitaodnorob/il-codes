// Type: Rectangles.RublesPluralizeFormatter 
// Assembly: Pluralize-Author7-Net6_Factory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B77ABF86-28AB-40F2-ABE6-616C4ECAA889
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.pdb

.class public auto ansi beforefieldinit
  Rectangles.RublesPluralizeFormatter
    extends [System.Runtime]System.Object
    implements Rectangles.IPluralizeFormatter
{

  .method public final hidebysig virtual newslot instance string
    Pluralize(
      int32 count
    ) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
      = (01 00 01 00 00 ) // .....
      // unsigned int8(1) // 0x01
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

  } // end of method RublesPluralizeFormatter::Pluralize

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method RublesPluralizeFormatter::.ctor
} // end of class Rectangles.RublesPluralizeFormatter

// Type: Rectangles.DollarPluralizeFormatter 
// Assembly: Pluralize-Author7-Net6_Factory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B77ABF86-28AB-40F2-ABE6-616C4ECAA889
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.pdb

.class public auto ansi beforefieldinit
  Rectangles.DollarPluralizeFormatter
    extends [System.Runtime]System.Object
    implements Rectangles.IPluralizeFormatter
{

  .method public final hidebysig virtual newslot instance string
    Pluralize(
      int32 count
    ) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
      = (01 00 01 00 00 ) // .....
      // unsigned int8(1) // 0x01
    .maxstack 8

    // [27 13 - 27 91]
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

    // [27 92 - 27 110]
    IL_001d: ldstr        "долларов"
    IL_0022: ret

    // [28 13 - 28 33]
    IL_0023: ldarg.1      // count
    IL_0024: ldc.i4.s     10 // 0x0a
    IL_0026: rem
    IL_0027: ldc.i4.1
    IL_0028: bne.un.s     IL_0030

    // [28 34 - 28 50]
    IL_002a: ldstr        "доллар"
    IL_002f: ret

    // [29 13 - 29 30]
    IL_0030: ldstr        "доллара"
    IL_0035: ret

  } // end of method DollarPluralizeFormatter::Pluralize

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method DollarPluralizeFormatter::.ctor
} // end of class Rectangles.DollarPluralizeFormatter

// Type: Rectangles.RublesPluralizeFormatterFactory 
// Assembly: Pluralize-Author7-Net6_Factory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B77ABF86-28AB-40F2-ABE6-616C4ECAA889
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.pdb

.class public auto ansi beforefieldinit
  Rectangles.RublesPluralizeFormatterFactory
    extends [System.Runtime]System.Object
    implements Rectangles.IPluralizeFormatterFactory
{

  .method public final hidebysig virtual newslot instance class Rectangles.IPluralizeFormatter
    MakePluralizeFormatter() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
      = (01 00 01 00 00 ) // .....
      // unsigned int8(1) // 0x01
    .maxstack 8

    // [37 13 - 37 51]
    IL_0000: newobj       instance void Rectangles.RublesPluralizeFormatter::.ctor()
    IL_0005: ret

  } // end of method RublesPluralizeFormatterFactory::MakePluralizeFormatter

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method RublesPluralizeFormatterFactory::.ctor
} // end of class Rectangles.RublesPluralizeFormatterFactory

// Type: Rectangles.DollarsPluralizeFormatterFactory 
// Assembly: Pluralize-Author7-Net6_Factory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B77ABF86-28AB-40F2-ABE6-616C4ECAA889
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/02_ulearn_pluralize/author7-net6_factory/bin/Release/net6.0/Pluralize-Author7-Net6_Factory.pdb

.class public auto ansi beforefieldinit
  Rectangles.DollarsPluralizeFormatterFactory
    extends [System.Runtime]System.Object
    implements Rectangles.IPluralizeFormatterFactory
{

  .method public final hidebysig virtual newslot instance class Rectangles.IPluralizeFormatter
    MakePluralizeFormatter() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
      = (01 00 01 00 00 ) // .....
      // unsigned int8(1) // 0x01
    .maxstack 8

    // [45 13 - 45 51]
    IL_0000: newobj       instance void Rectangles.DollarPluralizeFormatter::.ctor()
    IL_0005: ret

  } // end of method DollarsPluralizeFormatterFactory::MakePluralizeFormatter

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
    IL_0006: ret

  } // end of method DollarsPluralizeFormatterFactory::.ctor
} // end of class Rectangles.DollarsPluralizeFormatterFactory
