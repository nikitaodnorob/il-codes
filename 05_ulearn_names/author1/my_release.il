// Type: Names.HeatmapTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CA0F5BE7-33C3-438B-9D71-CE286BCA7CA1
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\01_release_mycompiler.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  Names.HeatmapTask
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class Names.HeatmapTask/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<class Names.NameData, bool> '<>9__0_2'

    .field public static class [mscorlib]System.Func`2<int32, string> '<>9__0_0'

    .field public static class [mscorlib]System.Func`2<int32, string> '<>9__0_1'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void Names.HeatmapTask/'<>c'::.ctor()
      IL_0005: stsfld       class Names.HeatmapTask/'<>c' Names.HeatmapTask/'<>c'::'<>9'
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
      '<GetBirthsPerDateHeatmap>b__0_2'(
        class Names.NameData nameRecord
      ) cil managed
    {
      .maxstack 8

      // [18 123 - 18 151]
      IL_0000: ldarg.1      // nameRecord
      IL_0001: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0006: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_000b: ldc.i4.1
      IL_000c: cgt
      IL_000e: ret

    } // end of method '<>c'::'<GetBirthsPerDateHeatmap>b__0_2'

    .method assembly hidebysig instance string
      '<GetBirthsPerDateHeatmap>b__0_0'(
        int32 v
      ) cil managed
    {
      .maxstack 8

      // [20 137 - 20 149]
      IL_0000: ldarga.s     v
      IL_0002: call         instance string [mscorlib]System.Int32::ToString()
      IL_0007: ret

    } // end of method '<>c'::'<GetBirthsPerDateHeatmap>b__0_0'

    .method assembly hidebysig instance string
      '<GetBirthsPerDateHeatmap>b__0_1'(
        int32 v
      ) cil managed
    {
      .maxstack 8

      // [20 241 - 20 253]
      IL_0000: ldarga.s     v
      IL_0002: call         instance string [mscorlib]System.Int32::ToString()
      IL_0007: ret

    } // end of method '<>c'::'<GetBirthsPerDateHeatmap>b__0_1'
  } // end of class '<>c'

  .method public hidebysig static class Names.HeatmapData
    GetBirthsPerDateHeatmap(
      class Names.NameData[] names
    ) cil managed
  {
    .maxstack 6
    .locals init (
      [0] float64[0...,0...] heat,
      [1] class [mscorlib]System.Collections.Generic.IEnumerator`1<class Names.NameData> V_1,
      [2] class Names.NameData nameData
    )

    // [17 7 - 17 42]
    IL_0000: ldc.i4.s     30 // 0x1e
    IL_0002: ldc.i4.s     12 // 0x0c
    IL_0004: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0009: stloc.0      // heat

    // [18 37 - 18 153]
    IL_000a: ldarg.0      // names
    IL_000b: ldsfld       class [mscorlib]System.Func`2<class Names.NameData, bool> Names.HeatmapTask/'<>c'::'<>9__0_2'
    IL_0010: dup

    IL_0011: brtrue.s     IL_002a
    IL_0013: pop
    IL_0014: ldsfld       class Names.HeatmapTask/'<>c' Names.HeatmapTask/'<>c'::'<>9'
    IL_0019: ldftn        instance bool Names.HeatmapTask/'<>c'::'<GetBirthsPerDateHeatmap>b__0_2'(class Names.NameData)
    IL_001f: newobj       instance void class [mscorlib]System.Func`2<class Names.NameData, bool>::.ctor(object, native int)
    IL_0024: dup
    IL_0025: stsfld       class [mscorlib]System.Func`2<class Names.NameData, bool> Names.HeatmapTask/'<>c'::'<>9__0_2'
    IL_002a: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/> [System.Core]System.Linq.Enumerable::Where<class Names.NameData>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/>, class [mscorlib]System.Func`2<!!0/*class Names.NameData*/, bool>)
    IL_002f: callvirt     instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0/*class Names.NameData*/> class [mscorlib]System.Collections.Generic.IEnumerable`1<class Names.NameData>::GetEnumerator()
    IL_0034: stloc.1      // V_1
    .try
    {
      IL_0035: br.s         IL_006b
      // start of loop, entry point: IL_006b

        // [18 16 - 18 33]
        IL_0037: ldloc.1      // V_1
        IL_0038: callvirt     instance !0/*class Names.NameData*/ class [mscorlib]System.Collections.Generic.IEnumerator`1<class Names.NameData>::get_Current()
        IL_003d: stloc.2      // nameData

        // [19 9 - 19 73]
        IL_003e: ldloc.0      // heat
        IL_003f: ldloc.2      // nameData
        IL_0040: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
        IL_0045: call         instance int32 [mscorlib]System.DateTime::get_Day()
        IL_004a: ldc.i4.2
        IL_004b: sub
        IL_004c: ldloc.2      // nameData
        IL_004d: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
        IL_0052: call         instance int32 [mscorlib]System.DateTime::get_Month()
        IL_0057: ldc.i4.1
        IL_0058: sub
        IL_0059: call         instance float64& float64[0...,0...]::Address(int32, int32)
        IL_005e: dup

        IL_005f: ldind.r8
        IL_0060: ldc.r8       1
        IL_0069: add
        IL_006a: stind.r8
        IL_006b: ldloc.1      // V_1
        IL_006c: callvirt     instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
        IL_0071: brtrue.s     IL_0037
      // end of loop
      IL_0073: leave.s      IL_007f
    } // end of .try
    finally
    {
      IL_0075: ldloc.1      // V_1
      IL_0076: brfalse.s    IL_007e
      IL_0078: ldloc.1      // V_1
      IL_0079: callvirt     instance void [mscorlib]System.IDisposable::Dispose()
      IL_007e: endfinally
    } // end of finally

    // [20 7 - 20 275]
    IL_007f: ldstr        "Пример карты интенсивностей"
    IL_0084: ldloc.0      // heat
    IL_0085: ldc.i4.2
    IL_0086: ldc.i4.s     30 // 0x1e
    IL_0088: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> [System.Core]System.Linq.Enumerable::Range(int32, int32)
    IL_008d: ldsfld       class [mscorlib]System.Func`2<int32, string> Names.HeatmapTask/'<>c'::'<>9__0_0'
    IL_0092: dup

    IL_0093: brtrue.s     IL_00ac
    IL_0095: pop
    IL_0096: ldsfld       class Names.HeatmapTask/'<>c' Names.HeatmapTask/'<>c'::'<>9'
    IL_009b: ldftn        instance string Names.HeatmapTask/'<>c'::'<GetBirthsPerDateHeatmap>b__0_0'(int32)
    IL_00a1: newobj       instance void class [mscorlib]System.Func`2<int32, string>::.ctor(object, native int)
    IL_00a6: dup
    IL_00a7: stsfld       class [mscorlib]System.Func`2<int32, string> Names.HeatmapTask/'<>c'::'<>9__0_0'
    IL_00ac: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*string*/> [System.Core]System.Linq.Enumerable::Select<int32, string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*int32*/>, class [mscorlib]System.Func`2<!!0/*int32*/, !!1/*string*/>)
    IL_00b1: call         !!0/*string*/[] [System.Core]System.Linq.Enumerable::ToArray<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_00b6: ldc.i4.1
    IL_00b7: ldc.i4.s     12 // 0x0c
    IL_00b9: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> [System.Core]System.Linq.Enumerable::Range(int32, int32)
    IL_00be: ldsfld       class [mscorlib]System.Func`2<int32, string> Names.HeatmapTask/'<>c'::'<>9__0_1'
    IL_00c3: dup
    IL_00c4: brtrue.s     IL_00dd
    IL_00c6: pop
    IL_00c7: ldsfld       class Names.HeatmapTask/'<>c' Names.HeatmapTask/'<>c'::'<>9'
    IL_00cc: ldftn        instance string Names.HeatmapTask/'<>c'::'<GetBirthsPerDateHeatmap>b__0_1'(int32)
    IL_00d2: newobj       instance void class [mscorlib]System.Func`2<int32, string>::.ctor(object, native int)
    IL_00d7: dup
    IL_00d8: stsfld       class [mscorlib]System.Func`2<int32, string> Names.HeatmapTask/'<>c'::'<>9__0_1'
    IL_00dd: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*string*/> [System.Core]System.Linq.Enumerable::Select<int32, string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*int32*/>, class [mscorlib]System.Func`2<!!0/*int32*/, !!1/*string*/>)
    IL_00e2: call         !!0/*string*/[] [System.Core]System.Linq.Enumerable::ToArray<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_00e7: newobj       instance void Names.HeatmapData::.ctor(string, float64[0...,0...], string[], string[])
    IL_00ec: ret

  } // end of method HeatmapTask::GetBirthsPerDateHeatmap
} // end of class Names.HeatmapTask

// Type: Names.HistogramTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CA0F5BE7-33C3-438B-9D71-CE286BCA7CA1
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\01_release_mycompiler.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  Names.HistogramTask
    extends [mscorlib]System.Object
{

  .class nested private sealed auto ansi beforefieldinit
    '<>c__DisplayClass0_0'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public string name

    .method public hidebysig specialname rtspecialname instance void
      .ctor() cil managed
    {
      .maxstack 8

      IL_0000: ldarg.0      // this
      IL_0001: call         instance void [mscorlib]System.Object::.ctor()
      IL_0006: ret

    } // end of method '<>c__DisplayClass0_0'::.ctor

    .method assembly hidebysig instance bool
      '<GetBirthsPerDayHistogram>b__0'(
        class Names.NameData nameRecord
      ) cil managed
    {
      .maxstack 8

      // [18 101 - 18 124]
      IL_0000: ldarg.1      // nameRecord
      IL_0001: ldfld        string Names.NameData::Name
      IL_0006: ldarg.0      // this
      IL_0007: ldfld        string Names.HistogramTask/'<>c__DisplayClass0_0'::name
      IL_000c: call         bool [mscorlib]System.String::op_Equality(string, string)
      IL_0011: ret

    } // end of method '<>c__DisplayClass0_0'::'<GetBirthsPerDayHistogram>b__0'
  } // end of class '<>c__DisplayClass0_0'

  .class nested private sealed auto ansi serializable beforefieldinit
    '<>c'
      extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor()
      = (01 00 00 00 )

    .field public static initonly class Names.HistogramTask/'<>c' '<>9'

    .field public static class [mscorlib]System.Func`2<class Names.NameData, bool> '<>9__0_1'

    .field public static class [mscorlib]System.Func`2<int32, string> '<>9__0_2'

    .method private hidebysig static specialname rtspecialname void
      .cctor() cil managed
    {
      .maxstack 8

      IL_0000: newobj       instance void Names.HistogramTask/'<>c'::.ctor()
      IL_0005: stsfld       class Names.HistogramTask/'<>c' Names.HistogramTask/'<>c'::'<>9'
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
      '<GetBirthsPerDayHistogram>b__0_1'(
        class Names.NameData nameRecord
      ) cil managed
    {
      .maxstack 8

      // [18 181 - 18 209]
      IL_0000: ldarg.1      // nameRecord
      IL_0001: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0006: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_000b: ldc.i4.1
      IL_000c: cgt
      IL_000e: ret

    } // end of method '<>c'::'<GetBirthsPerDayHistogram>b__0_1'

    .method assembly hidebysig instance string
      '<GetBirthsPerDayHistogram>b__0_2'(
        int32 v
      ) cil managed
    {
      .maxstack 8

      // [21 168 - 21 180]
      IL_0000: ldarga.s     v
      IL_0002: call         instance string [mscorlib]System.Int32::ToString()
      IL_0007: ret

    } // end of method '<>c'::'<GetBirthsPerDayHistogram>b__0_2'
  } // end of class '<>c'

  .method public hidebysig static class Names.HistogramData
    GetBirthsPerDayHistogram(
      class Names.NameData[] names,
      string name
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] class Names.HistogramTask/'<>c__DisplayClass0_0' V_0,
      [1] float64[] yValues,
      [2] class Names.NameData[] V_2,
      [3] int32 V_3,
      [4] class Names.NameData name1
    )

    IL_0000: newobj       instance void Names.HistogramTask/'<>c__DisplayClass0_0'::.ctor()
    IL_0005: stloc.0      // V_0
    IL_0006: ldloc.0      // V_0
    IL_0007: ldarg.1      // name
    IL_0008: stfld        string Names.HistogramTask/'<>c__DisplayClass0_0'::name

    // [17 7 - 17 40]
    IL_000d: ldc.i4.s     31 // 0x1f
    IL_000f: newarr       [mscorlib]System.Double
    IL_0014: stloc.1      // yValues

    // [18 7 - 18 231]
    IL_0015: ldarg.0      // names
    IL_0016: ldloc.0      // V_0
    IL_0017: ldftn        instance bool Names.HistogramTask/'<>c__DisplayClass0_0'::'<GetBirthsPerDayHistogram>b__0'(class Names.NameData)
    IL_001d: newobj       instance void class [mscorlib]System.Func`2<class Names.NameData, bool>::.ctor(object, native int)
    IL_0022: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/> [System.Core]System.Linq.Enumerable::Where<class Names.NameData>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/>, class [mscorlib]System.Func`2<!!0/*class Names.NameData*/, bool>)
    IL_0027: ldsfld       class [mscorlib]System.Func`2<class Names.NameData, bool> Names.HistogramTask/'<>c'::'<>9__0_1'
    IL_002c: dup

    IL_002d: brtrue.s     IL_0046
    IL_002f: pop
    IL_0030: ldsfld       class Names.HistogramTask/'<>c' Names.HistogramTask/'<>c'::'<>9'
    IL_0035: ldftn        instance bool Names.HistogramTask/'<>c'::'<GetBirthsPerDayHistogram>b__0_1'(class Names.NameData)
    IL_003b: newobj       instance void class [mscorlib]System.Func`2<class Names.NameData, bool>::.ctor(object, native int)
    IL_0040: dup
    IL_0041: stsfld       class [mscorlib]System.Func`2<class Names.NameData, bool> Names.HistogramTask/'<>c'::'<>9__0_1'
    IL_0046: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/> [System.Core]System.Linq.Enumerable::Where<class Names.NameData>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/>, class [mscorlib]System.Func`2<!!0/*class Names.NameData*/, bool>)
    IL_004b: call         !!0/*class Names.NameData*/[] [System.Core]System.Linq.Enumerable::ToArray<class Names.NameData>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*class Names.NameData*/>)
    IL_0050: starg.s      names

    // [19 34 - 19 39]
    IL_0052: ldarg.0      // names
    IL_0053: stloc.2      // V_2

    IL_0054: ldc.i4.0
    IL_0055: stloc.3      // V_3
    IL_0056: br.s         IL_0082
    // start of loop, entry point: IL_0082

      // [19 16 - 19 30]
      IL_0058: ldloc.2      // V_2
      IL_0059: ldloc.3      // V_3
      IL_005a: ldelem.ref
      IL_005b: stloc.s      name1

      // [20 9 - 20 43]
      IL_005d: ldloc.1      // yValues
      IL_005e: ldloc.s      name1
      IL_0060: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0065: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_006a: ldc.i4.1
      IL_006b: sub
      IL_006c: ldelema      [mscorlib]System.Double
      IL_0071: dup

      IL_0072: ldind.r8
      IL_0073: ldc.r8       1
      IL_007c: add
      IL_007d: stind.r8
      IL_007e: ldloc.3      // V_3
      IL_007f: ldc.i4.1
      IL_0080: add
      IL_0081: stloc.3      // V_3
      IL_0082: ldloc.3      // V_3
      IL_0083: ldloc.2      // V_2
      IL_0084: ldlen
      IL_0085: conv.i4
      IL_0086: blt.s        IL_0058
    // end of loop

    // [21 7 - 21 211]
    IL_0088: ldstr        "Рождаемость людей с именем '{0}'"
    IL_008d: ldloc.0      // V_0
    IL_008e: ldfld        string Names.HistogramTask/'<>c__DisplayClass0_0'::name
    IL_0093: call         string [mscorlib]System.String::Format(string, object)
    IL_0098: ldc.i4.1
    IL_0099: ldc.i4.s     31 // 0x1f
    IL_009b: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> [System.Core]System.Linq.Enumerable::Range(int32, int32)
    IL_00a0: ldsfld       class [mscorlib]System.Func`2<int32, string> Names.HistogramTask/'<>c'::'<>9__0_2'
    IL_00a5: dup

    IL_00a6: brtrue.s     IL_00bf
    IL_00a8: pop
    IL_00a9: ldsfld       class Names.HistogramTask/'<>c' Names.HistogramTask/'<>c'::'<>9'
    IL_00ae: ldftn        instance string Names.HistogramTask/'<>c'::'<GetBirthsPerDayHistogram>b__0_2'(int32)
    IL_00b4: newobj       instance void class [mscorlib]System.Func`2<int32, string>::.ctor(object, native int)
    IL_00b9: dup
    IL_00ba: stsfld       class [mscorlib]System.Func`2<int32, string> Names.HistogramTask/'<>c'::'<>9__0_2'
    IL_00bf: call         class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1/*string*/> [System.Core]System.Linq.Enumerable::Select<int32, string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*int32*/>, class [mscorlib]System.Func`2<!!0/*int32*/, !!1/*string*/>)
    IL_00c4: call         !!0/*string*/[] [System.Core]System.Linq.Enumerable::ToArray<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0/*string*/>)
    IL_00c9: ldloc.1      // yValues
    IL_00ca: newobj       instance void Names.HistogramData::.ctor(string, string[], float64[])
    IL_00cf: ret

  } // end of method HistogramTask::GetBirthsPerDayHistogram
} // end of class Names.HistogramTask
