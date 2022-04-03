// Type: GaussAlgorithm.Solver 
// Assembly: GaussAlgorithm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: C6A02223-C054-4557-A452-4C58A4B871B5
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\12 gauss\02_release_mycompiler.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  GaussAlgorithm.Solver
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass0_0'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public int32 shiftColumn

    .field public int32 i

    .field public class [mscorlib]System.Predicate`1<class [mscorlib]System.Collections.Generic.List`1<float64>> '<>9__1'

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass0_0'::.ctor

    .method assembly hidebysig instance bool
      '<Solve>b__1'(
        class [mscorlib]System.Collections.Generic.List`1<float64> x
      ) cil managed
    {
      .maxstack 8

      // [30 86 - 30 111]
      IL_0000: ldarg.1      // x
      IL_0001: ldarg.0      // this
      IL_0002: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0007: ldarg.0      // this
      IL_0008: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_000d: add
      IL_000e: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0013: ldc.r8       0.0
      IL_001c: ceq
      IL_001e: ldc.i4.0
      IL_001f: ceq
      IL_0021: ret

    } // end of method '<>c__DisplayClass0_0'::'<Solve>b__1'
  } // end of class '<>c__DisplayClass0_0'

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class GaussAlgorithm.Solver/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>> '<>9__0_0'

    .field public static class [mscorlib]System.Func`2<float64, bool> '<>9__0_2'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void GaussAlgorithm.Solver/'<>c'::.ctor()
      IL_0005: stsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
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

    .method assembly hidebysig instance class [mscorlib]System.Collections.Generic.List`1<float64>
      '<Solve>b__0_0'(
        float64[] x
      ) cil managed
    {
      .maxstack 8

      // [19 167 - 19 209]
      IL_0000: ldarg.1      // x
      IL_0001: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::ToList<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
      IL_0006: ret

    } // end of method '<>c'::'<Solve>b__0_0'

    .method assembly hidebysig instance bool
      '<Solve>b__0_2'(
        float64 z
      ) cil managed
    {
      .maxstack 8

      // [56 82 - 56 101]
      IL_0000: ldarg.1      // z
      IL_0001: call         float64 [mscorlib]System.Math::Abs(float64)
      IL_0006: ldc.r8       0.001
      IL_000f: clt
      IL_0011: ret

    } // end of method '<>c'::'<Solve>b__0_2'
  } // end of class '<>c'

  .method public hidebysig instance float64[]
    Solve(
      float64[][] items,
      float64[] freeMembers
    ) cil managed
  {
    .maxstack 5
    .locals init (
      [0] class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' V_0,
      [1] class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>> 'doubleListList1[11-12], doubleListList2[60-1013]',
      [2] class [mscorlib]System.Collections.Generic.List`1<float64> 'doubleList1[17-18], doubleList2[66-962]',
      [3] class [mscorlib]System.Collections.Generic.List`1<float64> doubleList4,
      [4] float64 num1,
      [5] int32 index,
      [6] class [mscorlib]System.Collections.Generic.List`1<float64> doubleList3,
      [7] float64 num2,
      [8] class [mscorlib]System.Predicate`1<class [mscorlib]System.Collections.Generic.List`1<float64>> V_8,
      [9] int32 V_9,
      [10] int32 index_V_10,
      [11] int32 index1,
      [12] float64 num3,
      [13] int32 index2,
      [14] float64 V_14,
      [15] int32 index_V_15
    )

    IL_0000: newobj       instance void GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::.ctor()
    IL_0005: stloc.0      // V_0

    // [17 7 - 17 68]
    IL_0006: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor()
    IL_000b: stloc.1      // doubleListList1

    // [18 7 - 18 52]
    IL_000c: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0011: stloc.2      // doubleList1

    // [19 7 - 19 212]
    IL_0012: ldarg.1      // items
    IL_0013: ldsfld       class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>> GaussAlgorithm.Solver/'<>c'::'<>9__0_0'
    IL_0018: dup

    IL_0019: brtrue.s     IL_0032
    IL_001b: pop
    IL_001c: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
    IL_0021: ldftn        instance class [mscorlib]System.Collections.Generic.List`1<float64> GaussAlgorithm.Solver/'<>c'::'<Solve>b__0_0'(float64[])
    IL_0027: newobj       instance void class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor(object, native int)
    IL_002c: dup
    IL_002d: stsfld       class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>> GaussAlgorithm.Solver/'<>c'::'<>9__0_0'
    IL_0032: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*class [mscorlib]System.Collections.Generic.List`1<float64>*/> [System.Core]System.Linq.Enumerable::Select<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [mscorlib]System.Func`2<!!0/*float64[]*/, !!1/*class [mscorlib]System.Collections.Generic.List`1<float64>*/>)
    IL_0037: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/>)
    IL_003c: stloc.1      // doubleListList2

    // [20 7 - 20 52]
    IL_003d: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0042: stloc.2      // doubleList2

    // [21 7 - 21 103]
    IL_0043: ldloc.2      // doubleList2
    IL_0044: ldarg.2      // freeMembers
    IL_0045: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::ToList<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_004a: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0/*float64*/>)

    // [22 7 - 22 26]
    IL_004f: ldloc.0      // V_0
    IL_0050: ldc.i4.0
    IL_0051: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn

    // [23 12 - 23 21]
    IL_0056: ldloc.0      // V_0
    IL_0057: ldc.i4.0
    IL_0058: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i

    IL_005d: br           IL_032e
    // start of loop, entry point: IL_032e

      // [25 9 - 25 85]
      IL_0062: ldloc.0      // V_0
      IL_0063: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0068: ldloc.0      // V_0
      IL_0069: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_006e: add
      IL_006f: ldloc.1      // doubleListList2
      IL_0070: ldc.i4.0
      IL_0071: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_0076: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_007b: bge          IL_031c

      IL_0080: ldloc.0      // V_0
      IL_0081: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0086: ldloc.1      // doubleListList2
      IL_0087: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Count()
      IL_008c: bge          IL_031c

      // [27 11 - 27 60]
      IL_0091: ldloc.1      // doubleListList2
      IL_0092: ldloc.0      // V_0
      IL_0093: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0098: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_009d: ldloc.0      // V_0
      IL_009e: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_00a3: ldloc.0      // V_0
      IL_00a4: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_00a9: add
      IL_00aa: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_00af: stloc.s      num1

      // [28 11 - 28 27]
      IL_00b1: ldloc.s      num1
      IL_00b3: ldc.r8       0.0
      IL_00bc: bne.un       IL_0196

      // [30 13 - 30 113]
      IL_00c1: ldloc.1      // doubleListList2
      IL_00c2: ldloc.0      // V_0
      IL_00c3: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_00c8: ldloc.0      // V_0
      IL_00c9: ldfld        class [mscorlib]System.Predicate`1<class [mscorlib]System.Collections.Generic.List`1<float64>> GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::'<>9__1'
      IL_00ce: dup

      IL_00cf: brtrue.s     IL_00e9
      IL_00d1: pop
      IL_00d2: ldloc.0      // V_0
      IL_00d3: ldloc.0      // V_0
      IL_00d4: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::'<Solve>b__1'(class [mscorlib]System.Collections.Generic.List`1<float64>)
      IL_00da: newobj       instance void class [mscorlib]System.Predicate`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor(object, native int)
      IL_00df: dup
      IL_00e0: stloc.s      V_8
      IL_00e2: stfld        class [mscorlib]System.Predicate`1<class [mscorlib]System.Collections.Generic.List`1<float64>> GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::'<>9__1'
      IL_00e7: ldloc.s      V_8
      IL_00e9: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::FindIndex(int32, class [mscorlib]System.Predicate`1<!0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/>)
      IL_00ee: stloc.s      index

      // [31 13 - 31 29]
      IL_00f0: ldloc.s      index
      IL_00f2: ldc.i4.m1
      IL_00f3: bne.un.s     IL_011e

      // [33 15 - 33 28]
      IL_00f5: ldloc.0      // V_0
      IL_00f6: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_00fb: stloc.s      V_9
      IL_00fd: ldloc.0      // V_0
      IL_00fe: ldloc.s      V_9
      IL_0100: ldc.i4.1
      IL_0101: add
      IL_0102: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn

      // [34 15 - 34 18]
      IL_0107: ldloc.0      // V_0
      IL_0108: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_010d: stloc.s      V_9
      IL_010f: ldloc.0      // V_0
      IL_0110: ldloc.s      V_9
      IL_0112: ldc.i4.1
      IL_0113: sub
      IL_0114: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i

      // [35 15 - 35 24]
      IL_0119: br           IL_031c

      // [37 13 - 37 58]
      IL_011e: ldloc.1      // doubleListList2
      IL_011f: ldloc.0      // V_0
      IL_0120: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0125: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_012a: stloc.s      doubleList3

      // [38 13 - 38 56]
      IL_012c: ldloc.1      // doubleListList2
      IL_012d: ldloc.0      // V_0
      IL_012e: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0133: ldloc.1      // doubleListList2
      IL_0134: ldloc.s      index
      IL_0136: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_013b: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::set_Item(int32, !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/)

      // [39 13 - 39 49]
      IL_0140: ldloc.1      // doubleListList2
      IL_0141: ldloc.s      index
      IL_0143: ldloc.s      doubleList3
      IL_0145: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::set_Item(int32, !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/)

      // [40 13 - 40 55]
      IL_014a: ldloc.1      // doubleListList2
      IL_014b: ldloc.0      // V_0
      IL_014c: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0151: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_0156: ldloc.0      // V_0
      IL_0157: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_015c: ldloc.0      // V_0
      IL_015d: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0162: add
      IL_0163: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0168: stloc.s      num1

      // [41 13 - 41 41]
      IL_016a: ldloc.2      // doubleList2
      IL_016b: ldloc.0      // V_0
      IL_016c: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0171: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0176: stloc.s      num2

      // [42 13 - 42 48]
      IL_0178: ldloc.2      // doubleList2
      IL_0179: ldloc.0      // V_0
      IL_017a: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_017f: ldloc.2      // doubleList2
      IL_0180: ldloc.s      index
      IL_0182: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0187: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)

      // [43 13 - 43 38]
      IL_018c: ldloc.2      // doubleList2
      IL_018d: ldloc.s      index
      IL_018f: ldloc.s      num2
      IL_0191: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)

      // [45 16 - 45 29]
      IL_0196: ldc.i4.0
      IL_0197: stloc.s      index_V_10

      IL_0199: br.s         IL_01ca
      // start of loop, entry point: IL_01ca

        // [46 13 - 46 73]
        IL_019b: ldloc.1      // doubleListList2
        IL_019c: ldloc.0      // V_0
        IL_019d: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
        IL_01a2: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_01a7: ldloc.s      index_V_10
        IL_01a9: ldloc.1      // doubleListList2
        IL_01aa: ldloc.0      // V_0
        IL_01ab: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
        IL_01b0: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_01b5: ldloc.s      index_V_10
        IL_01b7: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_01bc: ldloc.s      num1
        IL_01be: div
        IL_01bf: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)

        // [45 65 - 45 72]
        IL_01c4: ldloc.s      index_V_10
        IL_01c6: ldc.i4.1
        IL_01c7: add
        IL_01c8: stloc.s      index_V_10

        // [45 31 - 45 63]
        IL_01ca: ldloc.s      index_V_10
        IL_01cc: ldloc.1      // doubleListList2
        IL_01cd: ldc.i4.0
        IL_01ce: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_01d3: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
        IL_01d8: blt.s        IL_019b
      // end of loop

      // [47 11 - 47 33]
      IL_01da: ldloc.2      // doubleList2
      IL_01db: ldloc.0      // V_0
      IL_01dc: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_01e1: ldloc.2      // doubleList2
      IL_01e2: ldloc.0      // V_0
      IL_01e3: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_01e8: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_01ed: ldloc.s      num1
      IL_01ef: div
      IL_01f0: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)

      // [48 16 - 48 30]
      IL_01f5: ldc.i4.0
      IL_01f6: stloc.s      index1

      IL_01f8: br           IL_030f
      // start of loop, entry point: IL_030f

        // [50 13 - 50 29]
        IL_01fd: ldloc.s      index1
        IL_01ff: ldloc.0      // V_0
        IL_0200: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
        IL_0205: beq          IL_0309

        // [52 15 - 52 69]
        IL_020a: ldloc.1      // doubleListList2
        IL_020b: ldloc.s      index1
        IL_020d: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_0212: ldloc.0      // V_0
        IL_0213: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
        IL_0218: ldloc.0      // V_0
        IL_0219: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
        IL_021e: add
        IL_021f: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_0224: stloc.s      num3

        // [53 20 - 53 34]
        IL_0226: ldc.i4.0
        IL_0227: stloc.s      index2

        IL_0229: br.s         IL_0266
        // start of loop, entry point: IL_0266

          // [54 17 - 54 118]
          IL_022b: ldloc.1      // doubleListList2
          IL_022c: ldloc.s      index1
          IL_022e: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_0233: ldloc.s      index2
          IL_0235: ldloc.1      // doubleListList2
          IL_0236: ldloc.s      index1
          IL_0238: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_023d: ldloc.s      index2
          IL_023f: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
          IL_0244: ldloc.1      // doubleListList2
          IL_0245: ldloc.0      // V_0
          IL_0246: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
          IL_024b: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_0250: ldloc.s      index2
          IL_0252: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
          IL_0257: ldloc.s      num3
          IL_0259: mul
          IL_025a: sub
          IL_025b: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)

          // [53 71 - 53 79]
          IL_0260: ldloc.s      index2
          IL_0262: ldc.i4.1
          IL_0263: add
          IL_0264: stloc.s      index2

          // [53 36 - 53 69]
          IL_0266: ldloc.s      index2
          IL_0268: ldloc.1      // doubleListList2
          IL_0269: ldc.i4.0
          IL_026a: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_026f: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
          IL_0274: blt.s        IL_022b
        // end of loop

        // [55 15 - 55 59]
        IL_0276: ldloc.2      // doubleList2
        IL_0277: ldloc.s      index1
        IL_0279: ldloc.2      // doubleList2
        IL_027a: ldloc.s      index1
        IL_027c: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_0281: ldloc.2      // doubleList2
        IL_0282: ldloc.0      // V_0
        IL_0283: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
        IL_0288: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_028d: ldloc.s      num3
        IL_028f: mul
        IL_0290: sub
        IL_0291: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)

        // [56 15 - 56 145]
        IL_0296: ldloc.1      // doubleListList2
        IL_0297: ldloc.s      index1
        IL_0299: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_029e: ldsfld       class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c'::'<>9__0_2'
        IL_02a3: dup

        IL_02a4: brtrue.s     IL_02bd
        IL_02a6: pop
        IL_02a7: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
        IL_02ac: ldftn        instance bool GaussAlgorithm.Solver/'<>c'::'<Solve>b__0_2'(float64)
        IL_02b2: newobj       instance void class [mscorlib]System.Func`2<float64, bool>::.ctor(object, native int)
        IL_02b7: dup
        IL_02b8: stsfld       class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c'::'<>9__0_2'
        IL_02bd: call         bool [System.Core]System.Linq.Enumerable::All<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, bool>)
        IL_02c2: brfalse.s    IL_0309
        IL_02c4: ldloc.2      // doubleList2
        IL_02c5: ldloc.s      index1
        IL_02c7: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_02cc: call         float64 [mscorlib]System.Math::Abs(float64)
        IL_02d1: ldc.r8       0.001
        IL_02da: ble.un.s     IL_0309

        // [57 17 - 57 122]
        IL_02dc: ldstr        "No solution "
        IL_02e1: ldloc.2      // doubleList2
        IL_02e2: ldloc.s      index1
        IL_02e4: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_02e9: stloc.s      V_14
        IL_02eb: ldloca.s     V_14
        IL_02ed: call         instance string [mscorlib]System.Double::ToString()
        IL_02f2: ldstr        " "
        IL_02f7: ldloca.s     index1
        IL_02f9: call         instance string [mscorlib]System.Int32::ToString()
        IL_02fe: call         string [mscorlib]System.String::Concat(string, string, string, string)
        IL_0303: newobj       instance void GaussAlgorithm.NoSolutionException::.ctor(string)
        IL_0308: throw

        // [48 64 - 48 72]
        IL_0309: ldloc.s      index1
        IL_030b: ldc.i4.1
        IL_030c: add
        IL_030d: stloc.s      index1

        // [48 32 - 48 62]
        IL_030f: ldloc.s      index1
        IL_0311: ldloc.1      // doubleListList2
        IL_0312: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Count()
        IL_0317: blt          IL_01fd
      // end of loop

      // [23 53 - 23 56]
      IL_031c: ldloc.0      // V_0
      IL_031d: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0322: stloc.s      V_9
      IL_0324: ldloc.0      // V_0
      IL_0325: ldloc.s      V_9
      IL_0327: ldc.i4.1
      IL_0328: add
      IL_0329: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i

      // [23 23 - 23 51]
      IL_032e: ldloc.0      // V_0
      IL_032f: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::i
      IL_0334: ldloc.1      // doubleListList2
      IL_0335: ldc.i4.0
      IL_0336: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_033b: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_0340: blt          IL_0062
    // end of loop

    // [62 7 - 62 52]
    IL_0345: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_034a: stloc.3      // doubleList4

    // [63 7 - 63 22]
    IL_034b: ldloc.0      // V_0
    IL_034c: ldc.i4.0
    IL_034d: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn

    // [64 12 - 64 25]
    IL_0352: ldc.i4.0
    IL_0353: stloc.s      index_V_15

    IL_0355: br           IL_03f2
    // start of loop, entry point: IL_03f2

      // [66 9 - 66 54]
      IL_035a: ldloc.s      index_V_15
      IL_035c: ldloc.0      // V_0
      IL_035d: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0362: sub
      IL_0363: ldloc.2      // doubleList2
      IL_0364: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_0369: blt.s        IL_037c

      // [67 11 - 67 31]
      IL_036b: ldloc.3      // doubleList4
      IL_036c: ldc.r8       0.0
      IL_0375: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

      IL_037a: br.s         IL_03ec

      // [68 14 - 68 69]
      IL_037c: ldloc.1      // doubleListList2
      IL_037d: ldloc.s      index_V_15
      IL_037f: ldloc.0      // V_0
      IL_0380: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0385: sub
      IL_0386: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_038b: ldloc.s      index_V_15
      IL_038d: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0392: ldc.r8       0.0
      IL_039b: bne.un.s     IL_03c0

      // [70 11 - 70 31]
      IL_039d: ldloc.3      // doubleList4
      IL_039e: ldc.r8       0.0
      IL_03a7: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

      // [71 11 - 71 24]
      IL_03ac: ldloc.0      // V_0
      IL_03ad: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_03b2: stloc.s      V_9

      IL_03b4: ldloc.0      // V_0
      IL_03b5: ldloc.s      V_9
      IL_03b7: ldc.i4.1
      IL_03b8: add
      IL_03b9: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_03be: br.s         IL_03ec

      // [74 11 - 74 106]
      IL_03c0: ldloc.3      // doubleList4
      IL_03c1: ldloc.2      // doubleList2
      IL_03c2: ldloc.s      index_V_15
      IL_03c4: ldloc.0      // V_0
      IL_03c5: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_03ca: sub
      IL_03cb: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_03d0: ldloc.1      // doubleListList2
      IL_03d1: ldloc.s      index_V_15
      IL_03d3: ldloc.0      // V_0
      IL_03d4: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_03d9: sub
      IL_03da: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_03df: ldloc.s      index_V_15
      IL_03e1: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_03e6: div
      IL_03e7: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)

      // [64 61 - 64 68]
      IL_03ec: ldloc.s      index_V_15
      IL_03ee: ldc.i4.1
      IL_03ef: add
      IL_03f0: stloc.s      index_V_15

      // [64 27 - 64 59]
      IL_03f2: ldloc.s      index_V_15
      IL_03f4: ldloc.1      // doubleListList2
      IL_03f5: ldc.i4.0
      IL_03f6: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_03fb: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_0400: blt          IL_035a
    // end of loop

    // [76 7 - 76 36]
    IL_0405: ldloc.3      // doubleList4
    IL_0406: callvirt     instance !0/*float64*/[] class [mscorlib]System.Collections.Generic.List`1<float64>::ToArray()
    IL_040b: ret

  } // end of method Solver::Solve

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method Solver::.ctor
} // end of class GaussAlgorithm.Solver
