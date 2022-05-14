// Type: Rectangles.Solver 
// Assembly: GaussianAlgorithm-Author6-Net6_Singleton, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B08EBBBE-6E86-4CD5-9CDD-08F0EC629B32
// Location: /Users/nodnorob/Desktop/University/Diploma/master-diploma/12_ulearn_gauss/author6-net6_singleton/bin/Release/net6.0/GaussianAlgorithm-Author6-Net6_Singleton.dll
// Sequence point data from /Users/nodnorob/Desktop/University/Diploma/master-diploma/12_ulearn_gauss/author6-net6_singleton/bin/Release/net6.0/GaussianAlgorithm-Author6-Net6_Singleton.pdb

.class public auto ansi beforefieldinit
  Rectangles.Solver
    extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
    = (01 00 01 00 00 ) // .....
    // unsigned int8(1) // 0x01
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
    = (01 00 00 00 00 ) // .....
    // unsigned int8(0) // 0x00

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class Rectangles.Solver/'<>c' '<>9'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public static class [System.Runtime]System.Func`2<float64[], float64[]> '<>9__5_0'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void Rectangles.Solver/'<>c'::.ctor()
      IL_0005: stsfld       class Rectangles.Solver/'<>c' Rectangles.Solver/'<>c'::'<>9'
      IL_000a: ret

    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance float64[]
      '<CopyData>b__5_0'(
        float64[] row
      ) cil managed
    {
      .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00
      .maxstack 8

      // [41 36 - 41 49]
      IL_0000: ldarg.1      // row
      IL_0001: call         !!0/*float64*/[] [System.Linq]System.Linq.Enumerable::ToArray<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
      IL_0006: ret

    } // end of method '<>c'::'<CopyData>b__5_0'
  } // end of class '<>c'

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass6_0'
      extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public class Rectangles.Solver '<>4__this'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public class [System.Collections]System.Collections.Generic.HashSet`1<int32> lookedRows
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public class [System.Runtime]System.Func`3<float64, int32, bool> '<>9__0'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass6_0'::.ctor

    .method assembly hidebysig instance bool
      '<ForwardGauss>b__0'(
        float64 v,
        int32 ind
      ) cil managed
    {
      .maxstack 8

      // [53 56 - 53 95]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass6_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_000c: brtrue.s     IL_001e
      IL_000e: ldarg.0      // this
      IL_000f: ldfld        class [System.Collections]System.Collections.Generic.HashSet`1<int32> Rectangles.Solver/'<>c__DisplayClass6_0'::lookedRows
      IL_0014: ldarg.2      // ind
      IL_0015: callvirt     instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_001a: ldc.i4.0
      IL_001b: ceq
      IL_001d: ret
      IL_001e: ldc.i4.0
      IL_001f: ret

    } // end of method '<>c__DisplayClass6_0'::'<ForwardGauss>b__0'
  } // end of class '<>c__DisplayClass6_0'

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass7_0'
      extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public class Rectangles.Solver '<>4__this'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public float64[][] mCopy
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8[])
        = (01 00 02 00 00 00 00 01 00 00 ) // ..........
        // unsigned int8[2]

    .field public float64[] oldFreeMembers
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public class [System.Runtime]System.Func`2<float64, bool> '<>9__2'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .field public class [System.Runtime]System.Func`2<float64, bool> '<>9__3'
      .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [System.Runtime]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass7_0'::.ctor

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__0'(
        float64 f,
        int32 i
      ) cil managed
    {
      .maxstack 4
      .locals init (
        [0] class [System.Runtime]System.Func`2<float64, bool> V_0
      )

      // [75 27 - 75 70]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass7_0'::'<>4__this'
      IL_0006: ldarg.1      // f
      IL_0007: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_000c: brfalse.s    IL_003b
      IL_000e: ldarg.0      // this
      IL_000f: ldfld        float64[][] Rectangles.Solver/'<>c__DisplayClass7_0'::mCopy
      IL_0014: ldarg.2      // i
      IL_0015: ldelem.ref
      IL_0016: ldarg.0      // this
      IL_0017: ldfld        class [System.Runtime]System.Func`2<float64, bool> Rectangles.Solver/'<>c__DisplayClass7_0'::'<>9__2'
      IL_001c: dup
      IL_001d: brtrue.s     IL_0035
      IL_001f: pop
      IL_0020: ldarg.0      // this
      IL_0021: ldarg.0      // this
      IL_0022: ldftn        instance bool Rectangles.Solver/'<>c__DisplayClass7_0'::'<DeleteZeroLines>b__2'(float64)
      IL_0028: newobj       instance void class [System.Runtime]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_002d: dup
      IL_002e: stloc.0      // V_0
      IL_002f: stfld        class [System.Runtime]System.Func`2<float64, bool> Rectangles.Solver/'<>c__DisplayClass7_0'::'<>9__2'
      IL_0034: ldloc.0      // V_0
      IL_0035: call         bool [System.Linq]System.Linq.Enumerable::Any<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [System.Runtime]System.Func`2<!!0/*float64*/, bool>)
      IL_003a: ret
      IL_003b: ldc.i4.1
      IL_003c: ret

    } // end of method '<>c__DisplayClass7_0'::'<DeleteZeroLines>b__0'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__2'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [75 59 - 75 69]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass7_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_000c: ldc.i4.0
      IL_000d: ceq
      IL_000f: ret

    } // end of method '<>c__DisplayClass7_0'::'<DeleteZeroLines>b__2'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__1'(
        float64[] row,
        int32 i
      ) cil managed
    {
      .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor([in] unsigned int8)
        = (01 00 00 00 00 ) // .....
        // unsigned int8(0) // 0x00
      .maxstack 4
      .locals init (
        [0] class [System.Runtime]System.Func`2<float64, bool> V_0
      )

      // [78 29 - 78 83]
      IL_0000: ldarg.1      // row
      IL_0001: ldarg.0      // this
      IL_0002: ldfld        class [System.Runtime]System.Func`2<float64, bool> Rectangles.Solver/'<>c__DisplayClass7_0'::'<>9__3'
      IL_0007: dup
      IL_0008: brtrue.s     IL_0020
      IL_000a: pop
      IL_000b: ldarg.0      // this
      IL_000c: ldarg.0      // this
      IL_000d: ldftn        instance bool Rectangles.Solver/'<>c__DisplayClass7_0'::'<DeleteZeroLines>b__3'(float64)
      IL_0013: newobj       instance void class [System.Runtime]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_0018: dup
      IL_0019: stloc.0      // V_0
      IL_001a: stfld        class [System.Runtime]System.Func`2<float64, bool> Rectangles.Solver/'<>c__DisplayClass7_0'::'<>9__3'
      IL_001f: ldloc.0      // V_0
      IL_0020: call         bool [System.Linq]System.Linq.Enumerable::Any<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [System.Runtime]System.Func`2<!!0/*float64*/, bool>)
      IL_0025: brtrue.s     IL_003e
      IL_0027: ldarg.0      // this
      IL_0028: ldfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass7_0'::'<>4__this'
      IL_002d: ldarg.0      // this
      IL_002e: ldfld        float64[] Rectangles.Solver/'<>c__DisplayClass7_0'::oldFreeMembers
      IL_0033: ldarg.2      // i
      IL_0034: ldelem.r8
      IL_0035: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_003a: ldc.i4.0
      IL_003b: ceq
      IL_003d: ret
      IL_003e: ldc.i4.1
      IL_003f: ret

    } // end of method '<>c__DisplayClass7_0'::'<DeleteZeroLines>b__1'

    .method assembly hidebysig instance bool
      '<DeleteZeroLines>b__3'(
        float64 v
      ) cil managed
    {
      .maxstack 8

      // [78 42 - 78 52]
      IL_0000: ldarg.0      // this
      IL_0001: ldfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass7_0'::'<>4__this'
      IL_0006: ldarg.1      // v
      IL_0007: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_000c: ldc.i4.0
      IL_000d: ceq
      IL_000f: ret

    } // end of method '<>c__DisplayClass7_0'::'<DeleteZeroLines>b__3'
  } // end of class '<>c__DisplayClass7_0'

  .field private static class Rectangles.Solver 'instance'
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor([in] unsigned int8)
      = (01 00 02 00 00 ) // .....
      // unsigned int8(2) // 0x02

  .method private hidebysig specialname rtspecialname instance void
    .ctor() cil managed
  {
    .maxstack 8

    // [7 9 - 7 25]
    IL_0000: ldarg.0      // this
    IL_0001: call         instance void [System.Runtime]System.Object::.ctor()

    // [7 28 - 7 29]
    IL_0006: ret

  } // end of method Solver::.ctor

  .method public hidebysig static class Rectangles.Solver
    GetInstance() cil managed
  {
    .maxstack 8

    // [11 13 - 11 34]
    IL_0000: ldsfld       class Rectangles.Solver Rectangles.Solver::'instance'
    IL_0005: brtrue.s     IL_0011

    // [11 35 - 11 59]
    IL_0007: newobj       instance void Rectangles.Solver::.ctor()
    IL_000c: stsfld       class Rectangles.Solver Rectangles.Solver::'instance'

    // [12 13 - 12 29]
    IL_0011: ldsfld       class Rectangles.Solver Rectangles.Solver::'instance'
    IL_0016: ret

  } // end of method Solver::GetInstance

  .method private hidebysig instance int32
    FindInColumn(
      float64[][] m,
      int32 columnIndex,
      class [System.Runtime]System.Func`3<float64, int32, bool> pred
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 i,
      [1] float64[][] V_1,
      [2] int32 V_2,
      [3] float64[] row
    )

    // [17 13 - 17 23]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // i

    // [18 33 - 18 34]
    IL_0002: ldarg.1      // m
    IL_0003: stloc.1      // V_1
    IL_0004: ldc.i4.0
    IL_0005: stloc.2      // V_2

    IL_0006: br.s         IL_0022
    // start of loop, entry point: IL_0022

      // [18 22 - 18 29]
      IL_0008: ldloc.1      // V_1
      IL_0009: ldloc.2      // V_2
      IL_000a: ldelem.ref
      IL_000b: stloc.3      // row

      // [20 17 - 20 47]
      IL_000c: ldarg.3      // pred
      IL_000d: ldloc.3      // row
      IL_000e: ldarg.2      // columnIndex
      IL_000f: ldelem.r8
      IL_0010: ldloc.0      // i
      IL_0011: callvirt     instance !2/*bool*/ class [System.Runtime]System.Func`3<float64, int32, bool>::Invoke(!0/*float64*/, !1/*int32*/)
      IL_0016: brfalse.s    IL_001a

      // [21 21 - 21 30]
      IL_0018: ldloc.0      // i
      IL_0019: ret

      // [22 17 - 22 21]
      IL_001a: ldloc.0      // i
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.0      // i

      IL_001e: ldloc.2      // V_2
      IL_001f: ldc.i4.1
      IL_0020: add
      IL_0021: stloc.2      // V_2

      // [18 30 - 18 32]
      IL_0022: ldloc.2      // V_2
      IL_0023: ldloc.1      // V_1
      IL_0024: ldlen
      IL_0025: conv.i4
      IL_0026: blt.s        IL_0008
    // end of loop

    // [24 13 - 24 23]
    IL_0028: ldc.i4.m1
    IL_0029: ret

  } // end of method Solver::FindInColumn

  .method private hidebysig instance bool
    CheckNoSolution(
      float64[][] m,
      float64[] free
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 i,
      [1] float64[][] V_1,
      [2] int32 V_2
    )

    // [29 13 - 29 23]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // i

    // [30 33 - 30 34]
    IL_0002: ldarg.1      // m
    IL_0003: stloc.1      // V_1
    IL_0004: ldc.i4.0
    IL_0005: stloc.2      // V_2

    IL_0006: br.s         IL_0033
    // start of loop, entry point: IL_0033

      // [30 22 - 30 29]
      IL_0008: ldloc.1      // V_1
      IL_0009: ldloc.2      // V_2
      IL_000a: ldelem.ref

      // [32 17 - 32 65]
      IL_000b: ldarg.0      // this
      IL_000c: ldftn        instance bool Rectangles.Solver::'<CheckNoSolution>b__4_0'(float64)
      IL_0012: newobj       instance void class [System.Runtime]System.Func`2<float64, bool>::.ctor(object, native int)
      IL_0017: call         bool [System.Linq]System.Linq.Enumerable::All<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [System.Runtime]System.Func`2<!!0/*float64*/, bool>)
      IL_001c: brfalse.s    IL_002b
      IL_001e: ldarg.0      // this
      IL_001f: ldarg.2      // free
      IL_0020: ldloc.0      // i
      IL_0021: ldelem.r8
      IL_0022: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_0027: brtrue.s     IL_002b

      // [33 21 - 33 33]
      IL_0029: ldc.i4.1
      IL_002a: ret

      // [34 17 - 34 21]
      IL_002b: ldloc.0      // i
      IL_002c: ldc.i4.1
      IL_002d: add
      IL_002e: stloc.0      // i

      IL_002f: ldloc.2      // V_2
      IL_0030: ldc.i4.1
      IL_0031: add
      IL_0032: stloc.2      // V_2

      // [30 30 - 30 32]
      IL_0033: ldloc.2      // V_2
      IL_0034: ldloc.1      // V_1
      IL_0035: ldlen
      IL_0036: conv.i4
      IL_0037: blt.s        IL_0008
    // end of loop

    // [36 13 - 36 26]
    IL_0039: ldc.i4.0
    IL_003a: ret

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

    // [41 13 - 41 61]
    IL_0000: ldarg.3      // newM
    IL_0001: ldarg.1      // m
    IL_0002: ldsfld       class [System.Runtime]System.Func`2<float64[], float64[]> Rectangles.Solver/'<>c'::'<>9__5_0'
    IL_0007: dup
    IL_0008: brtrue.s     IL_0021
    IL_000a: pop
    IL_000b: ldsfld       class Rectangles.Solver/'<>c' Rectangles.Solver/'<>c'::'<>9'
    IL_0010: ldftn        instance float64[] Rectangles.Solver/'<>c'::'<CopyData>b__5_0'(float64[])
    IL_0016: newobj       instance void class [System.Runtime]System.Func`2<float64[], float64[]>::.ctor(object, native int)
    IL_001b: dup
    IL_001c: stsfld       class [System.Runtime]System.Func`2<float64[], float64[]> Rectangles.Solver/'<>c'::'<>9__5_0'
    IL_0021: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1/*float64[]*/> [System.Linq]System.Linq.Enumerable::Select<float64[], float64[]>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [System.Runtime]System.Func`2<!!0/*float64[]*/, !!1/*float64[]*/>)
    IL_0026: call         !!0/*float64[]*/[] [System.Linq]System.Linq.Enumerable::ToArray<float64[]>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>)
    IL_002b: stind.ref

    // [42 13 - 42 45]
    IL_002c: ldarg.s      newFree
    IL_002e: ldarg.2      // free
    IL_002f: call         !!0/*float64*/[] [System.Linq]System.Linq.Enumerable::ToArray<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_0034: dup
    IL_0035: starg.s      free
    IL_0037: stind.ref

    // [43 9 - 43 10]
    IL_0038: ret

  } // end of method Solver::CopyData

  .method private hidebysig instance int32
    ForwardGauss(
      float64[][] m,
      float64[] free,
      class [System.Collections]System.Collections.Generic.HashSet`1<int32> lookedRows,
      class [System.Collections]System.Collections.Generic.HashSet`1<int32> lookedCols
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] class Rectangles.Solver/'<>c__DisplayClass6_0' 'CS$<>8__locals0',
      [1] int32 columnsCnt,
      [2] int32 j,
      [3] int32 i,
      [4] class [System.Runtime]System.Func`3<float64, int32, bool> V_4
    )

    IL_0000: newobj       instance void Rectangles.Solver/'<>c__DisplayClass6_0'::.ctor()
    IL_0005: stloc.0      // 'CS$<>8__locals0'
    IL_0006: ldloc.0      // 'CS$<>8__locals0'
    IL_0007: ldarg.0      // this
    IL_0008: stfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass6_0'::'<>4__this'
    IL_000d: ldloc.0      // 'CS$<>8__locals0'
    IL_000e: ldarg.3      // lookedRows
    IL_000f: stfld        class [System.Collections]System.Collections.Generic.HashSet`1<int32> Rectangles.Solver/'<>c__DisplayClass6_0'::lookedRows

    // [47 13 - 47 32]
    IL_0014: ldc.i4.0
    IL_0015: stloc.1      // columnsCnt

    // [48 18 - 48 27]
    IL_0016: ldc.i4.0
    IL_0017: stloc.2      // j

    IL_0018: br.s         IL_008e
    // start of loop, entry point: IL_008e

      // [50 17 - 50 44]
      IL_001a: ldarg.s      lookedCols
      IL_001c: ldloc.2      // j
      IL_001d: callvirt     instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Contains(!0/*int32*/)
      IL_0022: brtrue.s     IL_008a

      // [53 17 - 53 97]
      IL_0024: ldarg.0      // this
      IL_0025: ldarg.1      // m
      IL_0026: ldloc.2      // j
      IL_0027: ldloc.0      // 'CS$<>8__locals0'
      IL_0028: ldfld        class [System.Runtime]System.Func`3<float64, int32, bool> Rectangles.Solver/'<>c__DisplayClass6_0'::'<>9__0'
      IL_002d: dup
      IL_002e: brtrue.s     IL_0048
      IL_0030: pop
      IL_0031: ldloc.0      // 'CS$<>8__locals0'
      IL_0032: ldloc.0      // 'CS$<>8__locals0'
      IL_0033: ldftn        instance bool Rectangles.Solver/'<>c__DisplayClass6_0'::'<ForwardGauss>b__0'(float64, int32)
      IL_0039: newobj       instance void class [System.Runtime]System.Func`3<float64, int32, bool>::.ctor(object, native int)
      IL_003e: dup
      IL_003f: stloc.s      V_4
      IL_0041: stfld        class [System.Runtime]System.Func`3<float64, int32, bool> Rectangles.Solver/'<>c__DisplayClass6_0'::'<>9__0'
      IL_0046: ldloc.s      V_4
      IL_0048: call         instance int32 Rectangles.Solver::FindInColumn(float64[][], int32, class [System.Runtime]System.Func`3<float64, int32, bool>)
      IL_004d: stloc.3      // i

      // [55 17 - 55 28]
      IL_004e: ldloc.3      // i
      IL_004f: ldc.i4.m1
      IL_0050: ble.s        IL_008a

      // [57 21 - 57 45]
      IL_0052: ldarg.0      // this
      IL_0053: ldarg.1      // m
      IL_0054: ldarg.2      // free
      IL_0055: ldloc.3      // i
      IL_0056: call         instance void Rectangles.Solver::SolveOneRow(float64[][], float64[], int32)

      // [58 21 - 58 39]
      IL_005b: ldloc.0      // 'CS$<>8__locals0'
      IL_005c: ldfld        class [System.Collections]System.Collections.Generic.HashSet`1<int32> Rectangles.Solver/'<>c__DisplayClass6_0'::lookedRows
      IL_0061: ldloc.3      // i
      IL_0062: callvirt     instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_0067: pop

      // [59 21 - 59 39]
      IL_0068: ldarg.s      lookedCols
      IL_006a: ldloc.2      // j
      IL_006b: callvirt     instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Add(!0/*int32*/)
      IL_0070: pop

      // [60 21 - 60 34]
      IL_0071: ldloc.1      // columnsCnt
      IL_0072: ldc.i4.1
      IL_0073: add
      IL_0074: stloc.1      // columnsCnt

      // [62 21 - 62 50]
      IL_0075: ldarg.0      // this
      IL_0076: ldarg.1      // m
      IL_0077: ldarg.2      // free
      IL_0078: call         instance bool Rectangles.Solver::CheckNoSolution(float64[][], float64[])
      IL_007d: brfalse.s    IL_008a

      // [63 25 - 63 49]
      IL_007f: ldstr        ""
      IL_0084: newobj       instance void [System.Runtime]System.Exception::.ctor(string)
      IL_0089: throw

      // [48 46 - 48 49]
      IL_008a: ldloc.2      // j
      IL_008b: ldc.i4.1
      IL_008c: add
      IL_008d: stloc.2      // j

      // [48 29 - 48 44]
      IL_008e: ldloc.2      // j
      IL_008f: ldarg.1      // m
      IL_0090: ldc.i4.0
      IL_0091: ldelem.ref
      IL_0092: ldlen
      IL_0093: conv.i4
      IL_0094: blt.s        IL_001a
    // end of loop

    // [67 13 - 67 31]
    IL_0096: ldloc.1      // columnsCnt
    IL_0097: ret

  } // end of method Solver::ForwardGauss

  .method private hidebysig instance void
    DeleteZeroLines(
      float64[][]& m,
      float64[]& free
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class Rectangles.Solver/'<>c__DisplayClass7_0' 'CS$<>8__locals0'
    )

    IL_0000: newobj       instance void Rectangles.Solver/'<>c__DisplayClass7_0'::.ctor()
    IL_0005: stloc.0      // 'CS$<>8__locals0'
    IL_0006: ldloc.0      // 'CS$<>8__locals0'
    IL_0007: ldarg.0      // this
    IL_0008: stfld        class Rectangles.Solver Rectangles.Solver/'<>c__DisplayClass7_0'::'<>4__this'

    // [72 13 - 72 34]
    IL_000d: ldloc.0      // 'CS$<>8__locals0'
    IL_000e: ldarg.1      // m
    IL_000f: ldind.ref
    IL_0010: stfld        float64[][] Rectangles.Solver/'<>c__DisplayClass7_0'::mCopy

    // [73 13 - 73 49]
    IL_0015: ldloc.0      // 'CS$<>8__locals0'
    IL_0016: ldarg.2      // free
    IL_0017: ldind.ref
    IL_0018: call         !!0/*float64*/[] [System.Linq]System.Linq.Enumerable::ToArray<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_001d: stfld        float64[] Rectangles.Solver/'<>c__DisplayClass7_0'::oldFreeMembers

    // [74 13 - 76 25]
    IL_0022: ldarg.2      // free
    IL_0023: ldarg.2      // free
    IL_0024: ldind.ref
    IL_0025: ldloc.0      // 'CS$<>8__locals0'
    IL_0026: ldftn        instance bool Rectangles.Solver/'<>c__DisplayClass7_0'::'<DeleteZeroLines>b__0'(float64, int32)
    IL_002c: newobj       instance void class [System.Runtime]System.Func`3<float64, int32, bool>::.ctor(object, native int)
    IL_0031: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/> [System.Linq]System.Linq.Enumerable::Where<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>, class [System.Runtime]System.Func`3<!!0/*float64*/, int32, bool>)
    IL_0036: call         !!0/*float64*/[] [System.Linq]System.Linq.Enumerable::ToArray<float64>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64*/>)
    IL_003b: stind.ref

    // [77 13 - 79 25]
    IL_003c: ldarg.1      // m
    IL_003d: ldarg.1      // m
    IL_003e: ldind.ref
    IL_003f: ldloc.0      // 'CS$<>8__locals0'
    IL_0040: ldftn        instance bool Rectangles.Solver/'<>c__DisplayClass7_0'::'<DeleteZeroLines>b__1'(float64[], int32)
    IL_0046: newobj       instance void class [System.Runtime]System.Func`3<float64[], int32, bool>::.ctor(object, native int)
    IL_004b: call         class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/> [System.Linq]System.Linq.Enumerable::Where<float64[]>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>, class [System.Runtime]System.Func`3<!!0/*float64[]*/, int32, bool>)
    IL_0050: call         !!0/*float64[]*/[] [System.Linq]System.Linq.Enumerable::ToArray<float64[]>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0/*float64[]*/>)
    IL_0055: stind.ref

    // [80 9 - 80 10]
    IL_0056: ret

  } // end of method Solver::DeleteZeroLines

  .method private hidebysig instance float64[]
    BackGauss(
      float64[][] m,
      float64[] free
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] float64[] answer,
      [1] int32 i,
      [2] int32 varInd
    )

    // [84 13 - 84 55]
    IL_0000: ldarg.1      // m
    IL_0001: ldc.i4.0
    IL_0002: ldelem.ref
    IL_0003: ldlen
    IL_0004: conv.i4
    IL_0005: newarr       [System.Runtime]System.Double
    IL_000a: stloc.0      // answer

    // [86 18 - 86 27]
    IL_000b: ldc.i4.0
    IL_000c: stloc.1      // i

    IL_000d: br.s         IL_003a
    // start of loop, entry point: IL_003a

      // [88 17 - 88 69]
      IL_000f: ldarg.1      // m
      IL_0010: ldloc.1      // i
      IL_0011: ldelem.ref
      IL_0012: ldarg.0      // this
      IL_0013: ldftn        instance bool Rectangles.Solver::'<BackGauss>b__8_0'(float64)
      IL_0019: newobj       instance void class [System.Runtime]System.Predicate`1<float64>::.ctor(object, native int)
      IL_001e: call         int32 [System.Runtime]System.Array::FindIndex<float64>(!!0/*float64*/[], class [System.Runtime]System.Predicate`1<!!0/*float64*/>)
      IL_0023: stloc.2      // varInd

      // [89 17 - 89 64]
      IL_0024: ldloc.0      // answer
      IL_0025: ldloc.2      // varInd
      IL_0026: ldarg.0      // this
      IL_0027: ldarg.2      // free
      IL_0028: ldloc.1      // i
      IL_0029: ldelem.r8
      IL_002a: ldarg.1      // m
      IL_002b: ldloc.1      // i
      IL_002c: ldelem.ref
      IL_002d: ldloc.2      // varInd
      IL_002e: ldelem.r8
      IL_002f: div
      IL_0030: call         instance float64 Rectangles.Solver::Round(float64)
      IL_0035: stelem.r8

      // [86 43 - 86 46]
      IL_0036: ldloc.1      // i
      IL_0037: ldc.i4.1
      IL_0038: add
      IL_0039: stloc.1      // i

      // [86 29 - 86 41]
      IL_003a: ldloc.1      // i
      IL_003b: ldarg.1      // m
      IL_003c: ldlen
      IL_003d: conv.i4
      IL_003e: blt.s        IL_000f
    // end of loop

    // [91 13 - 91 27]
    IL_0040: ldloc.0      // answer
    IL_0041: ret

  } // end of method Solver::BackGauss

  .method public hidebysig instance float64[]
    Solve(
      float64[][] matrix,
      float64[] freeMembers,
      [opt] class [System.Collections]System.Collections.Generic.HashSet`1<int32> lookedCols
    ) cil managed
  {
    .param [3] = nullref
    .maxstack 5
    .locals init (
      [0] float64[][] matrixCopy,
      [1] float64[] freeMembersCopy,
      [2] class [System.Collections]System.Collections.Generic.HashSet`1<int32> lookedRows,
      [3] int32 columnsCnt,
      [4] float64[] ans
    )

    // [97 13 - 100 15]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // matrix
    IL_0002: ldarg.2      // freeMembers
    IL_0003: ldloca.s     matrixCopy
    IL_0005: ldloca.s     freeMembersCopy
    IL_0007: call         instance void Rectangles.Solver::CopyData(float64[][], float64[], float64[][]&, float64[]&)

    // [102 13 - 102 49]
    IL_000c: newobj       instance void class [System.Collections]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_0011: stloc.2      // lookedRows

    // [103 13 - 103 73]
    IL_0012: ldarg.3      // lookedCols
    IL_0013: brfalse.s    IL_0018
    IL_0015: ldnull
    IL_0016: br.s         IL_001d
    IL_0018: newobj       instance void class [System.Collections]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_001d: starg.s      lookedCols

    // [105 13 - 105 96]
    IL_001f: ldarg.0      // this
    IL_0020: ldloc.0      // matrixCopy
    IL_0021: ldloc.1      // freeMembersCopy
    IL_0022: ldloc.2      // lookedRows
    IL_0023: ldarg.3      // lookedCols
    IL_0024: call         instance int32 Rectangles.Solver::ForwardGauss(float64[][], float64[], class [System.Collections]System.Collections.Generic.HashSet`1<int32>, class [System.Collections]System.Collections.Generic.HashSet`1<int32>)
    IL_0029: stloc.3      // columnsCnt

    // [106 13 - 106 61]
    IL_002a: ldloc.0      // matrixCopy
    IL_002b: ldc.i4.0
    IL_002c: ldelem.ref
    IL_002d: ldlen
    IL_002e: conv.i4
    IL_002f: newarr       [System.Runtime]System.Double
    IL_0034: stloc.s      ans

    // [107 13 - 107 66]
    IL_0036: ldarg.0      // this
    IL_0037: ldloca.s     matrixCopy
    IL_0039: ldloca.s     freeMembersCopy
    IL_003b: call         instance void Rectangles.Solver::DeleteZeroLines(float64[][]&, float64[]&)

    // [109 13 - 109 74]
    IL_0040: ldloc.0      // matrixCopy
    IL_0041: ldlen
    IL_0042: conv.i4
    IL_0043: ldloc.3      // columnsCnt
    IL_0044: bne.un.s     IL_0053
    IL_0046: ldloc.0      // matrixCopy
    IL_0047: ldlen
    IL_0048: brfalse.s    IL_0053

    // [110 17 - 110 63]
    IL_004a: ldarg.0      // this
    IL_004b: ldloc.0      // matrixCopy
    IL_004c: ldloc.1      // freeMembersCopy
    IL_004d: call         instance float64[] Rectangles.Solver::BackGauss(float64[][], float64[])
    IL_0052: ret

    // [111 18 - 111 45]
    IL_0053: ldloc.0      // matrixCopy
    IL_0054: ldlen
    IL_0055: brtrue.s     IL_005a

    // [112 17 - 112 28]
    IL_0057: ldloc.s      ans
    IL_0059: ret

    // [114 17 - 114 71]
    IL_005a: ldarg.0      // this
    IL_005b: ldloc.0      // matrixCopy
    IL_005c: ldloc.1      // freeMembersCopy
    IL_005d: ldarg.3      // lookedCols
    IL_005e: call         instance float64[] Rectangles.Solver::Solve(float64[][], float64[], class [System.Collections]System.Collections.Generic.HashSet`1<int32>)
    IL_0063: ret

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
      [0] int32 cur_j,
      [1] int32 cur_i,
      [2] float64 k,
      [3] int32 j
    )

    // [119 13 - 119 64]
    IL_0000: ldarg.1      // m
    IL_0001: ldarg.3      // i
    IL_0002: ldelem.ref
    IL_0003: ldarg.0      // this
    IL_0004: ldftn        instance bool Rectangles.Solver::'<SolveOneRow>b__10_0'(float64)
    IL_000a: newobj       instance void class [System.Runtime]System.Predicate`1<float64>::.ctor(object, native int)
    IL_000f: call         int32 [System.Runtime]System.Array::FindIndex<float64>(!!0/*float64*/[], class [System.Runtime]System.Predicate`1<!!0/*float64*/>)
    IL_0014: stloc.0      // cur_j

    // [120 18 - 120 31]
    IL_0015: ldc.i4.0
    IL_0016: stloc.1      // cur_i

    IL_0017: br.s         IL_0075
    // start of loop, entry point: IL_0075

      // [122 17 - 122 59]
      IL_0019: ldarg.0      // this
      IL_001a: ldarg.1      // m
      IL_001b: ldloc.1      // cur_i
      IL_001c: ldelem.ref
      IL_001d: ldloc.0      // cur_j
      IL_001e: ldelem.r8
      IL_001f: call         instance bool Rectangles.Solver::IsZero(float64)
      IL_0024: brtrue.s     IL_0071
      IL_0026: ldloc.1      // cur_i
      IL_0027: ldarg.3      // i
      IL_0028: beq.s        IL_0071

      // [125 17 - 125 59]
      IL_002a: ldarg.1      // m
      IL_002b: ldloc.1      // cur_i
      IL_002c: ldelem.ref
      IL_002d: ldloc.0      // cur_j
      IL_002e: ldelem.r8
      IL_002f: neg
      IL_0030: ldarg.1      // m
      IL_0031: ldarg.3      // i
      IL_0032: ldelem.ref
      IL_0033: ldloc.0      // cur_j
      IL_0034: ldelem.r8
      IL_0035: div
      IL_0036: stloc.2      // k

      // [127 22 - 127 31]
      IL_0037: ldc.i4.0
      IL_0038: stloc.3      // j

      IL_0039: br.s         IL_0057
      // start of loop, entry point: IL_0057

        // [128 21 - 128 68]
        IL_003b: ldarg.1      // m
        IL_003c: ldloc.1      // cur_i
        IL_003d: ldelem.ref
        IL_003e: ldloc.3      // j
        IL_003f: ldarg.0      // this
        IL_0040: ldloc.2      // k
        IL_0041: ldarg.1      // m
        IL_0042: ldarg.3      // i
        IL_0043: ldelem.ref
        IL_0044: ldloc.3      // j
        IL_0045: ldelem.r8
        IL_0046: mul
        IL_0047: ldarg.1      // m
        IL_0048: ldloc.1      // cur_i
        IL_0049: ldelem.ref
        IL_004a: ldloc.3      // j
        IL_004b: ldelem.r8
        IL_004c: add
        IL_004d: call         instance float64 Rectangles.Solver::Round(float64)
        IL_0052: stelem.r8

        // [127 50 - 127 53]
        IL_0053: ldloc.3      // j
        IL_0054: ldc.i4.1
        IL_0055: add
        IL_0056: stloc.3      // j

        // [127 33 - 127 48]
        IL_0057: ldloc.3      // j
        IL_0058: ldarg.1      // m
        IL_0059: ldc.i4.0
        IL_005a: ldelem.ref
        IL_005b: ldlen
        IL_005c: conv.i4
        IL_005d: blt.s        IL_003b
      // end of loop

      // [130 17 - 130 64]
      IL_005f: ldarg.2      // free
      IL_0060: ldloc.1      // cur_i
      IL_0061: ldarg.0      // this
      IL_0062: ldloc.2      // k
      IL_0063: ldarg.2      // free
      IL_0064: ldarg.3      // i
      IL_0065: ldelem.r8
      IL_0066: mul
      IL_0067: ldarg.2      // free
      IL_0068: ldloc.1      // cur_i
      IL_0069: ldelem.r8
      IL_006a: add
      IL_006b: call         instance float64 Rectangles.Solver::Round(float64)
      IL_0070: stelem.r8

      // [120 51 - 120 58]
      IL_0071: ldloc.1      // cur_i
      IL_0072: ldc.i4.1
      IL_0073: add
      IL_0074: stloc.1      // cur_i

      // [120 33 - 120 49]
      IL_0075: ldloc.1      // cur_i
      IL_0076: ldarg.1      // m
      IL_0077: ldlen
      IL_0078: conv.i4
      IL_0079: blt.s        IL_0019
    // end of loop

    // [132 9 - 132 10]
    IL_007b: ret

  } // end of method Solver::SolveOneRow

  .method private hidebysig instance float64
    Round(
      float64 v
    ) cil managed
  {
    .maxstack 8

    // [134 35 - 134 52]
    IL_0000: ldarg.1      // v
    IL_0001: ldc.i4.s     10 // 0x0a
    IL_0003: call         float64 [System.Runtime]System.Math::Round(float64, int32)
    IL_0008: ret

  } // end of method Solver::Round

  .method private hidebysig instance bool
    IsZero(
      float64 v
    ) cil managed
  {
    .maxstack 8

    // [136 34 - 136 52]
    IL_0000: ldarg.1      // v
    IL_0001: call         float64 [System.Runtime]System.Math::Abs(float64)
    IL_0006: ldc.r8       1E-06
    IL_000f: clt
    IL_0011: ret

  } // end of method Solver::IsZero

  .method private hidebysig instance bool
    '<CheckNoSolution>b__4_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [32 34 - 32 43]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool Rectangles.Solver::IsZero(float64)
    IL_0007: ret

  } // end of method Solver::'<CheckNoSolution>b__4_0'

  .method private hidebysig instance bool
    '<BackGauss>b__8_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [88 57 - 88 67]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool Rectangles.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<BackGauss>b__8_0'

  .method private hidebysig instance bool
    '<SolveOneRow>b__10_0'(
      float64 v
    ) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )
    .maxstack 8

    // [119 52 - 119 62]
    IL_0000: ldarg.0      // this
    IL_0001: ldarg.1      // v
    IL_0002: call         instance bool Rectangles.Solver::IsZero(float64)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000a: ret

  } // end of method Solver::'<SolveOneRow>b__10_0'
} // end of class Rectangles.Solver
