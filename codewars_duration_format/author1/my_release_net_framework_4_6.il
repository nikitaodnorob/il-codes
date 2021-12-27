// Type: ConsoleApp1.HumanTimeFormat 
// Assembly: ConsoleApp1_framework_4_6, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 0888A6FD-D522-4CAB-99FA-204B32B077B2
// Location: D:\Windows\Desktop\диссертация\il codes\codewars\Human readable duration format (different platforms)\net_framework_4_6.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  ConsoleApp1.HumanTimeFormat
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class ConsoleApp1.HumanTimeFormat/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<string, bool> '<>9__1_0'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void ConsoleApp1.HumanTimeFormat/'<>c'::.ctor()
      IL_0005: stsfld       class ConsoleApp1.HumanTimeFormat/'<>c' ConsoleApp1.HumanTimeFormat/'<>c'::'<>9'
      IL_000a: ret

    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool
      '<formatDuration>b__1_0'(
        string part
      ) cil managed
    {
      .maxstack 8

      // [28 54 - 28 68]
      IL_0000: ldarg.1      // part
      IL_0001: ldc.i4.0
      IL_0002: callvirt     instance char [mscorlib]System.String::get_Chars(int32)
      IL_0007: ldc.i4.s     48 // 0x30
      IL_0009: ceq
      IL_000b: ldc.i4.0
      IL_000c: ceq
      IL_000e: ret

    } // end of method '<>c'::'<formatDuration>b__1_0'
  } // end of class '<>c'

  .method private hidebysig static string
    formatPart(
      string part
    ) cil managed
  {
    .maxstack 8

    // [15 54 - 15 108]
    IL_0000: ldarg.0      // part
    IL_0001: ldc.i4.1
    IL_0002: newarr       [mscorlib]System.Char
    IL_0007: dup

    IL_0008: ldc.i4.0
    IL_0009: ldc.i4.s     32 // 0x20
    IL_000b: stelem.i2
    IL_000c: callvirt     instance string[] [mscorlib]System.String::Split(char[])
    IL_0011: ldc.i4.0
    IL_0012: ldelem.ref
    IL_0013: call         int32 [mscorlib]System.Int32::Parse(string)
    IL_0018: ldc.i4.1
    IL_0019: bgt.s        IL_001d
    IL_001b: ldarg.0      // part
    IL_001c: ret
    IL_001d: ldarg.0      // part
    IL_001e: ldstr        "s"
    IL_0023: call         string [mscorlib]System.String::Concat(string, string)
    IL_0028: ret

  } // end of method HumanTimeFormat::formatPart

  .method public hidebysig static string
    formatDuration(
      int32 seconds
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] string[] 'array'
    )

    // [19 7 - 19 24]
    IL_0000: ldarg.0      // seconds
    IL_0001: brtrue.s     IL_0009

    // [20 9 - 20 22]
    IL_0003: ldstr        "now"
    IL_0008: ret

    // [21 7 - 28 165]
    IL_0009: ldc.i4.5
    IL_000a: newarr       [mscorlib]System.String
    IL_000f: dup

    IL_0010: ldc.i4.0
    IL_0011: ldstr        "{0} year"
    IL_0016: ldarg.0      // seconds
    IL_0017: conv.r8
    IL_0018: ldc.r8       3600
    IL_0021: div
    IL_0022: ldc.r8       24
    IL_002b: div
    IL_002c: ldc.r8       365
    IL_0035: div
    IL_0036: call         float64 [mscorlib]System.Math::Floor(float64)
    IL_003b: box          [mscorlib]System.Double
    IL_0040: call         string [mscorlib]System.String::Format(string, object)
    IL_0045: stelem.ref
    IL_0046: dup
    IL_0047: ldc.i4.1
    IL_0048: ldstr        "{0} day"
    IL_004d: ldarg.0      // seconds
    IL_004e: conv.r8
    IL_004f: ldc.r8       3600
    IL_0058: div
    IL_0059: ldc.r8       24
    IL_0062: div
    IL_0063: call         float64 [mscorlib]System.Math::Floor(float64)
    IL_0068: ldc.r8       365
    IL_0071: rem
    IL_0072: box          [mscorlib]System.Double
    IL_0077: call         string [mscorlib]System.String::Format(string, object)
    IL_007c: stelem.ref
    IL_007d: dup
    IL_007e: ldc.i4.2
    IL_007f: ldstr        "{0} hour"
    IL_0084: ldarg.0      // seconds
    IL_0085: conv.r8
    IL_0086: ldc.r8       3600
    IL_008f: div
    IL_0090: call         float64 [mscorlib]System.Math::Floor(float64)
    IL_0095: ldc.r8       24
    IL_009e: rem
    IL_009f: box          [mscorlib]System.Double
    IL_00a4: call         string [mscorlib]System.String::Format(string, object)
    IL_00a9: stelem.ref
    IL_00aa: dup
    IL_00ab: ldc.i4.3
    IL_00ac: ldstr        "{0} minute"
    IL_00b1: ldarg.0      // seconds
    IL_00b2: conv.r8
    IL_00b3: ldc.r8       60
    IL_00bc: div
    IL_00bd: call         float64 [mscorlib]System.Math::Floor(float64)
    IL_00c2: ldc.r8       60
    IL_00cb: rem
    IL_00cc: box          [mscorlib]System.Double
    IL_00d1: call         string [mscorlib]System.String::Format(string, object)
    IL_00d6: stelem.ref
    IL_00d7: dup
    IL_00d8: ldc.i4.4
    IL_00d9: ldstr        "{0} second"
    IL_00de: ldarg.0      // seconds
    IL_00df: ldc.i4.s     60 // 0x3c
    IL_00e1: rem
    IL_00e2: box          [mscorlib]System.Int32
    IL_00e7: call         string [mscorlib]System.String::Format(string, object)
    IL_00ec: stelem.ref
    IL_00ed: ldsfld       class [mscorlib]System.Func`2<string, bool> ConsoleApp1.HumanTimeFormat/'<>c'::'<>9__1_0'
    IL_00f2: dup
    IL_00f3: brtrue.s     IL_010c
    IL_00f5: pop
    IL_00f6: ldsfld       class ConsoleApp1.HumanTimeFormat/'<>c' ConsoleApp1.HumanTimeFormat/'<>c'::'<>9'
    IL_00fb: ldftn        instance bool ConsoleApp1.HumanTimeFormat/'<>c'::'<formatDuration>b__1_0'(string)
    IL_0101: newobj       instance void class [mscorlib]System.Func`2<string, bool>::.ctor(object, native int)
    IL_0106: dup
    IL_0107: stsfld       class [mscorlib]System.Func`2<string, bool> ConsoleApp1.HumanTimeFormat/'<>c'::'<>9__1_0'
    IL_010c: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/> [System.Core]System.Linq.Enumerable::Where<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>, class [mscorlib]System.Func`2<!!0/*string*/, bool>)
    IL_0111: ldnull
    IL_0112: ldftn        string ConsoleApp1.HumanTimeFormat::formatPart(string)
    IL_0118: newobj       instance void class [mscorlib]System.Func`2<string, string>::.ctor(object, native int)
    IL_011d: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*string*/> [System.Core]System.Linq.Enumerable::Select<string, string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>, class [mscorlib]System.Func`2<!!0/*string*/, !!1/*string*/>)
    IL_0122: call         !!0/*string*/[] [System.Core]System.Linq.Enumerable::ToArray<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_0127: stloc.0      // 'array'

    // [29 7 - 29 182]
    IL_0128: ldloc.0      // 'array'
    IL_0129: ldlen
    IL_012a: conv.i4
    IL_012b: ldc.i4.1
    IL_012c: beq.s        IL_0154

    IL_012e: ldstr        ", "
    IL_0133: ldloc.0      // 'array'
    IL_0134: ldloc.0      // 'array'
    IL_0135: ldlen
    IL_0136: conv.i4
    IL_0137: ldc.i4.1
    IL_0138: sub
    IL_0139: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/> [System.Core]System.Linq.Enumerable::Take<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>, int32)
    IL_013e: call         string [mscorlib]System.String::Join(string, class [mscorlib]System.Collections.Generic.IEnumerable`1<string>)
    IL_0143: ldstr        " and "
    IL_0148: ldloc.0      // 'array'
    IL_0149: call         !!0/*string*/ [System.Core]System.Linq.Enumerable::Last<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_014e: call         string [mscorlib]System.String::Concat(string, string, string)
    IL_0153: ret
    IL_0154: ldloc.0      // 'array'
    IL_0155: ldc.i4.0
    IL_0156: ldelem.ref
    IL_0157: ret

  } // end of method HumanTimeFormat::formatDuration

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method HumanTimeFormat::.ctor
} // end of class ConsoleApp1.HumanTimeFormat
