// Type: GaussAlgorithm.Solver 
// Assembly: GaussAlgorithm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 153F10B6-A201-4F1F-BFB3-BACD781D310F
// Location: D:\Windows\Desktop\nikita refactoring\12 gauss\01_odnorob\bin\Release\GaussAlgorithm.exe
// Sequence point data from decompiler

.class public auto ansi beforefieldinit
  GaussAlgorithm.Solver
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class GaussAlgorithm.Solver/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<float64[], float64[]> '<>9__2_0'

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

    .method assembly hidebysig instance float64[]
      '<CopyMatr>b__2_0'(
        float64[] row
      ) cil managed
    {
      .maxstack 8

      // [41 104 - 41 149]
      IL_0000: ldarg.1      // row
      IL_0001: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
      IL_0006: ret

    } // end of method '<>c'::'<CopyMatr>b__2_0'
  } // end of class '<>c'

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass3_0'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public class GaussAlgorithm.Solver '<>4__this'

    .field public class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedRows

    .field public class [mscorlib]System.Func`3<float64, int32, bool> '<>9__0'

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance bool
      '<GaussRun>b__0'(
        float64 v,
        int32 ind
      ) cil managed
    {
      .maxstack 8

      // [56 97 - 56 141]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_000c: brtrue.s     IL_001e

      IL_000e: ldarg.0      // this
      IL_000f: ldfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows
      IL_0014: ldarg.2      // ind
      IL_0015: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_001a: ldc.i4.0
      IL_001b: ceq
      IL_001d: ret
      IL_001e: ldc.i4.0
      IL_001f: ret

    } // end of method '<>c__DisplayClass3_0'::'<GaussRun>b__0'
  } // end of class '<>c__DisplayClass3_0'

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass4_0'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public class GaussAlgorithm.Solver '<>4__this'

    .field public float64[][] mCopy

    .field public float64[] oldFreeMembers

    .field public class [mscorlib]System.Func`2<float64, bool> '<>9__2'

    .field public class [mscorlib]System.Func`2<float64, bool> '<>9__3'

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass4_0'::.ctor

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__0'(
        float64 f,
        int32 i
      ) cil managed
    {
      .maxstack 4
      .locals init (
        [0] class [mscorlib]System.Func`2<float64, bool> V_0
      )

      // [79 94 - 79 202]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'
      IL_0006: ldarg.1      // f
      IL_0007: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_000c: brfalse.s    IL_003b

      IL_000e: ldarg.0      // this
      IL_000f: ldfld        float64[][] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::mCopy
      IL_0014: ldarg.2      // i
      IL_0015: ldelem.ref
      IL_0016: ldarg.0      // this
      IL_0017: ldfld        class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>9__2'
      IL_001c: dup
      IL_001d: brtrue.s     IL_0035
      IL_001f: pop
      IL_0020: ldarg.0      // this
      IL_0021: ldarg.0      // this
      IL_0022: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__2'(float64)
      IL_0028: newobj       instance void class [mscorlib]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_002d: dup
      IL_002e: stloc.0      // V_0
      IL_002f: stfld        class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>9__2'
      IL_0034: ldloc.0      // V_0
      IL_0035: call         bool [System.Core]System.Linq.Enumerable::Any<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, bool>)
      IL_003a: ret
      IL_003b: ldc.i4.1
      IL_003c: ret

    } // end of method '<>c__DisplayClass4_0'::'<DeleteZeroLines>b__0'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__2'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [79 185 - 79 200]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_000c: ldc.i4.0
      IL_000d: ceq
      IL_000f: ret

    } // end of method '<>c__DisplayClass4_0'::'<DeleteZeroLines>b__2'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__1'(
        float64[] row,
        int32 i
      ) cil managed
    {
      .maxstack 4
      .locals init (
        [0] class [mscorlib]System.Func`2<float64, bool> V_0
      )

      // [80 104 - 80 223]
      IL_0000: ldarg.1      // row
      IL_0001: ldarg.0      // this
      IL_0002: ldfld        class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>9__3'
      IL_0007: dup

      IL_0008: brtrue.s     IL_0020
      IL_000a: pop
      IL_000b: ldarg.0      // this
      IL_000c: ldarg.0      // this
      IL_000d: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__3'(float64)
      IL_0013: newobj       instance void class [mscorlib]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_0018: dup
      IL_0019: stloc.0      // V_0
      IL_001a: stfld        class [mscorlib]System.Func`2<float64, bool> GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>9__3'
      IL_001f: ldloc.0      // V_0
      IL_0020: call         bool [System.Core]System.Linq.Enumerable::Any<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, bool>)
      IL_0025: brtrue.s     IL_003e
      IL_0027: ldarg.0      // this
      IL_0028: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'
      IL_002d: ldarg.0      // this
      IL_002e: ldfld        float64[] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::oldFreeMembers
      IL_0033: ldarg.2      // i
      IL_0034: ldelem.r8
      IL_0035: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_003a: ldc.i4.0
      IL_003b: ceq
      IL_003d: ret
      IL_003e: ldc.i4.1
      IL_003f: ret

    } // end of method '<>c__DisplayClass4_0'::'<DeleteZeroLines>b__1'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__3'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [80 171 - 80 186]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_000c: ldc.i4.0
      IL_000d: ceq
      IL_000f: ret

    } // end of method '<>c__DisplayClass4_0'::'<DeleteZeroLines>b__3'
  } // end of class '<>c__DisplayClass4_0'

  .method private hidebysig instance int32
    SearchByCol(
      float64[][] matrix,
      int32 columnIndex,
      class [mscorlib]System.Func`3<float64, int32, bool> pred
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 num,
      [1] float64[][] V_1,
      [2] int32 V_2,
      [3] float64[] numArray
    )

    // [17 7 - 17 18]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // num

    // [18 37 - 18 43]
    IL_0002: ldarg.1      // matrix
    IL_0003: stloc.1      // V_1

    IL_0004: ldc.i4.0
    IL_0005: stloc.2      // V_2
    IL_0006: br.s         IL_0022
    // start of loop, entry point: IL_0022

      // [18 16 - 18 33]
      IL_0008: ldloc.1      // V_1
      IL_0009: ldloc.2      // V_2
      IL_000a: ldelem.ref
      IL_000b: stloc.3      // numArray

      // [20 9 - 20 46]
      IL_000c: ldarg.3      // pred
      IL_000d: ldloc.3      // numArray
      IL_000e: ldarg.2      // columnIndex
      IL_000f: ldelem.r8
      IL_0010: ldloc.0      // num
      IL_0011: callvirt     instance !2/*bool*/ class [mscorlib]System.Func`3<float64, int32, bool>::Invoke(!0/*float64*/, !1/*int32*/)
      IL_0016: brfalse.s    IL_001a

      // [21 11 - 21 22]
      IL_0018: ldloc.0      // num
      IL_0019: ret

      // [22 9 - 22 14]
      IL_001a: ldloc.0      // num
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.0      // num

      IL_001e: ldloc.2      // V_2
      IL_001f: ldc.i4.1
      IL_0020: add
      IL_0021: stloc.2      // V_2
      IL_0022: ldloc.2      // V_2
      IL_0023: ldloc.1      // V_1
      IL_0024: ldlen
      IL_0025: conv.i4
      IL_0026: blt.s        IL_0008
    // end of loop

    // [24 7 - 24 17]
    IL_0028: ldc.i4.m1
    IL_0029: ret

  } // end of method Solver::SearchByCol

  .method private hidebysig instance bool
    CheckIfNoSolution(
      float64[][] matrix,
      float64[] free
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 index,
      [1] float64[][] V_1,
      [2] int32 V_2
    )

    // [29 7 - 29 20]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    // [30 46 - 30 52]
    IL_0002: ldarg.1      // matrix
    IL_0003: stloc.1      // V_1

    IL_0004: ldc.i4.0
    IL_0005: stloc.2      // V_2
    IL_0006: br.s         IL_0033
    // start of loop, entry point: IL_0033
      IL_0008: ldloc.1      // V_1
      IL_0009: ldloc.2      // V_2
      IL_000a: ldelem.ref
      IL_000b: ldarg.0      // this
      IL_000c: ldftn        instance bool GaussAlgorithm.Solver::'<CheckIfNoSolution>b__1_0'(float64)
      IL_0012: newobj       instance void class [mscorlib]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_0017: call         bool [System.Core]System.Linq.Enumerable::All<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, bool>)
      IL_001c: brfalse.s    IL_002b
      IL_001e: ldarg.0      // this
      IL_001f: ldarg.2      // free
      IL_0020: ldloc.0      // index
      IL_0021: ldelem.r8
      IL_0022: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_0027: brtrue.s     IL_002b

      // [33 11 - 33 23]
      IL_0029: ldc.i4.1
      IL_002a: ret

      // [34 9 - 34 16]
      IL_002b: ldloc.0      // index
      IL_002c: ldc.i4.1
      IL_002d: add
      IL_002e: stloc.0      // index

      IL_002f: ldloc.2      // V_2
      IL_0030: ldc.i4.1
      IL_0031: add
      IL_0032: stloc.2      // V_2
      IL_0033: ldloc.2      // V_2
      IL_0034: ldloc.1      // V_1
      IL_0035: ldlen
      IL_0036: conv.i4
      IL_0037: blt.s        IL_0008
    // end of loop

    // [36 7 - 36 20]
    IL_0039: ldc.i4.0
    IL_003a: ret

  } // end of method Solver::CheckIfNoSolution

  .method private hidebysig instance void
    CopyMatr(
      float64[][] m,
      float64[] free,
      [out] float64[][]& newM,
      [out] float64[]& newFree
    ) cil managed
  {
    .maxstack 8

    // [41 7 - 41 171]
    IL_0000: ldarg.3      // newM
    IL_0001: ldarg.1      // m
    IL_0002: ldsfld       class [mscorlib]System.Func`2<float64[], float64[]> GaussAlgorithm.Solver/'<>c'::'<>9__2_0'
    IL_0007: dup

    IL_0008: brtrue.s     IL_0021
    IL_000a: pop
    IL_000b: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
    IL_0010: ldftn        instance float64[] GaussAlgorithm.Solver/'<>c'::'<CopyMatr>b__2_0'(float64[])
    IL_0016: newobj       instance void class [mscorlib]System.Func`2<float64[], float64[]>::.ctor(object, native int)
    IL_001b: dup
    IL_001c: stsfld       class [mscorlib]System.Func`2<float64[], float64[]> GaussAlgorithm.Solver/'<>c'::'<>9__2_0'
    IL_0021: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*float64[]*/> [System.Core]System.Linq.Enumerable::Select<float64[], float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [mscorlib]System.Func`2<!!0/*float64[]*/, !!1/*float64[]*/>)
    IL_0026: call         !!0/*float64[]*/[] [System.Core]System.Linq.Enumerable::ToArray<float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>)
    IL_002b: stind.ref

    // [42 7 - 42 70]
    IL_002c: ldarg.s      newFree
    IL_002e: ldarg.2      // free
    IL_002f: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_0034: dup
    IL_0035: starg.s      free
    IL_0037: stind.ref
    IL_0038: ret

  } // end of method Solver::CopyMatr

  .method private hidebysig instance int32
    GaussRun(
      float64[][] martrix,
      float64[] free,
      class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedRows,
      class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedCols
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] class GaussAlgorithm.Solver/'<>c__DisplayClass3_0' V_0,
      [1] int32 num1,
      [2] int32 columnIndex,
      [3] int32 i,
      [4] class [mscorlib]System.Func`3<float64, int32, bool> V_4,
      [5] int32 'num2[118-132], num3[134-136]'
    )

    IL_0000: newobj       instance void GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::.ctor()
    IL_0005: stloc.0      // V_0
    IL_0006: ldloc.0      // V_0
    IL_0007: ldarg.0      // this
    IL_0008: stfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>4__this'
    IL_000d: ldloc.0      // V_0
    IL_000e: ldarg.3      // lookedRows
    IL_000f: stfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows

    // [51 7 - 51 19]
    IL_0014: ldc.i4.0
    IL_0015: stloc.1      // num1

    // [52 12 - 52 31]
    IL_0016: ldc.i4.0
    IL_0017: stloc.2      // columnIndex

    IL_0018: br.s         IL_0097
    // start of loop, entry point: IL_0097

      // [54 9 - 54 47]
      IL_001a: ldarg.s      lookedCols
      IL_001c: ldloc.2      // columnIndex
      IL_001d: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_0022: brtrue.s     IL_0093

      // [56 11 - 56 143]
      IL_0024: ldarg.0      // this
      IL_0025: ldarg.1      // martrix
      IL_0026: ldloc.2      // columnIndex
      IL_0027: ldloc.0      // V_0
      IL_0028: ldfld        class [mscorlib]System.Func`3<float64, int32, bool> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>9__0'
      IL_002d: dup

      IL_002e: brtrue.s     IL_0048
      IL_0030: pop
      IL_0031: ldloc.0      // V_0
      IL_0032: ldloc.0      // V_0
      IL_0033: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<GaussRun>b__0'(float64, int32)
      IL_0039: newobj       instance void class [mscorlib]System.Func`3<float64, int32, bool>::.ctor(object, native int)
      IL_003e: dup
      IL_003f: stloc.s      V_4
      IL_0041: stfld        class [mscorlib]System.Func`3<float64, int32, bool> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>9__0'
      IL_0046: ldloc.s      V_4
      IL_0048: call         instance int32 GaussAlgorithm.Solver::SearchByCol(float64[][], int32, class [mscorlib]System.Func`3<float64, int32, bool>)
      IL_004d: stloc.3      // i

      // [57 11 - 57 22]
      IL_004e: ldloc.3      // i
      IL_004f: ldc.i4.m1
      IL_0050: ble.s        IL_0093

      // [59 13 - 59 47]
      IL_0052: ldarg.0      // this
      IL_0053: ldarg.1      // martrix
      IL_0054: ldarg.2      // free
      IL_0055: ldloc.3      // i
      IL_0056: call         instance void GaussAlgorithm.Solver::SolveOneRow(float64[][], float64[], int32)

      // [60 13 - 60 19]
      IL_005b: ldloc.1      // num1
      IL_005c: ldc.i4.1
      IL_005d: add
      IL_005e: stloc.1      // num1

      // [61 13 - 61 40]
      IL_005f: ldarg.s      lookedCols
      IL_0061: ldloc.2      // columnIndex
      IL_0062: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_0067: pop

      // [62 13 - 62 30]
      IL_0068: ldloc.0      // V_0
      IL_0069: ldfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows
      IL_006e: ldloc.3      // i
      IL_006f: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_0074: pop

      // [63 13 - 63 25]
      IL_0075: ldc.i4.0
      IL_0076: stloc.s      num2

      // [64 13 - 64 55]
      IL_0078: ldarg.0      // this
      IL_0079: ldarg.1      // martrix
      IL_007a: ldarg.2      // free
      IL_007b: call         instance bool GaussAlgorithm.Solver::CheckIfNoSolution(float64[][], float64[])
      IL_0080: brfalse.s    IL_0093

      // [66 15 - 66 34]
      IL_0082: ldloc.s      num2
      IL_0084: ldc.i4.1
      IL_0085: add
      IL_0086: stloc.s      num3

      // [67 15 - 67 49]
      IL_0088: ldstr        ""
      IL_008d: newobj       instance void GaussAlgorithm.NoSolutionException::.ctor(string)
      IL_0092: throw

      // [52 66 - 52 79]
      IL_0093: ldloc.2      // columnIndex
      IL_0094: ldc.i4.1
      IL_0095: add
      IL_0096: stloc.2      // columnIndex

      // [52 33 - 52 64]
      IL_0097: ldloc.2      // columnIndex
      IL_0098: ldarg.1      // martrix
      IL_0099: ldc.i4.0
      IL_009a: ldelem.ref
      IL_009b: ldlen
      IL_009c: conv.i4
      IL_009d: blt          IL_001a
    // end of loop

    // [72 7 - 72 27]
    IL_00a2: ldloc.1      // num1
    IL_00a3: ldc.i4.1
    IL_00a4: add
    IL_00a5: ldc.i4.1
    IL_00a6: sub
    IL_00a7: ret

  } // end of method Solver::GaussRun

  .method private hidebysig instance void
    DeleteZeroLines(
      float64[][]& matrx,
      float64[]& free
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class GaussAlgorithm.Solver/'<>c__DisplayClass4_0' V_0
    )

    IL_0000: newobj       instance void GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::.ctor()
    IL_0005: stloc.0      // V_0
    IL_0006: ldloc.0      // V_0
    IL_0007: ldarg.0      // this
    IL_0008: stfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'

    // [77 7 - 77 31]
    IL_000d: ldloc.0      // V_0
    IL_000e: ldarg.1      // matrx
    IL_000f: ldind.ref
    IL_0010: stfld        float64[][] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::mCopy

    // [78 7 - 78 79]
    IL_0015: ldloc.0      // V_0
    IL_0016: ldarg.2      // free
    IL_0017: ldind.ref
    IL_0018: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_001d: stfld        float64[] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::oldFreeMembers

    // [79 7 - 79 222]
    IL_0022: ldarg.2      // free
    IL_0023: ldarg.2      // free
    IL_0024: ldind.ref
    IL_0025: ldloc.0      // V_0
    IL_0026: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__0'(float64, int32)
    IL_002c: newobj       instance void class [mscorlib]System.Func`3<float64, int32, bool>::.ctor(object, native int)
    IL_0031: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::Where<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`3<!!0/*float64*/, int32, bool>)
    IL_0036: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_003b: stind.ref

    // [80 7 - 80 245]
    IL_003c: ldarg.1      // matrx
    IL_003d: ldarg.1      // matrx
    IL_003e: ldind.ref
    IL_003f: ldloc.0      // V_0
    IL_0040: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__1'(float64[], int32)
    IL_0046: newobj       instance void class [mscorlib]System.Func`3<float64[], int32, bool>::.ctor(object, native int)
    IL_004b: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/> [System.Core]System.Linq.Enumerable::Where<float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [mscorlib]System.Func`3<!!0/*float64[]*/, int32, bool>)
    IL_0050: call         !!0/*float64[]*/[] [System.Core]System.Linq.Enumerable::ToArray<float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>)
    IL_0055: stind.ref
    IL_0056: ret

  } // end of method Solver::DeleteZeroLines

  .method private hidebysig instance float64[]
    BackGauss(
      float64[][] matr,
      float64[] free
    ) cil managed
  {
    .maxstack 8
    .locals init (
      [0] float64[] numArray,
      [1] int32 index
    )

    // [85 7 - 85 53]
    IL_0000: ldarg.1      // matr
    IL_0001: ldc.i4.0
    IL_0002: ldelem.ref
    IL_0003: ldlen
    IL_0004: conv.i4
    IL_0005: newarr       [mscorlib]System.Double
    IL_000a: stloc.0      // numArray

    // [86 12 - 86 25]
    IL_000b: ldc.i4.0
    IL_000c: stloc.1      // index

    IL_000d: br.s         IL_004b
    // start of loop, entry point: IL_004b

      // [87 9 - 87 221]
      IL_000f: ldloc.0      // numArray
      IL_0010: ldarg.1      // matr
      IL_0011: ldloc.1      // index
      IL_0012: ldelem.ref
      IL_0013: ldarg.0      // this
      IL_0014: ldftn        instance bool GaussAlgorithm.Solver::'<BackGauss>b__5_0'(float64)
      IL_001a: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
      IL_001f: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
      IL_0024: ldarg.0      // this
      IL_0025: ldarg.2      // free
      IL_0026: ldloc.1      // index
      IL_0027: ldelem.r8
      IL_0028: ldarg.1      // matr
      IL_0029: ldloc.1      // index
      IL_002a: ldelem.ref
      IL_002b: ldarg.1      // matr
      IL_002c: ldloc.1      // index
      IL_002d: ldelem.ref
      IL_002e: ldarg.0      // this
      IL_002f: ldftn        instance bool GaussAlgorithm.Solver::'<BackGauss>b__5_1'(float64)
      IL_0035: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
      IL_003a: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
      IL_003f: ldelem.r8
      IL_0040: div
      IL_0041: call         instance float64 GaussAlgorithm.Solver::Round(float64)
      IL_0046: stelem.r8

      // [86 48 - 86 55]
      IL_0047: ldloc.1      // index
      IL_0048: ldc.i4.1
      IL_0049: add
      IL_004a: stloc.1      // index

      // [86 27 - 86 46]
      IL_004b: ldloc.1      // index
      IL_004c: ldarg.1      // matr
      IL_004d: ldlen
      IL_004e: conv.i4
      IL_004f: blt.s        IL_000f
    // end of loop

    // [88 7 - 88 23]
    IL_0051: ldloc.0      // numArray
    IL_0052: ret

  } // end of method Solver::BackGauss

  .method public hidebysig instance float64[]
    Solve(
      float64[][] matrix,
      float64[] freeMembers,
      [opt] class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedCols
    ) cil managed
  {
    .param [3] = nullref
    .maxstack 5
    .locals init (
      [0] float64[][] newM,
      [1] float64[] newFree,
      [2] class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedRows,
      [3] int32 num,
      [4] float64[] numArray
    )

    // [95 7 - 95 64]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // matrix
    IL_0002: ldarg.2      // freeMembers
    IL_0003: ldloca.s     newM
    IL_0005: ldloca.s     newFree
    IL_0007: call         instance void GaussAlgorithm.Solver::CopyMatr(float64[][], float64[], float64[][]&, float64[]&)

    // [96 7 - 96 51]
    IL_000c: newobj       instance void class [System.Core]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_0011: stloc.2      // lookedRows

    // [97 7 - 97 81]
    IL_0012: ldarg.3      // lookedCols
    IL_0013: brfalse.s    IL_0018

    IL_0015: ldnull
    IL_0016: br.s         IL_001d
    IL_0018: newobj       instance void class [System.Core]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_001d: starg.s      lookedCols

    // [98 7 - 98 69]
    IL_001f: ldarg.0      // this
    IL_0020: ldloc.0      // newM
    IL_0021: ldloc.1      // newFree
    IL_0022: ldloc.2      // lookedRows
    IL_0023: ldarg.3      // lookedCols
    IL_0024: call         instance int32 GaussAlgorithm.Solver::GaussRun(float64[][], float64[], class [System.Core]System.Collections.Generic.HashSet`1<int32>, class [System.Core]System.Collections.Generic.HashSet`1<int32>)
    IL_0029: stloc.3      // num

    // [99 7 - 99 53]
    IL_002a: ldloc.0      // newM
    IL_002b: ldc.i4.0
    IL_002c: ldelem.ref
    IL_002d: ldlen
    IL_002e: conv.i4
    IL_002f: newarr       [mscorlib]System.Double
    IL_0034: stloc.s      numArray

    // [100 7 - 100 50]
    IL_0036: ldarg.0      // this
    IL_0037: ldloca.s     newM
    IL_0039: ldloca.s     newFree
    IL_003b: call         instance void GaussAlgorithm.Solver::DeleteZeroLines(float64[][]&, float64[]&)

    // [101 7 - 101 50]
    IL_0040: ldloc.0      // newM
    IL_0041: ldlen
    IL_0042: conv.i4
    IL_0043: ldloc.3      // num
    IL_0044: bne.un.s     IL_0053

    IL_0046: ldloc.0      // newM
    IL_0047: ldlen
    IL_0048: brfalse.s    IL_0053

    // [102 9 - 102 46]
    IL_004a: ldarg.0      // this
    IL_004b: ldloc.0      // newM
    IL_004c: ldloc.1      // newFree
    IL_004d: call         instance float64[] GaussAlgorithm.Solver::BackGauss(float64[][], float64[])
    IL_0052: ret

    // [103 7 - 103 82]
    IL_0053: ldloc.0      // newM
    IL_0054: ldlen
    IL_0055: brtrue.s     IL_005a

    IL_0057: ldloc.s      numArray
    IL_0059: ret
    IL_005a: ldarg.0      // this
    IL_005b: ldloc.0      // newM
    IL_005c: ldloc.1      // newFree
    IL_005d: ldarg.3      // lookedCols
    IL_005e: call         instance float64[] GaussAlgorithm.Solver::Solve(float64[][], float64[], class [System.Core]System.Collections.Generic.HashSet`1<int32>)
    IL_0063: ret

  } // end of method Solver::Solve

  .method private hidebysig instance void
    SolveOneRow(
      float64[][] mm,
      float64[] free,
      int32 i
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 index1,
      [1] int32 index2,
      [2] float64 num,
      [3] int32 index3
    )

    // [108 7 - 108 94]
    IL_0000: ldarg.1      // mm
    IL_0001: ldarg.3      // i
    IL_0002: ldelem.ref
    IL_0003: ldarg.0      // this
    IL_0004: ldftn        instance bool GaussAlgorithm.Solver::'<SolveOneRow>b__7_0'(float64)
    IL_000a: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
    IL_000f: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
    IL_0014: stloc.0      // index1

    // [109 12 - 109 26]
    IL_0015: ldc.i4.0
    IL_0016: stloc.1      // index2

    IL_0017: br.s         IL_0075
    // start of loop, entry point: IL_0075

      // [111 9 - 111 61]
      IL_0019: ldarg.0      // this
      IL_001a: ldarg.1      // mm
      IL_001b: ldloc.1      // index2
      IL_001c: ldelem.ref
      IL_001d: ldloc.0      // index1
      IL_001e: ldelem.r8
      IL_001f: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_0024: brtrue.s     IL_0071

      IL_0026: ldloc.1      // index2
      IL_0027: ldarg.3      // i
      IL_0028: beq.s        IL_0071

      // [113 11 - 113 59]
      IL_002a: ldarg.1      // mm
      IL_002b: ldloc.1      // index2
      IL_002c: ldelem.ref
      IL_002d: ldloc.0      // index1
      IL_002e: ldelem.r8
      IL_002f: neg
      IL_0030: ldarg.1      // mm
      IL_0031: ldarg.3      // i
      IL_0032: ldelem.ref
      IL_0033: ldloc.0      // index1
      IL_0034: ldelem.r8
      IL_0035: div
      IL_0036: stloc.2      // num

      // [114 16 - 114 30]
      IL_0037: ldc.i4.0
      IL_0038: stloc.3      // index3

      IL_0039: br.s         IL_0057
      // start of loop, entry point: IL_0057

        // [115 13 - 115 86]
        IL_003b: ldarg.1      // mm
        IL_003c: ldloc.1      // index2
        IL_003d: ldelem.ref
        IL_003e: ldloc.3      // index3
        IL_003f: ldarg.0      // this
        IL_0040: ldloc.2      // num
        IL_0041: ldarg.1      // mm
        IL_0042: ldarg.3      // i
        IL_0043: ldelem.ref
        IL_0044: ldloc.3      // index3
        IL_0045: ldelem.r8
        IL_0046: mul
        IL_0047: ldarg.1      // mm
        IL_0048: ldloc.1      // index2
        IL_0049: ldelem.ref
        IL_004a: ldloc.3      // index3
        IL_004b: ldelem.r8
        IL_004c: add
        IL_004d: call         instance float64 GaussAlgorithm.Solver::Round(float64)
        IL_0052: stelem.r8

        // [114 55 - 114 63]
        IL_0053: ldloc.3      // index3
        IL_0054: ldc.i4.1
        IL_0055: add
        IL_0056: stloc.3      // index3

        // [114 32 - 114 53]
        IL_0057: ldloc.3      // index3
        IL_0058: ldarg.1      // mm
        IL_0059: ldc.i4.0
        IL_005a: ldelem.ref
        IL_005b: ldlen
        IL_005c: conv.i4
        IL_005d: blt.s        IL_003b
      // end of loop

      // [116 11 - 116 66]
      IL_005f: ldarg.2      // free
      IL_0060: ldloc.1      // index2
      IL_0061: ldarg.0      // this
      IL_0062: ldloc.2      // num
      IL_0063: ldarg.2      // free
      IL_0064: ldarg.3      // i
      IL_0065: ldelem.r8
      IL_0066: mul
      IL_0067: ldarg.2      // free
      IL_0068: ldloc.1      // index2
      IL_0069: ldelem.r8
      IL_006a: add
      IL_006b: call         instance float64 GaussAlgorithm.Solver::Round(float64)
      IL_0070: stelem.r8

      // [109 48 - 109 56]
      IL_0071: ldloc.1      // index2
      IL_0072: ldc.i4.1
      IL_0073: add
      IL_0074: stloc.1      // index2

      // [109 28 - 109 46]
      IL_0075: ldloc.1      // index2
      IL_0076: ldarg.1      // mm
      IL_0077: ldlen
      IL_0078: conv.i4
      IL_0079: blt.s        IL_0019
    // end of loop
    IL_007b: ret

  } // end of method Solver::SolveOneRow

  .method private hidebysig instance float64
    Round(
      float64 v
    ) cil managed
  {
    .maxstack 8

    // [121 39 - 121 56]
    IL_0000: ldarg.1      // v
    IL_0001: ldc.i4.s     10 // 0x0a
    IL_0003: call         float64 [mscorlib]System.Math::Round(float64, int32)
    IL_0008: ret

  } // end of method Solver::Round

  .method private hidebysig instance bool
    IsZero(
      float64 v
    ) cil managed
  {
    .maxstack 8

    // [123 38 - 123 57]
    IL_0000: ldarg.1      // v
    IL_0001: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0006: ldc.r8       1E-06
    IL_000f: clt
    IL_0011: ret

  } // end of method Solver::IsZero

  .method public hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [mscorlib]System.Object::.ctor()
    IL_0006: ret

  } // end of method Solver::.ctor

  .method private hidebysig instance bool
    '<CheckIfNoSolution>b__1_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [32 59 - 32 73]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
    IL_0007: ret

  } // end of method Solver::'<CheckIfNoSolution>b__1_0'

  .method private hidebysig instance bool
    '<BackGauss>b__5_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [87 81 - 87 96]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<BackGauss>b__5_0'

  .method private hidebysig instance bool
    '<BackGauss>b__5_1'(
      float64 v
    ) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [87 202 - 87 217]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<BackGauss>b__5_1'

  .method private hidebysig instance bool
    '<SolveOneRow>b__7_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [108 77 - 108 92]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<SolveOneRow>b__7_0'
} // end of class GaussAlgorithm.Solver
