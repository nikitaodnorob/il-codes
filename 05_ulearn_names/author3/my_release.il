// Type: Names.HeatmapTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 9EEDD0D3-8723-4CCE-816B-18C17282E37D
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\03_release_mycompiler.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  Names.HeatmapTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class Names.HeatmapData
    GetBirthsPerDateHeatmap(
      class Names.NameData[] names
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64[0...,0...] heat,
      [1] string[] xLabels,
      [2] string[] yLabels,
      [3] class Names.NameData[] V_3,
      [4] int32 V_4,
      [5] class Names.NameData name,
      [6] int32 index,
      [7] int32 index_V_7
    )

    // [13 7 - 13 42]
    IL_0000: ldc.i4.s     31 // 0x1f
    IL_0002: ldc.i4.s     12 // 0x0c
    IL_0004: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0009: stloc.0      // heat

    // [14 33 - 14 38]
    IL_000a: ldarg.0      // names
    IL_000b: stloc.3      // V_3

    IL_000c: ldc.i4.0
    IL_000d: stloc.s      V_4
    IL_000f: br.s         IL_005b
    // start of loop, entry point: IL_005b

      // [14 16 - 14 29]
      IL_0011: ldloc.3      // V_3
      IL_0012: ldloc.s      V_4
      IL_0014: ldelem.ref
      IL_0015: stloc.s      name

      // [16 9 - 16 37]
      IL_0017: ldloc.s      name
      IL_0019: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_001e: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0023: ldc.i4.1
      IL_0024: beq.s        IL_0055

      // [17 11 - 17 67]
      IL_0026: ldloc.0      // heat
      IL_0027: ldloc.s      name
      IL_0029: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_002e: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0033: ldc.i4.1
      IL_0034: sub
      IL_0035: ldloc.s      name
      IL_0037: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_003c: call         instance int32 [mscorlib]System.DateTime::get_Month()
      IL_0041: ldc.i4.1
      IL_0042: sub
      IL_0043: call         instance float64& float64[0...,0...]::Address(int32, int32)
      IL_0048: dup

      IL_0049: ldind.r8
      IL_004a: ldc.r8       1
      IL_0053: add
      IL_0054: stind.r8
      IL_0055: ldloc.s      V_4
      IL_0057: ldc.i4.1
      IL_0058: add
      IL_0059: stloc.s      V_4
      IL_005b: ldloc.s      V_4
      IL_005d: ldloc.3      // V_3
      IL_005e: ldlen
      IL_005f: conv.i4
      IL_0060: blt.s        IL_0011
    // end of loop

    // [19 7 - 19 40]
    IL_0062: ldc.i4.s     30 // 0x1e
    IL_0064: newarr       [mscorlib]System.String
    IL_0069: stloc.1      // xLabels

    // [20 12 - 20 25]
    IL_006a: ldc.i4.1
    IL_006b: stloc.s      index

    IL_006d: br.s         IL_0086
    // start of loop, entry point: IL_0086

      // [21 9 - 21 48]
      IL_006f: ldloc.1      // xLabels
      IL_0070: ldloc.s      index
      IL_0072: ldloc.s      index
      IL_0074: ldc.i4.1
      IL_0075: add
      IL_0076: stloc.s      V_4
      IL_0078: ldloca.s     V_4
      IL_007a: call         instance string [mscorlib]System.Int32::ToString()
      IL_007f: stelem.ref

      // [20 51 - 20 58]
      IL_0080: ldloc.s      index
      IL_0082: ldc.i4.1
      IL_0083: add
      IL_0084: stloc.s      index

      // [20 27 - 20 49]
      IL_0086: ldloc.s      index
      IL_0088: ldloc.1      // xLabels
      IL_0089: ldlen
      IL_008a: conv.i4
      IL_008b: blt.s        IL_006f
    // end of loop

    // [22 7 - 22 40]
    IL_008d: ldc.i4.s     12 // 0x0c
    IL_008f: newarr       [mscorlib]System.String
    IL_0094: stloc.2      // yLabels

    // [23 12 - 23 25]
    IL_0095: ldc.i4.0
    IL_0096: stloc.s      index_V_7

    IL_0098: br.s         IL_00b1
    // start of loop, entry point: IL_00b1

      // [24 9 - 24 48]
      IL_009a: ldloc.2      // yLabels
      IL_009b: ldloc.s      index_V_7
      IL_009d: ldloc.s      index_V_7
      IL_009f: ldc.i4.1
      IL_00a0: add
      IL_00a1: stloc.s      V_4
      IL_00a3: ldloca.s     V_4
      IL_00a5: call         instance string [mscorlib]System.Int32::ToString()
      IL_00aa: stelem.ref

      // [23 51 - 23 58]
      IL_00ab: ldloc.s      index_V_7
      IL_00ad: ldc.i4.1
      IL_00ae: add
      IL_00af: stloc.s      index_V_7

      // [23 27 - 23 49]
      IL_00b1: ldloc.s      index_V_7
      IL_00b3: ldloc.2      // yLabels
      IL_00b4: ldlen
      IL_00b5: conv.i4
      IL_00b6: blt.s        IL_009a
    // end of loop

    // [25 7 - 25 77]
    IL_00b8: ldstr        "Тепловая карта имен"
    IL_00bd: ldloc.0      // heat
    IL_00be: ldloc.1      // xLabels
    IL_00bf: ldloc.2      // yLabels
    IL_00c0: newobj       instance void Names.HeatmapData::.ctor(string, float64[0...,0...], string[], string[])
    IL_00c5: ret

  } // end of method HeatmapTask::GetBirthsPerDateHeatmap
} // end of class Names.HeatmapTask

