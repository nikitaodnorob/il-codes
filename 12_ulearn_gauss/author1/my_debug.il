// Type: GaussAlgorithm.Solver 
// Assembly: GaussAlgorithm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2B48E812-47B5-4B3B-9F03-EE26E30E44E1
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\12 gauss\01_debug_mycompiler.exe
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
      IL_0006: nop
      IL_0007: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance float64[]
      '<CopyData>b__2_0'(
        float64[] row
      ) cil managed
    {
      .maxstack 8

      // [41 104 - 41 149]
      IL_0000: ldarg.1      // row
      IL_0001: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
      IL_0006: ret

    } // end of method '<>c'::'<CopyData>b__2_0'
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
      IL_0006: nop
      IL_0007: ret

    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance bool
      '<ForwardGauss>b__0'(
        float64 v,
        int32 ind
      ) cil managed
    {
      .maxstack 8

      // [56 99 - 56 143]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_000c: brtrue.s     IL_001f

      IL_000e: ldarg.0      // this
      IL_000f: ldfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows
      IL_0014: ldarg.2      // ind
      IL_0015: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_001a: ldc.i4.0
      IL_001b: ceq
      IL_001d: br.s         IL_0020
      IL_001f: ldc.i4.0
      IL_0020: ret

    } // end of method '<>c__DisplayClass3_0'::'<ForwardGauss>b__0'
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
      IL_0006: nop
      IL_0007: ret

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

      // [75 94 - 75 202]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'
      IL_0006: ldarg.1      // f
      IL_0007: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_000c: brfalse.s    IL_003c

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
      IL_003a: br.s         IL_003d
      IL_003c: ldc.i4.1
      IL_003d: ret

    } // end of method '<>c__DisplayClass4_0'::'<DeleteZeroLines>b__0'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__2'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [75 185 - 75 200]
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

      // [76 96 - 76 215]
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
      IL_0025: brtrue.s     IL_003f
      IL_0027: ldarg.0      // this
      IL_0028: ldfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<>4__this'
      IL_002d: ldarg.0      // this
      IL_002e: ldfld        float64[] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::oldFreeMembers
      IL_0033: ldarg.2      // i
      IL_0034: ldelem.r8
      IL_0035: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_003a: ldc.i4.0
      IL_003b: ceq
      IL_003d: br.s         IL_0040
      IL_003f: ldc.i4.1
      IL_0040: ret

    } // end of method '<>c__DisplayClass4_0'::'<DeleteZeroLines>b__1'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__3'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [76 163 - 76 178]
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
    FindInColumn(
      float64[][] m,
      int32 columnIndex,
      class [mscorlib]System.Func`3<float64, int32, bool> pred
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 inColumn,
      [1] float64[][] V_1,
      [2] int32 V_2,
      [3] float64[] numArray,
      [4] bool V_4,
      [5] int32 V_5
    )

    IL_0000: nop

    // [17 7 - 17 23]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // inColumn
    IL_0003: nop

    // [18 37 - 18 38]
    IL_0004: ldarg.1      // m
    IL_0005: stloc.1      // V_1

    IL_0006: ldc.i4.0
    IL_0007: stloc.2      // V_2
    IL_0008: br.s         IL_002d
    // start of loop, entry point: IL_002d

      // [18 16 - 18 33]
      IL_000a: ldloc.1      // V_1
      IL_000b: ldloc.2      // V_2
      IL_000c: ldelem.ref
      IL_000d: stloc.3      // numArray
      IL_000e: nop

      // [20 9 - 20 51]
      IL_000f: ldarg.3      // pred
      IL_0010: ldloc.3      // numArray
      IL_0011: ldarg.2      // columnIndex
      IL_0012: ldelem.r8
      IL_0013: ldloc.0      // inColumn
      IL_0014: callvirt     instance !2/*bool*/ class [mscorlib]System.Func`3<float64, int32, bool>::Invoke(!0/*float64*/, !1/*int32*/)
      IL_0019: stloc.s      V_4

      IL_001b: ldloc.s      V_4
      IL_001d: brfalse.s    IL_0024

      // [21 11 - 21 27]
      IL_001f: ldloc.0      // inColumn
      IL_0020: stloc.s      V_5

      IL_0022: br.s         IL_0038

      // [22 9 - 22 19]
      IL_0024: ldloc.0      // inColumn
      IL_0025: ldc.i4.1
      IL_0026: add
      IL_0027: stloc.0      // inColumn
      IL_0028: nop

      IL_0029: ldloc.2      // V_2
      IL_002a: ldc.i4.1
      IL_002b: add
      IL_002c: stloc.2      // V_2
      IL_002d: ldloc.2      // V_2
      IL_002e: ldloc.1      // V_1
      IL_002f: ldlen
      IL_0030: conv.i4
      IL_0031: blt.s        IL_000a
    // end of loop

    // [24 7 - 24 17]
    IL_0033: ldc.i4.m1
    IL_0034: stloc.s      V_5

    IL_0036: br.s         IL_0038
    IL_0038: ldloc.s      V_5
    IL_003a: ret

  } // end of method Solver::FindInColumn

  .method private hidebysig instance bool
    CheckNoSolution(
      float64[][] m,
      float64[] free
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 index,
      [1] float64[][] V_1,
      [2] int32 V_2,
      [3] float64[] source,
      [4] bool V_4,
      [5] bool V_5
    )

    IL_0000: nop

    // [29 7 - 29 20]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index
    IL_0003: nop

    // [30 46 - 30 47]
    IL_0004: ldarg.1      // m
    IL_0005: stloc.1      // V_1

    IL_0006: ldc.i4.0
    IL_0007: stloc.2      // V_2
    IL_0008: br.s         IL_0046
    // start of loop, entry point: IL_0046

      // [30 16 - 30 42]
      IL_000a: ldloc.1      // V_1
      IL_000b: ldloc.2      // V_2
      IL_000c: ldelem.ref
      IL_000d: stloc.3      // source
      IL_000e: nop

      // [32 9 - 32 105]
      IL_000f: ldloc.3      // source
      IL_0010: ldarg.0      // this
      IL_0011: ldftn        instance bool GaussAlgorithm.Solver::'<CheckNoSolution>b__1_0'(float64)
      IL_0017: newobj       instance void class [mscorlib]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_001c: call         bool [System.Core]System.Linq.Enumerable::All<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`2<!!0/*float64*/, bool>)
      IL_0021: brfalse.s    IL_0031

      IL_0023: ldarg.0      // this
      IL_0024: ldarg.2      // free
      IL_0025: ldloc.0      // index
      IL_0026: ldelem.r8
      IL_0027: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_002c: ldc.i4.0
      IL_002d: ceq
      IL_002f: br.s         IL_0032
      IL_0031: ldc.i4.0
      IL_0032: stloc.s      V_4
      IL_0034: ldloc.s      V_4
      IL_0036: brfalse.s    IL_003d

      // [33 11 - 33 23]
      IL_0038: ldc.i4.1
      IL_0039: stloc.s      V_5

      IL_003b: br.s         IL_0051

      // [34 9 - 34 16]
      IL_003d: ldloc.0      // index
      IL_003e: ldc.i4.1
      IL_003f: add
      IL_0040: stloc.0      // index
      IL_0041: nop

      IL_0042: ldloc.2      // V_2
      IL_0043: ldc.i4.1
      IL_0044: add
      IL_0045: stloc.2      // V_2
      IL_0046: ldloc.2      // V_2
      IL_0047: ldloc.1      // V_1
      IL_0048: ldlen
      IL_0049: conv.i4
      IL_004a: blt.s        IL_000a
    // end of loop

    // [36 7 - 36 20]
    IL_004c: ldc.i4.0
    IL_004d: stloc.s      V_5

    IL_004f: br.s         IL_0051
    IL_0051: ldloc.s      V_5
    IL_0053: ret

  } // end of method Solver::CheckNoSolution

  .method private hidebysig instance void
    CopyData(
      float64[][] m,
      float64[] free,
      [out] float64[][]& newM,
      [out] float64[]& newFree
    ) cil managed
  {
    .maxstack 8

    IL_0000: nop

    // [41 7 - 41 171]
    IL_0001: ldarg.3      // newM
    IL_0002: ldarg.1      // m
    IL_0003: ldsfld       class [mscorlib]System.Func`2<float64[], float64[]> GaussAlgorithm.Solver/'<>c'::'<>9__2_0'
    IL_0008: dup

    IL_0009: brtrue.s     IL_0022
    IL_000b: pop
    IL_000c: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
    IL_0011: ldftn        instance float64[] GaussAlgorithm.Solver/'<>c'::'<CopyData>b__2_0'(float64[])
    IL_0017: newobj       instance void class [mscorlib]System.Func`2<float64[], float64[]>::.ctor(object, native int)
    IL_001c: dup
    IL_001d: stsfld       class [mscorlib]System.Func`2<float64[], float64[]> GaussAlgorithm.Solver/'<>c'::'<>9__2_0'
    IL_0022: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*float64[]*/> [System.Core]System.Linq.Enumerable::Select<float64[], float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [mscorlib]System.Func`2<!!0/*float64[]*/, !!1/*float64[]*/>)
    IL_0027: call         !!0/*float64[]*/[] [System.Core]System.Linq.Enumerable::ToArray<float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>)
    IL_002c: stind.ref

    // [42 7 - 42 70]
    IL_002d: ldarg.s      newFree
    IL_002f: ldarg.2      // free
    IL_0030: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_0035: dup
    IL_0036: starg.s      free
    IL_0038: stind.ref
    IL_0039: ret

  } // end of method Solver::CopyData

  .method private hidebysig instance int32
    ForwardGauss(
      float64[][] m,
      float64[] free,
      class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedRows,
      class [System.Core]System.Collections.Generic.HashSet`1<int32> lookedCols
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] class GaussAlgorithm.Solver/'<>c__DisplayClass3_0' V_0,
      [1] int32 num,
      [2] int32 columnIndex,
      [3] int32 inColumn,
      [4] bool V_4,
      [5] class [mscorlib]System.Func`3<float64, int32, bool> V_5,
      [6] bool V_6,
      [7] bool V_7,
      [8] bool V_8,
      [9] int32 V_9
    )

    IL_0000: newobj       instance void GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::.ctor()
    IL_0005: stloc.0      // V_0
    IL_0006: ldloc.0      // V_0
    IL_0007: ldarg.0      // this
    IL_0008: stfld        class GaussAlgorithm.Solver GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>4__this'
    IL_000d: ldloc.0      // V_0
    IL_000e: ldarg.3      // lookedRows
    IL_000f: stfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows
    IL_0014: nop

    // [51 7 - 51 18]
    IL_0015: ldc.i4.0
    IL_0016: stloc.1      // num

    // [52 12 - 52 31]
    IL_0017: ldc.i4.0
    IL_0018: stloc.2      // columnIndex

    IL_0019: br           IL_00a7
    // start of loop, entry point: IL_00a7
      IL_001e: nop

      // [54 9 - 54 47]
      IL_001f: ldarg.s      lookedCols
      IL_0021: ldloc.2      // columnIndex
      IL_0022: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_0027: stloc.s      V_4

      IL_0029: ldloc.s      V_4
      IL_002b: brfalse.s    IL_002f
      IL_002d: br.s         IL_00a3

      // [56 11 - 56 145]
      IL_002f: ldarg.0      // this
      IL_0030: ldarg.1      // m
      IL_0031: ldloc.2      // columnIndex
      IL_0032: ldloc.0      // V_0
      IL_0033: ldfld        class [mscorlib]System.Func`3<float64, int32, bool> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>9__0'
      IL_0038: dup

      IL_0039: brtrue.s     IL_0053
      IL_003b: pop
      IL_003c: ldloc.0      // V_0
      IL_003d: ldloc.0      // V_0
      IL_003e: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<ForwardGauss>b__0'(float64, int32)
      IL_0044: newobj       instance void class [mscorlib]System.Func`3<float64, int32, bool>::.ctor(object, native int)
      IL_0049: dup
      IL_004a: stloc.s      V_5
      IL_004c: stfld        class [mscorlib]System.Func`3<float64, int32, bool> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>9__0'
      IL_0051: ldloc.s      V_5
      IL_0053: call         instance int32 GaussAlgorithm.Solver::FindInColumn(float64[][], int32, class [mscorlib]System.Func`3<float64, int32, bool>)
      IL_0058: stloc.3      // inColumn

      // [57 11 - 57 29]
      IL_0059: ldloc.3      // inColumn
      IL_005a: ldc.i4.m1
      IL_005b: cgt
      IL_005d: stloc.s      V_6

      IL_005f: ldloc.s      V_6
      IL_0061: brfalse.s    IL_00a2
      IL_0063: nop

      // [59 13 - 59 48]
      IL_0064: ldarg.0      // this
      IL_0065: ldarg.1      // m
      IL_0066: ldarg.2      // free
      IL_0067: ldloc.3      // inColumn
      IL_0068: call         instance void GaussAlgorithm.Solver::SolveOneRow(float64[][], float64[], int32)
      IL_006d: nop

      // [60 13 - 60 37]
      IL_006e: ldloc.0      // V_0
      IL_006f: ldfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows
      IL_0074: ldloc.3      // inColumn
      IL_0075: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_007a: pop

      // [61 13 - 61 40]
      IL_007b: ldarg.s      lookedCols
      IL_007d: ldloc.2      // columnIndex
      IL_007e: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_0083: pop

      // [62 13 - 62 18]
      IL_0084: ldloc.1      // num
      IL_0085: ldc.i4.1
      IL_0086: add
      IL_0087: stloc.1      // num

      // [63 13 - 63 47]
      IL_0088: ldarg.0      // this
      IL_0089: ldarg.1      // m
      IL_008a: ldarg.2      // free
      IL_008b: call         instance bool GaussAlgorithm.Solver::CheckNoSolution(float64[][], float64[])
      IL_0090: stloc.s      V_7

      IL_0092: ldloc.s      V_7
      IL_0094: brfalse.s    IL_00a1

      // [64 15 - 64 49]
      IL_0096: ldstr        ""
      IL_009b: newobj       instance void GaussAlgorithm.NoSolutionException::.ctor(string)
      IL_00a0: throw
      IL_00a1: nop
      IL_00a2: nop

      // [52 60 - 52 73]
      IL_00a3: ldloc.2      // columnIndex
      IL_00a4: ldc.i4.1
      IL_00a5: add
      IL_00a6: stloc.2      // columnIndex

      // [52 33 - 52 58]
      IL_00a7: ldloc.2      // columnIndex
      IL_00a8: ldarg.1      // m
      IL_00a9: ldc.i4.0
      IL_00aa: ldelem.ref
      IL_00ab: ldlen
      IL_00ac: conv.i4
      IL_00ad: clt
      IL_00af: stloc.s      V_8

      IL_00b1: ldloc.s      V_8
      IL_00b3: brtrue       IL_001e
    // end of loop

    // [68 7 - 68 18]
    IL_00b8: ldloc.1      // num
    IL_00b9: stloc.s      V_9
    IL_00bb: br.s         IL_00bd
    IL_00bd: ldloc.s      V_9
    IL_00bf: ret

  } // end of method Solver::ForwardGauss

  .method private hidebysig instance void
    DeleteZeroLines(
      float64[][]& m,
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
    IL_000d: nop

    // [73 7 - 73 27]
    IL_000e: ldloc.0      // V_0
    IL_000f: ldarg.1      // m
    IL_0010: ldind.ref
    IL_0011: stfld        float64[][] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::mCopy

    // [74 7 - 74 79]
    IL_0016: ldloc.0      // V_0
    IL_0017: ldarg.2      // free
    IL_0018: ldind.ref
    IL_0019: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_001e: stfld        float64[] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::oldFreeMembers

    // [75 7 - 75 222]
    IL_0023: ldarg.2      // free
    IL_0024: ldarg.2      // free
    IL_0025: ldind.ref
    IL_0026: ldloc.0      // V_0
    IL_0027: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__0'(float64, int32)
    IL_002d: newobj       instance void class [mscorlib]System.Func`3<float64, int32, bool>::.ctor(object, native int)
    IL_0032: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::Where<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`3<!!0/*float64*/, int32, bool>)
    IL_0037: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_003c: stind.ref

    // [76 7 - 76 237]
    IL_003d: ldarg.1      // m
    IL_003e: ldarg.1      // m
    IL_003f: ldind.ref
    IL_0040: ldloc.0      // V_0
    IL_0041: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__1'(float64[], int32)
    IL_0047: newobj       instance void class [mscorlib]System.Func`3<float64[], int32, bool>::.ctor(object, native int)
    IL_004c: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/> [System.Core]System.Linq.Enumerable::Where<float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [mscorlib]System.Func`3<!!0/*float64[]*/, int32, bool>)
    IL_0051: call         !!0/*float64[]*/[] [System.Core]System.Linq.Enumerable::ToArray<float64[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>)
    IL_0056: stind.ref
    IL_0057: ret

  } // end of method Solver::DeleteZeroLines

  .method private hidebysig instance float64[]
    BackGauss(
      float64[][] m,
      float64[] free
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] float64[] numArray,
      [1] int32 index1,
      [2] int32 index2,
      [3] bool V_3,
      [4] float64[] V_4
    )

    IL_0000: nop

    // [81 7 - 81 50]
    IL_0001: ldarg.1      // m
    IL_0002: ldc.i4.0
    IL_0003: ldelem.ref
    IL_0004: ldlen
    IL_0005: conv.i4
    IL_0006: newarr       [mscorlib]System.Double
    IL_000b: stloc.0      // numArray

    // [82 12 - 82 26]
    IL_000c: ldc.i4.0
    IL_000d: stloc.1      // index1

    IL_000e: br.s         IL_003d
    // start of loop, entry point: IL_003d
      IL_0010: nop

      // [84 9 - 84 100]
      IL_0011: ldarg.1      // m
      IL_0012: ldloc.1      // index1
      IL_0013: ldelem.ref
      IL_0014: ldarg.0      // this
      IL_0015: ldftn        instance bool GaussAlgorithm.Solver::'<BackGauss>b__5_0'(float64)
      IL_001b: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
      IL_0020: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
      IL_0025: stloc.2      // index2

      // [85 9 - 85 72]
      IL_0026: ldloc.0      // numArray
      IL_0027: ldloc.2      // index2
      IL_0028: ldarg.0      // this
      IL_0029: ldarg.2      // free
      IL_002a: ldloc.1      // index1
      IL_002b: ldelem.r8
      IL_002c: ldarg.1      // m
      IL_002d: ldloc.1      // index1
      IL_002e: ldelem.ref
      IL_002f: ldloc.2      // index2
      IL_0030: ldelem.r8
      IL_0031: div
      IL_0032: call         instance float64 GaussAlgorithm.Solver::Round(float64)
      IL_0037: stelem.r8
      IL_0038: nop

      // [82 47 - 82 55]
      IL_0039: ldloc.1      // index1
      IL_003a: ldc.i4.1
      IL_003b: add
      IL_003c: stloc.1      // index1

      // [82 28 - 82 45]
      IL_003d: ldloc.1      // index1
      IL_003e: ldarg.1      // m
      IL_003f: ldlen
      IL_0040: conv.i4
      IL_0041: clt
      IL_0043: stloc.3      // V_3

      IL_0044: ldloc.3      // V_3
      IL_0045: brtrue.s     IL_0010
    // end of loop

    // [87 7 - 87 23]
    IL_0047: ldloc.0      // numArray
    IL_0048: stloc.s      V_4
    IL_004a: br.s         IL_004c
    IL_004c: ldloc.s      V_4
    IL_004e: ret

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
      [4] float64[] numArray,
      [5] bool V_5,
      [6] float64[] V_6,
      [7] bool V_7
    )

    IL_0000: nop

    // [94 7 - 94 64]
    IL_0001: ldarg.0      // this
    IL_0002: ldarg.1      // matrix
    IL_0003: ldarg.2      // freeMembers
    IL_0004: ldloca.s     newM
    IL_0006: ldloca.s     newFree
    IL_0008: call         instance void GaussAlgorithm.Solver::CopyData(float64[][], float64[], float64[][]&, float64[]&)
    IL_000d: nop

    // [95 7 - 95 51]
    IL_000e: newobj       instance void class [System.Core]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_0013: stloc.2      // lookedRows

    // [96 7 - 96 81]
    IL_0014: ldarg.3      // lookedCols
    IL_0015: brfalse.s    IL_001a

    IL_0017: ldnull
    IL_0018: br.s         IL_001f
    IL_001a: newobj       instance void class [System.Core]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_001f: starg.s      lookedCols

    // [97 7 - 97 73]
    IL_0021: ldarg.0      // this
    IL_0022: ldloc.0      // newM
    IL_0023: ldloc.1      // newFree
    IL_0024: ldloc.2      // lookedRows
    IL_0025: ldarg.3      // lookedCols
    IL_0026: call         instance int32 GaussAlgorithm.Solver::ForwardGauss(float64[][], float64[], class [System.Core]System.Collections.Generic.HashSet`1<int32>, class [System.Core]System.Collections.Generic.HashSet`1<int32>)
    IL_002b: stloc.3      // num

    // [98 7 - 98 53]
    IL_002c: ldloc.0      // newM
    IL_002d: ldc.i4.0
    IL_002e: ldelem.ref
    IL_002f: ldlen
    IL_0030: conv.i4
    IL_0031: newarr       [mscorlib]System.Double
    IL_0036: stloc.s      numArray

    // [99 7 - 99 50]
    IL_0038: ldarg.0      // this
    IL_0039: ldloca.s     newM
    IL_003b: ldloca.s     newFree
    IL_003d: call         instance void GaussAlgorithm.Solver::DeleteZeroLines(float64[][]&, float64[]&)
    IL_0042: nop

    // [100 7 - 100 57]
    IL_0043: ldloc.0      // newM
    IL_0044: ldlen
    IL_0045: conv.i4
    IL_0046: ldloc.3      // num
    IL_0047: bne.un.s     IL_0050

    IL_0049: ldloc.0      // newM
    IL_004a: ldlen
    IL_004b: ldc.i4.0
    IL_004c: cgt.un
    IL_004e: br.s         IL_0051
    IL_0050: ldc.i4.0
    IL_0051: stloc.s      V_5
    IL_0053: ldloc.s      V_5
    IL_0055: brfalse.s    IL_0063

    // [101 9 - 101 46]
    IL_0057: ldarg.0      // this
    IL_0058: ldloc.0      // newM
    IL_0059: ldloc.1      // newFree
    IL_005a: call         instance float64[] GaussAlgorithm.Solver::BackGauss(float64[][], float64[])
    IL_005f: stloc.s      V_6

    IL_0061: br.s         IL_0081

    // [102 7 - 102 82]
    IL_0063: ldloc.0      // newM
    IL_0064: ldlen
    IL_0065: ldc.i4.0
    IL_0066: ceq
    IL_0068: stloc.s      V_7

    IL_006a: ldloc.s      V_7
    IL_006c: brfalse.s    IL_0074
    IL_006e: ldloc.s      numArray
    IL_0070: stloc.s      V_6
    IL_0072: br.s         IL_0081
    IL_0074: ldarg.0      // this
    IL_0075: ldloc.0      // newM
    IL_0076: ldloc.1      // newFree
    IL_0077: ldarg.3      // lookedCols
    IL_0078: call         instance float64[] GaussAlgorithm.Solver::Solve(float64[][], float64[], class [System.Core]System.Collections.Generic.HashSet`1<int32>)
    IL_007d: stloc.s      V_6
    IL_007f: br.s         IL_0081
    IL_0081: ldloc.s      V_6
    IL_0083: ret

  } // end of method Solver::Solve

  .method private hidebysig instance void
    SolveOneRow(
      float64[][] m,
      float64[] free,
      int32 i
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] int32 index1,
      [1] int32 index2,
      [2] float64 num,
      [3] bool V_3,
      [4] int32 index3,
      [5] bool V_5,
      [6] bool V_6
    )

    IL_0000: nop

    // [107 7 - 107 93]
    IL_0001: ldarg.1      // m
    IL_0002: ldarg.3      // i
    IL_0003: ldelem.ref
    IL_0004: ldarg.0      // this
    IL_0005: ldftn        instance bool GaussAlgorithm.Solver::'<SolveOneRow>b__7_0'(float64)
    IL_000b: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
    IL_0010: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
    IL_0015: stloc.0      // index1

    // [108 12 - 108 26]
    IL_0016: ldc.i4.0
    IL_0017: stloc.1      // index2

    IL_0018: br.s         IL_008e
    // start of loop, entry point: IL_008e
      IL_001a: nop

      // [110 9 - 110 60]
      IL_001b: ldarg.0      // this
      IL_001c: ldarg.1      // m
      IL_001d: ldloc.1      // index2
      IL_001e: ldelem.ref
      IL_001f: ldloc.0      // index1
      IL_0020: ldelem.r8
      IL_0021: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
      IL_0026: brtrue.s     IL_002e

      IL_0028: ldloc.1      // index2
      IL_0029: ldarg.3      // i
      IL_002a: ceq
      IL_002c: br.s         IL_002f
      IL_002e: ldc.i4.1
      IL_002f: stloc.3      // V_3
      IL_0030: ldloc.3      // V_3
      IL_0031: brfalse.s    IL_0035
      IL_0033: br.s         IL_008a

      // [112 11 - 112 57]
      IL_0035: ldarg.1      // m
      IL_0036: ldloc.1      // index2
      IL_0037: ldelem.ref
      IL_0038: ldloc.0      // index1
      IL_0039: ldelem.r8
      IL_003a: neg
      IL_003b: ldarg.1      // m
      IL_003c: ldarg.3      // i
      IL_003d: ldelem.ref
      IL_003e: ldloc.0      // index1
      IL_003f: ldelem.r8
      IL_0040: div
      IL_0041: stloc.2      // num

      // [113 16 - 113 30]
      IL_0042: ldc.i4.0
      IL_0043: stloc.s      index3

      IL_0045: br.s         IL_0068
      // start of loop, entry point: IL_0068

        // [114 13 - 114 83]
        IL_0047: ldarg.1      // m
        IL_0048: ldloc.1      // index2
        IL_0049: ldelem.ref
        IL_004a: ldloc.s      index3
        IL_004c: ldarg.0      // this
        IL_004d: ldloc.2      // num
        IL_004e: ldarg.1      // m
        IL_004f: ldarg.3      // i
        IL_0050: ldelem.ref
        IL_0051: ldloc.s      index3
        IL_0053: ldelem.r8
        IL_0054: mul
        IL_0055: ldarg.1      // m
        IL_0056: ldloc.1      // index2
        IL_0057: ldelem.ref
        IL_0058: ldloc.s      index3
        IL_005a: ldelem.r8
        IL_005b: add
        IL_005c: call         instance float64 GaussAlgorithm.Solver::Round(float64)
        IL_0061: stelem.r8

        // [113 54 - 113 62]
        IL_0062: ldloc.s      index3
        IL_0064: ldc.i4.1
        IL_0065: add
        IL_0066: stloc.s      index3

        // [113 32 - 113 52]
        IL_0068: ldloc.s      index3
        IL_006a: ldarg.1      // m
        IL_006b: ldc.i4.0
        IL_006c: ldelem.ref
        IL_006d: ldlen
        IL_006e: conv.i4
        IL_006f: clt
        IL_0071: stloc.s      V_5

        IL_0073: ldloc.s      V_5
        IL_0075: brtrue.s     IL_0047
      // end of loop

      // [115 11 - 115 66]
      IL_0077: ldarg.2      // free
      IL_0078: ldloc.1      // index2
      IL_0079: ldarg.0      // this
      IL_007a: ldloc.2      // num
      IL_007b: ldarg.2      // free
      IL_007c: ldarg.3      // i
      IL_007d: ldelem.r8
      IL_007e: mul
      IL_007f: ldarg.2      // free
      IL_0080: ldloc.1      // index2
      IL_0081: ldelem.r8
      IL_0082: add
      IL_0083: call         instance float64 GaussAlgorithm.Solver::Round(float64)
      IL_0088: stelem.r8
      IL_0089: nop

      // [108 47 - 108 55]
      IL_008a: ldloc.1      // index2
      IL_008b: ldc.i4.1
      IL_008c: add
      IL_008d: stloc.1      // index2

      // [108 28 - 108 45]
      IL_008e: ldloc.1      // index2
      IL_008f: ldarg.1      // m
      IL_0090: ldlen
      IL_0091: conv.i4
      IL_0092: clt
      IL_0094: stloc.s      V_6

      IL_0096: ldloc.s      V_6
      IL_0098: brtrue.s     IL_001a
    // end of loop
    IL_009a: ret

  } // end of method Solver::SolveOneRow

  .method private hidebysig instance float64
    Round(
      float64 v
    ) cil managed
  {
    .maxstack 8

    // [120 39 - 120 56]
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

    // [122 38 - 122 57]
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
    IL_0006: nop
    IL_0007: ret

  } // end of method Solver::.ctor

  .method private hidebysig instance bool
    '<CheckNoSolution>b__1_0'(
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

  } // end of method Solver::'<CheckNoSolution>b__1_0'

  .method private hidebysig instance bool
    '<BackGauss>b__5_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [84 83 - 84 98]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<BackGauss>b__5_0'

  .method private hidebysig instance bool
    '<SolveOneRow>b__7_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [107 76 - 107 91]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool GaussAlgorithm.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<SolveOneRow>b__7_0'
} // end of class GaussAlgorithm.Solver
