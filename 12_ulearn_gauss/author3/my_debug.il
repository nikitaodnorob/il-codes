// Type: GaussAlgorithm.Solver 
// Assembly: GaussAlgorithm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 5211AEC3-50EF-440F-AA6A-2FF388CE3605
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\12 gauss\02_debug_mycompiler.exe
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

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: nop
      IL_0007: ret

    } // end of method '<>c__DisplayClass0_0'::.ctor
  } // end of class '<>c__DisplayClass0_0'

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass0_1'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public int32 i

    .field public class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' 'CS$<>8__locals1'

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: nop
      IL_0007: ret

    } // end of method '<>c__DisplayClass0_1'::.ctor

    .method assembly hidebysig instance bool
      '<Solve>b__1'(
        class [mscorlib]System.Collections.Generic.List`1<float64> x
      ) cil managed
    {
      .maxstack 8

      // [30 86 - 30 111]
      IL_0000: ldarg.1      // x
      IL_0001: ldarg.0      // this
      IL_0002: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_0007: ldarg.0      // this
      IL_0008: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
      IL_000d: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0012: add
      IL_0013: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0018: ldc.r8       0.0
      IL_0021: ceq
      IL_0023: ldc.i4.0
      IL_0024: ceq
      IL_0026: ret

    } // end of method '<>c__DisplayClass0_1'::'<Solve>b__1'
  } // end of class '<>c__DisplayClass0_1'

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
      IL_0006: nop
      IL_0007: ret

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
      [1] class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>> 'doubleListList1[12-13], doubleListList2[61-1166]',
      [2] class [mscorlib]System.Collections.Generic.List`1<float64> 'doubleList1[18-19], doubleList2[67-1114]',
      [3] class [mscorlib]System.Collections.Generic.List`1<float64> doubleList4,
      [4] class GaussAlgorithm.Solver/'<>c__DisplayClass0_1' V_4,
      [5] bool V_5,
      [6] float64 num1,
      [7] bool V_7,
      [8] int32 index,
      [9] class [mscorlib]System.Collections.Generic.List`1<float64> doubleList3,
      [10] float64 num2,
      [11] bool V_11,
      [12] int32 V_12,
      [13] int32 index_V_13,
      [14] bool V_14,
      [15] int32 index1,
      [16] bool V_16,
      [17] float64 num3,
      [18] int32 index2,
      [19] bool V_19,
      [20] bool V_20,
      [21] float64 V_21,
      [22] bool V_22,
      [23] bool V_23,
      [24] int32 index_V_24,
      [25] bool V_25,
      [26] bool V_26,
      [27] bool V_27,
      [28] float64[] V_28
    )

    IL_0000: newobj       instance void GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::.ctor()
    IL_0005: stloc.0      // V_0
    IL_0006: nop

    // [17 7 - 17 68]
    IL_0007: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor()
    IL_000c: stloc.1      // doubleListList1

    // [18 7 - 18 52]
    IL_000d: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0012: stloc.2      // doubleList1

    // [19 7 - 19 212]
    IL_0013: ldarg.1      // items
    IL_0014: ldsfld       class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>> GaussAlgorithm.Solver/'<>c'::'<>9__0_0'
    IL_0019: dup

    IL_001a: brtrue.s     IL_0033
    IL_001c: pop
    IL_001d: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
    IL_0022: ldftn        instance class [mscorlib]System.Collections.Generic.List`1<float64> GaussAlgorithm.Solver/'<>c'::'<Solve>b__0_0'(float64[])
    IL_0028: newobj       instance void class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor(object, native int)
    IL_002d: dup
    IL_002e: stsfld       class [mscorlib]System.Func`2<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>> GaussAlgorithm.Solver/'<>c'::'<>9__0_0'
    IL_0033: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*class [mscorlib]System.Collections.Generic.List`1<float64>*/> [System.Core]System.Linq.Enumerable::Select<float64[], class [mscorlib]System.Collections.Generic.List`1<float64>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [mscorlib]System.Func`2<!!0/*float64[]*/, !!1/*class [mscorlib]System.Collections.Generic.List`1<float64>*/>)
    IL_0038: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/>)
    IL_003d: stloc.1      // doubleListList2

    // [20 7 - 20 52]
    IL_003e: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_0043: stloc.2      // doubleList2

    // [21 7 - 21 103]
    IL_0044: ldloc.2      // doubleList2
    IL_0045: ldarg.2      // freeMembers
    IL_0046: call         class [mscorlib]System.Collections.Generic.List`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::ToList<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_004b: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::AddRange(class [mscorlib]System.Collections.Generic.IEnumerable`1<!0/*float64*/>)
    IL_0050: nop

    // [22 7 - 22 26]
    IL_0051: ldloc.0      // V_0
    IL_0052: ldc.i4.0
    IL_0053: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
    IL_0058: newobj       instance void GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::.ctor()
    IL_005d: stloc.s      V_4
    IL_005f: ldloc.s      V_4
    IL_0061: ldloc.0      // V_0
    IL_0062: stfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'

    // [23 12 - 23 21]
    IL_0067: ldloc.s      V_4
    IL_0069: ldc.i4.0
    IL_006a: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i

    IL_006f: br           IL_03ac
    // start of loop, entry point: IL_03ac

      // [25 9 - 25 85]
      IL_0074: ldloc.s      V_4
      IL_0076: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_007b: ldloc.s      V_4
      IL_007d: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
      IL_0082: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0087: add
      IL_0088: ldloc.1      // doubleListList2
      IL_0089: ldc.i4.0
      IL_008a: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_008f: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_0094: bge.s        IL_00a7

      IL_0096: ldloc.s      V_4
      IL_0098: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_009d: ldloc.1      // doubleListList2
      IL_009e: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Count()
      IL_00a3: clt
      IL_00a5: br.s         IL_00a8
      IL_00a7: ldc.i4.0
      IL_00a8: stloc.s      V_5
      IL_00aa: ldloc.s      V_5
      IL_00ac: brfalse      IL_0398
      IL_00b1: nop

      // [27 11 - 27 60]
      IL_00b2: ldloc.1      // doubleListList2
      IL_00b3: ldloc.s      V_4
      IL_00b5: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_00ba: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_00bf: ldloc.s      V_4
      IL_00c1: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_00c6: ldloc.s      V_4
      IL_00c8: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
      IL_00cd: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_00d2: add
      IL_00d3: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_00d8: stloc.s      num1

      // [28 11 - 28 27]
      IL_00da: ldloc.s      num1
      IL_00dc: ldc.r8       0.0
      IL_00e5: ceq
      IL_00e7: stloc.s      V_7

      IL_00e9: ldloc.s      V_7
      IL_00eb: brfalse      IL_01d9
      IL_00f0: nop

      // [30 13 - 30 113]
      IL_00f1: ldloc.1      // doubleListList2
      IL_00f2: ldloc.s      V_4
      IL_00f4: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_00f9: ldloc.s      V_4
      IL_00fb: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'<Solve>b__1'(class [mscorlib]System.Collections.Generic.List`1<float64>)
      IL_0101: newobj       instance void class [mscorlib]System.Predicate`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::.ctor(object, native int)
      IL_0106: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::FindIndex(int32, class [mscorlib]System.Predicate`1<!0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/>)
      IL_010b: stloc.s      index

      // [31 13 - 31 29]
      IL_010d: ldloc.s      index
      IL_010f: ldc.i4.m1
      IL_0110: ceq
      IL_0112: stloc.s      V_11

      IL_0114: ldloc.s      V_11
      IL_0116: brfalse.s    IL_0150
      IL_0118: nop

      // [33 15 - 33 28]
      IL_0119: ldloc.s      V_4
      IL_011b: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
      IL_0120: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0125: stloc.s      V_12
      IL_0127: ldloc.s      V_4
      IL_0129: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
      IL_012e: ldloc.s      V_12
      IL_0130: ldc.i4.1
      IL_0131: add
      IL_0132: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn

      // [34 15 - 34 18]
      IL_0137: ldloc.s      V_4
      IL_0139: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_013e: stloc.s      V_12
      IL_0140: ldloc.s      V_4
      IL_0142: ldloc.s      V_12
      IL_0144: ldc.i4.1
      IL_0145: sub
      IL_0146: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i

      // [35 15 - 35 24]
      IL_014b: br           IL_0398

      // [37 13 - 37 58]
      IL_0150: ldloc.1      // doubleListList2
      IL_0151: ldloc.s      V_4
      IL_0153: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_0158: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_015d: stloc.s      doubleList3

      // [38 13 - 38 56]
      IL_015f: ldloc.1      // doubleListList2
      IL_0160: ldloc.s      V_4
      IL_0162: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_0167: ldloc.1      // doubleListList2
      IL_0168: ldloc.s      index
      IL_016a: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_016f: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::set_Item(int32, !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/)
      IL_0174: nop

      // [39 13 - 39 49]
      IL_0175: ldloc.1      // doubleListList2
      IL_0176: ldloc.s      index
      IL_0178: ldloc.s      doubleList3
      IL_017a: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::set_Item(int32, !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/)
      IL_017f: nop

      // [40 13 - 40 55]
      IL_0180: ldloc.1      // doubleListList2
      IL_0181: ldloc.s      V_4
      IL_0183: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_0188: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_018d: ldloc.s      V_4
      IL_018f: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_0194: ldloc.s      V_4
      IL_0196: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
      IL_019b: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_01a0: add
      IL_01a1: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_01a6: stloc.s      num1

      // [41 13 - 41 41]
      IL_01a8: ldloc.2      // doubleList2
      IL_01a9: ldloc.s      V_4
      IL_01ab: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_01b0: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_01b5: stloc.s      num2

      // [42 13 - 42 48]
      IL_01b7: ldloc.2      // doubleList2
      IL_01b8: ldloc.s      V_4
      IL_01ba: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_01bf: ldloc.2      // doubleList2
      IL_01c0: ldloc.s      index
      IL_01c2: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_01c7: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)
      IL_01cc: nop

      // [43 13 - 43 38]
      IL_01cd: ldloc.2      // doubleList2
      IL_01ce: ldloc.s      index
      IL_01d0: ldloc.s      num2
      IL_01d2: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)
      IL_01d7: nop
      IL_01d8: nop

      // [45 16 - 45 29]
      IL_01d9: ldc.i4.0
      IL_01da: stloc.s      index_V_13

      IL_01dc: br.s         IL_0210
      // start of loop, entry point: IL_0210

        // [46 13 - 46 73]
        IL_01de: ldloc.1      // doubleListList2
        IL_01df: ldloc.s      V_4
        IL_01e1: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
        IL_01e6: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_01eb: ldloc.s      index_V_13
        IL_01ed: ldloc.1      // doubleListList2
        IL_01ee: ldloc.s      V_4
        IL_01f0: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
        IL_01f5: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_01fa: ldloc.s      index_V_13
        IL_01fc: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_0201: ldloc.s      num1
        IL_0203: div
        IL_0204: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)
        IL_0209: nop

        // [45 65 - 45 72]
        IL_020a: ldloc.s      index_V_13
        IL_020c: ldc.i4.1
        IL_020d: add
        IL_020e: stloc.s      index_V_13

        // [45 31 - 45 63]
        IL_0210: ldloc.s      index_V_13
        IL_0212: ldloc.1      // doubleListList2
        IL_0213: ldc.i4.0
        IL_0214: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_0219: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
        IL_021e: clt
        IL_0220: stloc.s      V_14

        IL_0222: ldloc.s      V_14
        IL_0224: brtrue.s     IL_01de
      // end of loop

      // [47 11 - 47 33]
      IL_0226: ldloc.2      // doubleList2
      IL_0227: ldloc.s      V_4
      IL_0229: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_022e: ldloc.2      // doubleList2
      IL_022f: ldloc.s      V_4
      IL_0231: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_0236: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_023b: ldloc.s      num1
      IL_023d: div
      IL_023e: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)
      IL_0243: nop

      // [48 16 - 48 30]
      IL_0244: ldc.i4.0
      IL_0245: stloc.s      index1

      IL_0247: br           IL_0384
      // start of loop, entry point: IL_0384

        // [50 13 - 50 29]
        IL_024c: ldloc.s      index1
        IL_024e: ldloc.s      V_4
        IL_0250: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
        IL_0255: ceq
        IL_0257: ldc.i4.0
        IL_0258: ceq
        IL_025a: stloc.s      V_16

        IL_025c: ldloc.s      V_16
        IL_025e: brfalse      IL_037e
        IL_0263: nop

        // [52 15 - 52 69]
        IL_0264: ldloc.1      // doubleListList2
        IL_0265: ldloc.s      index1
        IL_0267: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_026c: ldloc.s      V_4
        IL_026e: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
        IL_0273: ldloc.s      V_4
        IL_0275: ldfld        class GaussAlgorithm.Solver/'<>c__DisplayClass0_0' GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::'CS$<>8__locals1'
        IL_027a: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
        IL_027f: add
        IL_0280: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_0285: stloc.s      num3

        // [53 20 - 53 34]
        IL_0287: ldc.i4.0
        IL_0288: stloc.s      index2

        IL_028a: br.s         IL_02c9
        // start of loop, entry point: IL_02c9

          // [54 17 - 54 118]
          IL_028c: ldloc.1      // doubleListList2
          IL_028d: ldloc.s      index1
          IL_028f: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_0294: ldloc.s      index2
          IL_0296: ldloc.1      // doubleListList2
          IL_0297: ldloc.s      index1
          IL_0299: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_029e: ldloc.s      index2
          IL_02a0: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
          IL_02a5: ldloc.1      // doubleListList2
          IL_02a6: ldloc.s      V_4
          IL_02a8: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
          IL_02ad: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_02b2: ldloc.s      index2
          IL_02b4: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
          IL_02b9: ldloc.s      num3
          IL_02bb: mul
          IL_02bc: sub
          IL_02bd: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)
          IL_02c2: nop

          // [53 71 - 53 79]
          IL_02c3: ldloc.s      index2
          IL_02c5: ldc.i4.1
          IL_02c6: add
          IL_02c7: stloc.s      index2

          // [53 36 - 53 69]
          IL_02c9: ldloc.s      index2
          IL_02cb: ldloc.1      // doubleListList2
          IL_02cc: ldc.i4.0
          IL_02cd: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
          IL_02d2: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
          IL_02d7: clt
          IL_02d9: stloc.s      V_19

          IL_02db: ldloc.s      V_19
          IL_02dd: brtrue.s     IL_028c
        // end of loop

        // [55 15 - 55 59]
        IL_02df: ldloc.2      // doubleList2
        IL_02e0: ldloc.s      index1
        IL_02e2: ldloc.2      // doubleList2
        IL_02e3: ldloc.s      index1
        IL_02e5: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_02ea: ldloc.2      // doubleList2
        IL_02eb: ldloc.s      V_4
        IL_02ed: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
        IL_02f2: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_02f7: ldloc.s      num3
        IL_02f9: mul
        IL_02fa: sub
        IL_02fb: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::set_Item(int32, !0/*float64*/)
        IL_0300: nop

        // [56 15 - 56 145]
        IL_0301: ldloc.1      // doubleListList2
        IL_0302: ldloc.s      index1
        IL_0304: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
        IL_0309: ldsfld       class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c'::'<>9__0_2'
        IL_030e: dup

        IL_030f: brtrue.s     IL_0328
        IL_0311: pop
        IL_0312: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
        IL_0317: ldftn        instance bool GaussAlgorithm.Solver/'<>c'::'<Solve>b__0_2'(float64)
        IL_031d: newobj       instance void class [mscorlib]System.Func`2<float64, bool>::.ctor(object, native int)
        IL_0322: dup
        IL_0323: stsfld       class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c'::'<>9__0_2'
        IL_0328: call         bool [System.Core]System.Linq.Enumerable::All<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, bool>)
        IL_032d: brfalse.s    IL_0349
        IL_032f: ldloc.2      // doubleList2
        IL_0330: ldloc.s      index1
        IL_0332: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_0337: call         float64 [mscorlib]System.Math::Abs(float64)
        IL_033c: ldc.r8       0.001
        IL_0345: cgt
        IL_0347: br.s         IL_034a
        IL_0349: ldc.i4.0
        IL_034a: stloc.s      V_20
        IL_034c: ldloc.s      V_20
        IL_034e: brfalse.s    IL_037d

        // [57 17 - 57 122]
        IL_0350: ldstr        "No solution "
        IL_0355: ldloc.2      // doubleList2
        IL_0356: ldloc.s      index1
        IL_0358: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
        IL_035d: stloc.s      V_21
        IL_035f: ldloca.s     V_21
        IL_0361: call         instance string [mscorlib]System.Double::ToString()
        IL_0366: ldstr        " "
        IL_036b: ldloca.s     index1
        IL_036d: call         instance string [mscorlib]System.Int32::ToString()
        IL_0372: call         string [mscorlib]System.String::Concat(string, string, string, string)
        IL_0377: newobj       instance void GaussAlgorithm.NoSolutionException::.ctor(string)
        IL_037c: throw
        IL_037d: nop

        // [48 64 - 48 72]
        IL_037e: ldloc.s      index1
        IL_0380: ldc.i4.1
        IL_0381: add
        IL_0382: stloc.s      index1

        // [48 32 - 48 62]
        IL_0384: ldloc.s      index1
        IL_0386: ldloc.1      // doubleListList2
        IL_0387: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Count()
        IL_038c: clt
        IL_038e: stloc.s      V_22

        IL_0390: ldloc.s      V_22
        IL_0392: brtrue       IL_024c
      // end of loop
      IL_0397: nop

      // [23 53 - 23 56]
      IL_0398: ldloc.s      V_4
      IL_039a: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_039f: stloc.s      V_12
      IL_03a1: ldloc.s      V_4
      IL_03a3: ldloc.s      V_12
      IL_03a5: ldc.i4.1
      IL_03a6: add
      IL_03a7: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i

      // [23 23 - 23 51]
      IL_03ac: ldloc.s      V_4
      IL_03ae: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_1'::i
      IL_03b3: ldloc.1      // doubleListList2
      IL_03b4: ldc.i4.0
      IL_03b5: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_03ba: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_03bf: clt
      IL_03c1: stloc.s      V_23

      IL_03c3: ldloc.s      V_23
      IL_03c5: brtrue       IL_0074
    // end of loop

    // [62 7 - 62 52]
    IL_03ca: newobj       instance void class [mscorlib]System.Collections.Generic.List`1<float64>::.ctor()
    IL_03cf: stloc.3      // doubleList4

    // [63 7 - 63 22]
    IL_03d0: ldloc.0      // V_0
    IL_03d1: ldc.i4.0
    IL_03d2: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn

    // [64 12 - 64 25]
    IL_03d7: ldc.i4.0
    IL_03d8: stloc.s      index_V_24

    IL_03da: br           IL_048b
    // start of loop, entry point: IL_048b

      // [66 9 - 66 54]
      IL_03df: ldloc.s      index_V_24
      IL_03e1: ldloc.0      // V_0
      IL_03e2: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_03e7: sub
      IL_03e8: ldloc.2      // doubleList2
      IL_03e9: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_03ee: clt
      IL_03f0: ldc.i4.0
      IL_03f1: ceq
      IL_03f3: stloc.s      V_25

      IL_03f5: ldloc.s      V_25
      IL_03f7: brfalse.s    IL_040b

      // [67 11 - 67 31]
      IL_03f9: ldloc.3      // doubleList4
      IL_03fa: ldc.r8       0.0
      IL_0403: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)
      IL_0408: nop

      IL_0409: br.s         IL_0485

      // [68 14 - 68 69]
      IL_040b: ldloc.1      // doubleListList2
      IL_040c: ldloc.s      index_V_24
      IL_040e: ldloc.0      // V_0
      IL_040f: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0414: sub
      IL_0415: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_041a: ldloc.s      index_V_24
      IL_041c: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0421: ldc.r8       0.0
      IL_042a: ceq
      IL_042c: stloc.s      V_26

      IL_042e: ldloc.s      V_26
      IL_0430: brfalse.s    IL_0458
      IL_0432: nop

      // [70 11 - 70 31]
      IL_0433: ldloc.3      // doubleList4
      IL_0434: ldc.r8       0.0
      IL_043d: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)
      IL_0442: nop

      // [71 11 - 71 24]
      IL_0443: ldloc.0      // V_0
      IL_0444: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0449: stloc.s      V_12

      IL_044b: ldloc.0      // V_0
      IL_044c: ldloc.s      V_12
      IL_044e: ldc.i4.1
      IL_044f: add
      IL_0450: stfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0455: nop
      IL_0456: br.s         IL_0485

      // [74 11 - 74 106]
      IL_0458: ldloc.3      // doubleList4
      IL_0459: ldloc.2      // doubleList2
      IL_045a: ldloc.s      index_V_24
      IL_045c: ldloc.0      // V_0
      IL_045d: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0462: sub
      IL_0463: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_0468: ldloc.1      // doubleListList2
      IL_0469: ldloc.s      index_V_24
      IL_046b: ldloc.0      // V_0
      IL_046c: ldfld        int32 GaussAlgorithm.Solver/'<>c__DisplayClass0_0'::shiftColumn
      IL_0471: sub
      IL_0472: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_0477: ldloc.s      index_V_24
      IL_0479: callvirt     instance !0/*float64*/ class [mscorlib]System.Collections.Generic.List`1<float64>::get_Item(int32)
      IL_047e: div
      IL_047f: callvirt     instance void class [mscorlib]System.Collections.Generic.List`1<float64>::Add(!0/*float64*/)
      IL_0484: nop

      // [64 61 - 64 68]
      IL_0485: ldloc.s      index_V_24
      IL_0487: ldc.i4.1
      IL_0488: add
      IL_0489: stloc.s      index_V_24

      // [64 27 - 64 59]
      IL_048b: ldloc.s      index_V_24
      IL_048d: ldloc.1      // doubleListList2
      IL_048e: ldc.i4.0
      IL_048f: callvirt     instance !0/*class [mscorlib]System.Collections.Generic.List`1<float64>*/ class [mscorlib]System.Collections.Generic.List`1<class [mscorlib]System.Collections.Generic.List`1<float64>>::get_Item(int32)
      IL_0494: callvirt     instance int32 class [mscorlib]System.Collections.Generic.List`1<float64>::get_Count()
      IL_0499: clt
      IL_049b: stloc.s      V_27

      IL_049d: ldloc.s      V_27
      IL_049f: brtrue       IL_03df
    // end of loop

    // [76 7 - 76 36]
    IL_04a4: ldloc.3      // doubleList4
    IL_04a5: callvirt     instance !0/*float64*/[] class [mscorlib]System.Collections.Generic.List`1<float64>::ToArray()
    IL_04aa: stloc.s      V_28
    IL_04ac: br.s         IL_04ae
    IL_04ae: ldloc.s      V_28
    IL_04b0: ret

  } // end of method Solver::Solve

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret

  } // end of method Solver::.ctor
} // end of class GaussAlgorithm.Solver
