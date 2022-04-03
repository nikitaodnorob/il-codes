// Type: GaussAlgorithm.Solver 
// Assembly: GaussAlgorithm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 94A64EBA-9A5A-44D2-BE0D-0BB4B517F3F6
// Location: D:\Windows\Desktop\nikita refactoring\12 gauss\01_odnorob\bin\Debug\GaussAlgorithm.exe
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
      IL_0006: nop
      IL_0007: ret

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

      // [79 94 - 79 202]
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
      [3] float64[] numArray,
      [4] bool V_4,
      [5] bool V_5,
      [6] int32 V_6
    )

    IL_0000: nop

    // [17 7 - 17 18]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // num
    IL_0003: nop

    // [18 37 - 18 43]
    IL_0004: ldarg.1      // matrix
    IL_0005: stloc.1      // V_1

    IL_0006: ldc.i4.0
    IL_0007: stloc.2      // V_2
    IL_0008: br.s         IL_0031
    // start of loop, entry point: IL_0031

      // [18 16 - 18 33]
      IL_000a: ldloc.1      // V_1
      IL_000b: ldloc.2      // V_2
      IL_000c: ldelem.ref
      IL_000d: stloc.3      // numArray
      IL_000e: nop

      // [20 9 - 20 46]
      IL_000f: ldarg.3      // pred
      IL_0010: ldloc.3      // numArray
      IL_0011: ldarg.2      // columnIndex
      IL_0012: ldelem.r8
      IL_0013: ldloc.0      // num
      IL_0014: callvirt     instance !2/*bool*/ class [mscorlib]System.Func`3<float64, int32, bool>::Invoke(!0/*float64*/, !1/*int32*/)
      IL_0019: stloc.s      V_4

      IL_001b: ldloc.s      V_4
      IL_001d: stloc.s      V_5
      IL_001f: ldloc.s      V_5
      IL_0021: brfalse.s    IL_0028

      // [21 11 - 21 22]
      IL_0023: ldloc.0      // num
      IL_0024: stloc.s      V_6

      IL_0026: br.s         IL_003c

      // [22 9 - 22 14]
      IL_0028: ldloc.0      // num
      IL_0029: ldc.i4.1
      IL_002a: add
      IL_002b: stloc.0      // num
      IL_002c: nop

      IL_002d: ldloc.2      // V_2
      IL_002e: ldc.i4.1
      IL_002f: add
      IL_0030: stloc.2      // V_2
      IL_0031: ldloc.2      // V_2
      IL_0032: ldloc.1      // V_1
      IL_0033: ldlen
      IL_0034: conv.i4
      IL_0035: blt.s        IL_000a
    // end of loop

    // [24 7 - 24 17]
    IL_0037: ldc.i4.m1
    IL_0038: stloc.s      V_6

    IL_003a: br.s         IL_003c
    IL_003c: ldloc.s      V_6
    IL_003e: ret

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

    // [30 46 - 30 52]
    IL_0004: ldarg.1      // matrix
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
      IL_0011: ldftn        instance bool GaussAlgorithm.Solver::'<CheckIfNoSolution>b__1_0'(float64)
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

    IL_0000: nop

    // [41 7 - 41 171]
    IL_0001: ldarg.3      // newM
    IL_0002: ldarg.1      // m
    IL_0003: ldsfld       class [mscorlib]System.Func`2<float64[], float64[]> GaussAlgorithm.Solver/'<>c'::'<>9__2_0'
    IL_0008: dup

    IL_0009: brtrue.s     IL_0022
    IL_000b: pop
    IL_000c: ldsfld       class GaussAlgorithm.Solver/'<>c' GaussAlgorithm.Solver/'<>c'::'<>9'
    IL_0011: ldftn        instance float64[] GaussAlgorithm.Solver/'<>c'::'<CopyMatr>b__2_0'(float64[])
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
      [2] int32 V_2,
      [3] int32 columnIndex,
      [4] int32 i,
      [5] bool V_5,
      [6] class [mscorlib]System.Func`3<float64, int32, bool> V_6,
      [7] bool V_7,
      [8] int32 'num2[144-163], num3[165-167]',
      [9] bool V_9,
      [10] bool V_10,
      [11] int32 V_11
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

    // [51 7 - 51 19]
    IL_0015: ldc.i4.0
    IL_0016: stloc.1      // num1

    // [52 12 - 52 31]
    IL_0017: ldc.i4.0
    IL_0018: stloc.3      // columnIndex

    IL_0019: br           IL_00b8
    // start of loop, entry point: IL_00b8
      IL_001e: nop

      // [54 9 - 54 47]
      IL_001f: ldarg.s      lookedCols
      IL_0021: ldloc.3      // columnIndex
      IL_0022: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_0027: stloc.s      V_5

      IL_0029: ldloc.s      V_5
      IL_002b: brfalse.s    IL_0032
      IL_002d: br           IL_00b4

      // [56 11 - 56 143]
      IL_0032: ldarg.0      // this
      IL_0033: ldarg.1      // martrix
      IL_0034: ldloc.3      // columnIndex
      IL_0035: ldloc.0      // V_0
      IL_0036: ldfld        class [mscorlib]System.Func`3<float64, int32, bool> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>9__0'
      IL_003b: dup

      IL_003c: brtrue.s     IL_0056
      IL_003e: pop
      IL_003f: ldloc.0      // V_0
      IL_0040: ldloc.0      // V_0
      IL_0041: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<GaussRun>b__0'(float64, int32)
      IL_0047: newobj       instance void class [mscorlib]System.Func`3<float64, int32, bool>::.ctor(object, native int)
      IL_004c: dup
      IL_004d: stloc.s      V_6
      IL_004f: stfld        class [mscorlib]System.Func`3<float64, int32, bool> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::'<>9__0'
      IL_0054: ldloc.s      V_6
      IL_0056: call         instance int32 GaussAlgorithm.Solver::SearchByCol(float64[][], int32, class [mscorlib]System.Func`3<float64, int32, bool>)
      IL_005b: stloc.s      i

      // [57 11 - 57 22]
      IL_005d: ldloc.s      i
      IL_005f: ldc.i4.m1
      IL_0060: cgt
      IL_0062: stloc.s      V_7

      IL_0064: ldloc.s      V_7
      IL_0066: brfalse.s    IL_00b3
      IL_0068: nop

      // [59 13 - 59 47]
      IL_0069: ldarg.0      // this
      IL_006a: ldarg.1      // martrix
      IL_006b: ldarg.2      // free
      IL_006c: ldloc.s      i
      IL_006e: call         instance void GaussAlgorithm.Solver::SolveOneRow(float64[][], float64[], int32)
      IL_0073: nop

      // [60 13 - 60 19]
      IL_0074: ldloc.1      // num1
      IL_0075: ldc.i4.1
      IL_0076: add
      IL_0077: stloc.1      // num1

      // [61 13 - 61 40]
      IL_0078: ldarg.s      lookedCols
      IL_007a: ldloc.3      // columnIndex
      IL_007b: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_0080: pop

      // [62 13 - 62 30]
      IL_0081: ldloc.0      // V_0
      IL_0082: ldfld        class [System.Core]System.Collections.Generic.HashSet`1<int32> GaussAlgorithm.Solver/'<>c__DisplayClass3_0'::lookedRows
      IL_0087: ldloc.s      i
      IL_0089: callvirt     instance bool class [System.Core]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_008e: pop

      // [63 13 - 63 25]
      IL_008f: ldc.i4.0
      IL_0090: stloc.s      num2

      // [64 13 - 64 55]
      IL_0092: ldarg.0      // this
      IL_0093: ldarg.1      // martrix
      IL_0094: ldarg.2      // free
      IL_0095: call         instance bool GaussAlgorithm.Solver::CheckIfNoSolution(float64[][], float64[])
      IL_009a: stloc.s      V_9

      IL_009c: ldloc.s      V_9
      IL_009e: brfalse.s    IL_00b2
      IL_00a0: nop

      // [66 15 - 66 34]
      IL_00a1: ldloc.s      num2
      IL_00a3: ldc.i4.1
      IL_00a4: add
      IL_00a5: stloc.s      num3

      // [67 15 - 67 49]
      IL_00a7: ldstr        ""
      IL_00ac: newobj       instance void GaussAlgorithm.NoSolutionException::.ctor(string)
      IL_00b1: throw
      IL_00b2: nop
      IL_00b3: nop

      // [52 66 - 52 79]
      IL_00b4: ldloc.3      // columnIndex
      IL_00b5: ldc.i4.1
      IL_00b6: add
      IL_00b7: stloc.3      // columnIndex

      // [52 33 - 52 64]
      IL_00b8: ldloc.3      // columnIndex
      IL_00b9: ldarg.1      // martrix
      IL_00ba: ldc.i4.0
      IL_00bb: ldelem.ref
      IL_00bc: ldlen
      IL_00bd: conv.i4
      IL_00be: clt
      IL_00c0: stloc.s      V_10

      IL_00c2: ldloc.s      V_10
      IL_00c4: brtrue       IL_001e
    // end of loop

    // [72 7 - 72 27]
    IL_00c9: ldloc.1      // num1
    IL_00ca: ldc.i4.1
    IL_00cb: add
    IL_00cc: stloc.2      // V_2
    IL_00cd: ldloc.2      // V_2
    IL_00ce: ldc.i4.1
    IL_00cf: sub
    IL_00d0: stloc.s      V_11
    IL_00d2: br.s         IL_00d4
    IL_00d4: ldloc.s      V_11
    IL_00d6: ret

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
    IL_000d: nop

    // [77 7 - 77 31]
    IL_000e: ldloc.0      // V_0
    IL_000f: ldarg.1      // matrx
    IL_0010: ldind.ref
    IL_0011: stfld        float64[][] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::mCopy

    // [78 7 - 78 79]
    IL_0016: ldloc.0      // V_0
    IL_0017: ldarg.2      // free
    IL_0018: ldind.ref
    IL_0019: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_001e: stfld        float64[] GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::oldFreeMembers

    // [79 7 - 79 222]
    IL_0023: ldarg.2      // free
    IL_0024: ldarg.2      // free
    IL_0025: ldind.ref
    IL_0026: ldloc.0      // V_0
    IL_0027: ldftn        instance bool GaussAlgorithm.Solver/'<>c__DisplayClass4_0'::'<DeleteZeroLines>b__0'(float64, int32)
    IL_002d: newobj       instance void class [mscorlib]System.Func`3<float64, int32, bool>::.ctor(object, native int)
    IL_0032: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/> [System.Core]System.Linq.Enumerable::Where<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [mscorlib]System.Func`3<!!0/*float64*/, int32, bool>)
    IL_0037: call         !!0/*float64*/[] [System.Core]System.Linq.Enumerable::ToArray<float64>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_003c: stind.ref

    // [80 7 - 80 245]
    IL_003d: ldarg.1      // matrx
    IL_003e: ldarg.1      // matrx
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
      float64[][] matr,
      float64[] free
    ) cil managed
  {
    .maxstack 8
    .locals init (
      [0] float64[] numArray,
      [1] int32 index,
      [2] bool V_2,
      [3] float64[] V_3
    )

    IL_0000: nop

    // [85 7 - 85 53]
    IL_0001: ldarg.1      // matr
    IL_0002: ldc.i4.0
    IL_0003: ldelem.ref
    IL_0004: ldlen
    IL_0005: conv.i4
    IL_0006: newarr       [mscorlib]System.Double
    IL_000b: stloc.0      // numArray

    // [86 12 - 86 25]
    IL_000c: ldc.i4.0
    IL_000d: stloc.1      // index

    IL_000e: br.s         IL_004e
    // start of loop, entry point: IL_004e
      IL_0010: nop

      // [87 9 - 87 221]
      IL_0011: ldloc.0      // numArray
      IL_0012: ldarg.1      // matr
      IL_0013: ldloc.1      // index
      IL_0014: ldelem.ref
      IL_0015: ldarg.0      // this
      IL_0016: ldftn        instance bool GaussAlgorithm.Solver::'<BackGauss>b__5_0'(float64)
      IL_001c: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
      IL_0021: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
      IL_0026: ldarg.0      // this
      IL_0027: ldarg.2      // free
      IL_0028: ldloc.1      // index
      IL_0029: ldelem.r8
      IL_002a: ldarg.1      // matr
      IL_002b: ldloc.1      // index
      IL_002c: ldelem.ref
      IL_002d: ldarg.1      // matr
      IL_002e: ldloc.1      // index
      IL_002f: ldelem.ref
      IL_0030: ldarg.0      // this
      IL_0031: ldftn        instance bool GaussAlgorithm.Solver::'<BackGauss>b__5_1'(float64)
      IL_0037: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
      IL_003c: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
      IL_0041: ldelem.r8
      IL_0042: div
      IL_0043: call         instance float64 GaussAlgorithm.Solver::Round(float64)
      IL_0048: stelem.r8
      IL_0049: nop

      // [86 48 - 86 55]
      IL_004a: ldloc.1      // index
      IL_004b: ldc.i4.1
      IL_004c: add
      IL_004d: stloc.1      // index

      // [86 27 - 86 46]
      IL_004e: ldloc.1      // index
      IL_004f: ldarg.1      // matr
      IL_0050: ldlen
      IL_0051: conv.i4
      IL_0052: clt
      IL_0054: stloc.2      // V_2

      IL_0055: ldloc.2      // V_2
      IL_0056: brtrue.s     IL_0010
    // end of loop

    // [88 7 - 88 23]
    IL_0058: ldloc.0      // numArray
    IL_0059: stloc.3      // V_3
    IL_005a: br.s         IL_005c
    IL_005c: ldloc.3      // V_3
    IL_005d: ret

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

    // [95 7 - 95 64]
    IL_0001: ldarg.0      // this
    IL_0002: ldarg.1      // matrix
    IL_0003: ldarg.2      // freeMembers
    IL_0004: ldloca.s     newM
    IL_0006: ldloca.s     newFree
    IL_0008: call         instance void GaussAlgorithm.Solver::CopyMatr(float64[][], float64[], float64[][]&, float64[]&)
    IL_000d: nop

    // [96 7 - 96 51]
    IL_000e: newobj       instance void class [System.Core]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_0013: stloc.2      // lookedRows

    // [97 7 - 97 81]
    IL_0014: ldarg.3      // lookedCols
    IL_0015: brfalse.s    IL_001a

    IL_0017: ldnull
    IL_0018: br.s         IL_001f
    IL_001a: newobj       instance void class [System.Core]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_001f: starg.s      lookedCols

    // [98 7 - 98 69]
    IL_0021: ldarg.0      // this
    IL_0022: ldloc.0      // newM
    IL_0023: ldloc.1      // newFree
    IL_0024: ldloc.2      // lookedRows
    IL_0025: ldarg.3      // lookedCols
    IL_0026: call         instance int32 GaussAlgorithm.Solver::GaussRun(float64[][], float64[], class [System.Core]System.Collections.Generic.HashSet`1<int32>, class [System.Core]System.Collections.Generic.HashSet`1<int32>)
    IL_002b: stloc.3      // num

    // [99 7 - 99 53]
    IL_002c: ldloc.0      // newM
    IL_002d: ldc.i4.0
    IL_002e: ldelem.ref
    IL_002f: ldlen
    IL_0030: conv.i4
    IL_0031: newarr       [mscorlib]System.Double
    IL_0036: stloc.s      numArray

    // [100 7 - 100 50]
    IL_0038: ldarg.0      // this
    IL_0039: ldloca.s     newM
    IL_003b: ldloca.s     newFree
    IL_003d: call         instance void GaussAlgorithm.Solver::DeleteZeroLines(float64[][]&, float64[]&)
    IL_0042: nop

    // [101 7 - 101 57]
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

    // [102 9 - 102 46]
    IL_0057: ldarg.0      // this
    IL_0058: ldloc.0      // newM
    IL_0059: ldloc.1      // newFree
    IL_005a: call         instance float64[] GaussAlgorithm.Solver::BackGauss(float64[][], float64[])
    IL_005f: stloc.s      V_6

    IL_0061: br.s         IL_0081

    // [103 7 - 103 82]
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
      [3] bool V_3,
      [4] int32 index3,
      [5] bool V_5,
      [6] bool V_6
    )

    IL_0000: nop

    // [108 7 - 108 94]
    IL_0001: ldarg.1      // mm
    IL_0002: ldarg.3      // i
    IL_0003: ldelem.ref
    IL_0004: ldarg.0      // this
    IL_0005: ldftn        instance bool GaussAlgorithm.Solver::'<SolveOneRow>b__7_0'(float64)
    IL_000b: newobj       instance void class [mscorlib]System.Predicate`1<float64>::.ctor(object, native int)
    IL_0010: call         int32 [mscorlib]System.Array::FindIndex<float64>(!!0/*float64*/[], class [mscorlib]System.Predicate`1<!!0/*float64*/>)
    IL_0015: stloc.0      // index1

    // [109 12 - 109 26]
    IL_0016: ldc.i4.0
    IL_0017: stloc.1      // index2

    IL_0018: br.s         IL_008e
    // start of loop, entry point: IL_008e
      IL_001a: nop

      // [111 9 - 111 61]
      IL_001b: ldarg.0      // this
      IL_001c: ldarg.1      // mm
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

      // [113 11 - 113 59]
      IL_0035: ldarg.1      // mm
      IL_0036: ldloc.1      // index2
      IL_0037: ldelem.ref
      IL_0038: ldloc.0      // index1
      IL_0039: ldelem.r8
      IL_003a: neg
      IL_003b: ldarg.1      // mm
      IL_003c: ldarg.3      // i
      IL_003d: ldelem.ref
      IL_003e: ldloc.0      // index1
      IL_003f: ldelem.r8
      IL_0040: div
      IL_0041: stloc.2      // num

      // [114 16 - 114 30]
      IL_0042: ldc.i4.0
      IL_0043: stloc.s      index3

      IL_0045: br.s         IL_0068
      // start of loop, entry point: IL_0068

        // [115 13 - 115 86]
        IL_0047: ldarg.1      // mm
        IL_0048: ldloc.1      // index2
        IL_0049: ldelem.ref
        IL_004a: ldloc.s      index3
        IL_004c: ldarg.0      // this
        IL_004d: ldloc.2      // num
        IL_004e: ldarg.1      // mm
        IL_004f: ldarg.3      // i
        IL_0050: ldelem.ref
        IL_0051: ldloc.s      index3
        IL_0053: ldelem.r8
        IL_0054: mul
        IL_0055: ldarg.1      // mm
        IL_0056: ldloc.1      // index2
        IL_0057: ldelem.ref
        IL_0058: ldloc.s      index3
        IL_005a: ldelem.r8
        IL_005b: add
        IL_005c: call         instance float64 GaussAlgorithm.Solver::Round(float64)
        IL_0061: stelem.r8

        // [114 55 - 114 63]
        IL_0062: ldloc.s      index3
        IL_0064: ldc.i4.1
        IL_0065: add
        IL_0066: stloc.s      index3

        // [114 32 - 114 53]
        IL_0068: ldloc.s      index3
        IL_006a: ldarg.1      // mm
        IL_006b: ldc.i4.0
        IL_006c: ldelem.ref
        IL_006d: ldlen
        IL_006e: conv.i4
        IL_006f: clt
        IL_0071: stloc.s      V_5

        IL_0073: ldloc.s      V_5
        IL_0075: brtrue.s     IL_0047
      // end of loop

      // [116 11 - 116 66]
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

      // [109 48 - 109 56]
      IL_008a: ldloc.1      // index2
      IL_008b: ldc.i4.1
      IL_008c: add
      IL_008d: stloc.1      // index2

      // [109 28 - 109 46]
      IL_008e: ldloc.1      // index2
      IL_008f: ldarg.1      // mm
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
    .maxstack 2
    .locals init (
      [0] float64 V_0
    )

    IL_0000: nop

    // [121 39 - 121 56]
    IL_0001: ldarg.1      // v
    IL_0002: ldc.i4.s     10 // 0x0a
    IL_0004: call         float64 [mscorlib]System.Math::Round(float64, int32)
    IL_0009: stloc.0      // V_0
    IL_000a: br.s         IL_000c
    IL_000c: ldloc.0      // V_0
    IL_000d: ret

  } // end of method Solver::Round

  .method private hidebysig instance bool
    IsZero(
      float64 v
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] bool V_0
    )

    IL_0000: nop

    // [123 38 - 123 57]
    IL_0001: ldarg.1      // v
    IL_0002: call         float64 [mscorlib]System.Math::Abs(float64)
    IL_0007: ldc.r8       1E-06
    IL_0010: clt
    IL_0012: stloc.0      // V_0
    IL_0013: br.s         IL_0015
    IL_0015: ldloc.0      // V_0
    IL_0016: ret

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