// Type: Names.HistogramTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 9EEDD0D3-8723-4CCE-816B-18C17282E37D
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\03_release_mycompiler.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  Names.HistogramTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static class Names.HistogramData
    GetBirthsPerDayHistogram(
      class Names.NameData[] names,
      string name
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64[] yValues,
      [1] string[] xLabels,
      [2] class Names.NameData[] V_2,
      [3] int32 V_3,
      [4] class Names.NameData name1,
      [5] int32 index
    )

    // [13 7 - 13 40]
    IL_0000: ldc.i4.s     31 // 0x1f
    IL_0002: newarr       [mscorlib]System.Double
    IL_0007: stloc.0      // yValues

    // [14 34 - 14 39]
    IL_0008: ldarg.0      // names
    IL_0009: stloc.2      // V_2

    IL_000a: ldc.i4.0
    IL_000b: stloc.3      // V_3
    IL_000c: br.s         IL_0047
    // start of loop, entry point: IL_0047

      // [14 16 - 14 30]
      IL_000e: ldloc.2      // V_2
      IL_000f: ldloc.3      // V_3
      IL_0010: ldelem.ref
      IL_0011: stloc.s      name1

      // [16 9 - 16 32]
      IL_0013: ldloc.s      name1
      IL_0015: ldfld        string Names.NameData::Name
      IL_001a: ldarg.1      // name
      IL_001b: call         bool [mscorlib]System.String::op_Equality(string, string)
      IL_0020: brfalse.s    IL_0043

      // [17 11 - 17 45]
      IL_0022: ldloc.0      // yValues
      IL_0023: ldloc.s      name1
      IL_0025: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_002a: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_002f: ldc.i4.1
      IL_0030: sub
      IL_0031: ldelema      [mscorlib]System.Double
      IL_0036: dup

      IL_0037: ldind.r8
      IL_0038: ldc.r8       1
      IL_0041: add
      IL_0042: stind.r8
      IL_0043: ldloc.3      // V_3
      IL_0044: ldc.i4.1
      IL_0045: add
      IL_0046: stloc.3      // V_3
      IL_0047: ldloc.3      // V_3
      IL_0048: ldloc.2      // V_2
      IL_0049: ldlen
      IL_004a: conv.i4
      IL_004b: blt.s        IL_000e
    // end of loop

    // [19 7 - 19 40]
    IL_004d: ldc.i4.s     31 // 0x1f
    IL_004f: newarr       [mscorlib]System.String
    IL_0054: stloc.1      // xLabels

    // [20 12 - 20 25]
    IL_0055: ldc.i4.0
    IL_0056: stloc.s      index

    IL_0058: br.s         IL_0070
    // start of loop, entry point: IL_0070

      // [21 9 - 21 48]
      IL_005a: ldloc.1      // xLabels
      IL_005b: ldloc.s      index
      IL_005d: ldloc.s      index
      IL_005f: ldc.i4.1
      IL_0060: add
      IL_0061: stloc.3      // V_3
      IL_0062: ldloca.s     V_3
      IL_0064: call         instance string [mscorlib]System.Int32::ToString()
      IL_0069: stelem.ref

      // [20 51 - 20 58]
      IL_006a: ldloc.s      index
      IL_006c: ldc.i4.1
      IL_006d: add
      IL_006e: stloc.s      index

      // [20 27 - 20 49]
      IL_0070: ldloc.s      index
      IL_0072: ldloc.1      // xLabels
      IL_0073: ldlen
      IL_0074: conv.i4
      IL_0075: blt.s        IL_005a
    // end of loop

    // [22 7 - 22 116]
    IL_0077: ldstr        "Рождаемость людей с именем '{0}'"
    IL_007c: ldarg.1      // name
    IL_007d: call         string [mscorlib]System.String::Format(string, object)
    IL_0082: ldloc.1      // xLabels
    IL_0083: ldloc.0      // yValues
    IL_0084: newobj       instance void Names.HistogramData::.ctor(string, string[], float64[])
    IL_0089: ret

  } // end of method HistogramTask::GetBirthsPerDayHistogram
} // end of class Names.HistogramTask
