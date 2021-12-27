// Type: Names.HeatmapTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: FF1ED076-8946-4B10-8E67-DDEAB0F30982
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\02_debug_mycompiler.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  Names.HeatmapTask
    extends [mscorlib]System.Object
{

  .field private static literal int32 value1 = int32(30) // 0x0000001e

  .field private static literal int32 value2 = int32(12) // 0x0000000c

  .method public hidebysig static string[]
    GetDayNumber(
      class Names.NameData[] names
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] string[] dayNumber,
      [1] int32 index,
      [2] int32 V_2,
      [3] bool V_3,
      [4] string[] V_4
    )

    IL_0000: nop

    // [16 7 - 16 42]
    IL_0001: ldc.i4.s     30 // 0x1e
    IL_0003: newarr       [mscorlib]System.String
    IL_0008: stloc.0      // dayNumber

    // [17 12 - 17 25]
    IL_0009: ldc.i4.0
    IL_000a: stloc.1      // index

    IL_000b: br.s         IL_001f
    // start of loop, entry point: IL_001f

      // [18 9 - 18 50]
      IL_000d: ldloc.0      // dayNumber
      IL_000e: ldloc.1      // index
      IL_000f: ldloc.1      // index
      IL_0010: ldc.i4.2
      IL_0011: add
      IL_0012: stloc.2      // V_2
      IL_0013: ldloca.s     V_2
      IL_0015: call         instance string [mscorlib]System.Int32::ToString()
      IL_001a: stelem.ref

      // [17 39 - 17 46]
      IL_001b: ldloc.1      // index
      IL_001c: ldc.i4.1
      IL_001d: add
      IL_001e: stloc.1      // index

      // [17 27 - 17 37]
      IL_001f: ldloc.1      // index
      IL_0020: ldc.i4.s     30 // 0x1e
      IL_0022: clt
      IL_0024: stloc.3      // V_3

      IL_0025: ldloc.3      // V_3
      IL_0026: brtrue.s     IL_000d
    // end of loop

    // [19 7 - 19 24]
    IL_0028: ldloc.0      // dayNumber
    IL_0029: stloc.s      V_4
    IL_002b: br.s         IL_002d
    IL_002d: ldloc.s      V_4
    IL_002f: ret

  } // end of method HeatmapTask::GetDayNumber

  .method public hidebysig static string[]
    GetNumberM(
      class Names.NameData[] names
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] string[] numberM,
      [1] int32 index,
      [2] int32 V_2,
      [3] bool V_3,
      [4] string[] V_4
    )

    IL_0000: nop

    // [24 7 - 24 40]
    IL_0001: ldc.i4.s     12 // 0x0c
    IL_0003: newarr       [mscorlib]System.String
    IL_0008: stloc.0      // numberM

    // [25 12 - 25 25]
    IL_0009: ldc.i4.0
    IL_000a: stloc.1      // index

    IL_000b: br.s         IL_001f
    // start of loop, entry point: IL_001f

      // [26 9 - 26 48]
      IL_000d: ldloc.0      // numberM
      IL_000e: ldloc.1      // index
      IL_000f: ldloc.1      // index
      IL_0010: ldc.i4.1
      IL_0011: add
      IL_0012: stloc.2      // V_2
      IL_0013: ldloca.s     V_2
      IL_0015: call         instance string [mscorlib]System.Int32::ToString()
      IL_001a: stelem.ref

      // [25 39 - 25 46]
      IL_001b: ldloc.1      // index
      IL_001c: ldc.i4.1
      IL_001d: add
      IL_001e: stloc.1      // index

      // [25 27 - 25 37]
      IL_001f: ldloc.1      // index
      IL_0020: ldc.i4.s     12 // 0x0c
      IL_0022: clt
      IL_0024: stloc.3      // V_3

      IL_0025: ldloc.3      // V_3
      IL_0026: brtrue.s     IL_000d
    // end of loop

    // [27 7 - 27 22]
    IL_0028: ldloc.0      // numberM
    IL_0029: stloc.s      V_4
    IL_002b: br.s         IL_002d
    IL_002d: ldloc.s      V_4
    IL_002f: ret

  } // end of method HeatmapTask::GetNumberM

  .method public hidebysig static class Names.HeatmapData
    GetBirthsPerDateHeatmap(
      class Names.NameData[] names
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64[0...,0...] heat,
      [1] string[] dayNumber,
      [2] string[] numberM,
      [3] class Names.NameData[] V_3,
      [4] int32 V_4,
      [5] class Names.NameData name,
      [6] bool V_6,
      [7] class Names.HeatmapData V_7
    )

    IL_0000: nop

    // [32 7 - 32 42]
    IL_0001: ldc.i4.s     30 // 0x1e
    IL_0003: ldc.i4.s     12 // 0x0c
    IL_0005: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_000a: stloc.0      // heat

    // [33 7 - 33 59]
    IL_000b: ldarg.0      // names
    IL_000c: call         string[] Names.HeatmapTask::GetDayNumber(class Names.NameData[])
    IL_0011: stloc.1      // dayNumber

    // [34 7 - 34 55]
    IL_0012: ldarg.0      // names
    IL_0013: call         string[] Names.HeatmapTask::GetNumberM(class Names.NameData[])
    IL_0018: stloc.2      // numberM
    IL_0019: nop

    // [35 33 - 35 38]
    IL_001a: ldarg.0      // names
    IL_001b: stloc.3      // V_3

    IL_001c: ldc.i4.0
    IL_001d: stloc.s      V_4
    IL_001f: br.s         IL_0074
    // start of loop, entry point: IL_0074

      // [35 16 - 35 29]
      IL_0021: ldloc.3      // V_3
      IL_0022: ldloc.s      V_4
      IL_0024: ldelem.ref
      IL_0025: stloc.s      name

      // [37 9 - 37 37]
      IL_0027: ldloc.s      name
      IL_0029: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_002e: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0033: ldc.i4.1
      IL_0034: ceq
      IL_0036: ldc.i4.0
      IL_0037: ceq
      IL_0039: stloc.s      V_6

      IL_003b: ldloc.s      V_6
      IL_003d: brfalse.s    IL_006e

      // [38 11 - 38 67]
      IL_003f: ldloc.0      // heat
      IL_0040: ldloc.s      name
      IL_0042: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0047: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_004c: ldc.i4.2
      IL_004d: sub
      IL_004e: ldloc.s      name
      IL_0050: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0055: call         instance int32 [mscorlib]System.DateTime::get_Month()
      IL_005a: ldc.i4.1
      IL_005b: sub
      IL_005c: call         instance float64& float64[0...,0...]::Address(int32, int32)
      IL_0061: dup

      IL_0062: ldind.r8
      IL_0063: ldc.r8       1
      IL_006c: add
      IL_006d: stind.r8
      IL_006e: ldloc.s      V_4
      IL_0070: ldc.i4.1
      IL_0071: add
      IL_0072: stloc.s      V_4
      IL_0074: ldloc.s      V_4
      IL_0076: ldloc.3      // V_3
      IL_0077: ldlen
      IL_0078: conv.i4
      IL_0079: blt.s        IL_0021
    // end of loop

    // [40 7 - 40 87]
    IL_007b: ldstr        "Пример карты интенсивностей"
    IL_0080: ldloc.0      // heat
    IL_0081: ldloc.1      // dayNumber
    IL_0082: ldloc.2      // numberM
    IL_0083: newobj       instance void Names.HeatmapData::.ctor(string, float64[0...,0...], string[], string[])
    IL_0088: stloc.s      V_7
    IL_008a: br.s         IL_008c
    IL_008c: ldloc.s      V_7
    IL_008e: ret

  } // end of method HeatmapTask::GetBirthsPerDateHeatmap
} // end of class Names.HeatmapTask

// Type: Names.HistogramTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: FF1ED076-8946-4B10-8E67-DDEAB0F30982
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\02_debug_mycompiler.exe
// Sequence point data from decompiler

.class private abstract sealed auto ansi beforefieldinit
  Names.HistogramTask
    extends [mscorlib]System.Object
{

  .field private static literal int32 last = int32(31) // 0x0000001f

  .method public hidebysig static class Names.HistogramData
    GetBirthsPerDayHistogram(
      class Names.NameData[] names,
      string name
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] string[] xLabels,
      [1] float64[] yValues,
      [2] int32 index,
      [3] int32 V_3,
      [4] bool V_4,
      [5] class Names.NameData[] V_5,
      [6] int32 V_6,
      [7] class Names.NameData name1,
      [8] bool V_8,
      [9] class Names.HistogramData V_9
    )

    IL_0000: nop

    // [15 7 - 15 40]
    IL_0001: ldc.i4.s     31 // 0x1f
    IL_0003: newarr       [mscorlib]System.String
    IL_0008: stloc.0      // xLabels

    // [16 12 - 16 25]
    IL_0009: ldc.i4.0
    IL_000a: stloc.2      // index

    IL_000b: br.s         IL_0021
    // start of loop, entry point: IL_0021
      IL_000d: nop

      // [17 9 - 17 48]
      IL_000e: ldloc.0      // xLabels
      IL_000f: ldloc.2      // index
      IL_0010: ldloc.2      // index
      IL_0011: ldc.i4.1
      IL_0012: add
      IL_0013: stloc.3      // V_3
      IL_0014: ldloca.s     V_3
      IL_0016: call         instance string [mscorlib]System.Int32::ToString()
      IL_001b: stelem.ref
      IL_001c: nop

      // [16 51 - 16 58]
      IL_001d: ldloc.2      // index
      IL_001e: ldc.i4.1
      IL_001f: add
      IL_0020: stloc.2      // index

      // [16 27 - 16 49]
      IL_0021: ldloc.2      // index
      IL_0022: ldloc.0      // xLabels
      IL_0023: ldlen
      IL_0024: conv.i4
      IL_0025: clt
      IL_0027: stloc.s      V_4

      IL_0029: ldloc.s      V_4
      IL_002b: brtrue.s     IL_000d
    // end of loop

    // [18 7 - 18 40]
    IL_002d: ldc.i4.s     31 // 0x1f
    IL_002f: newarr       [mscorlib]System.Double
    IL_0034: stloc.1      // yValues
    IL_0035: nop

    // [19 34 - 19 39]
    IL_0036: ldarg.0      // names
    IL_0037: stloc.s      V_5

    IL_0039: ldc.i4.0
    IL_003a: stloc.s      V_6
    IL_003c: br.s         IL_0098
    // start of loop, entry point: IL_0098

      // [19 16 - 19 30]
      IL_003e: ldloc.s      V_5
      IL_0040: ldloc.s      V_6
      IL_0042: ldelem.ref
      IL_0043: stloc.s      name1
      IL_0045: nop

      // [21 9 - 21 60]
      IL_0046: ldloc.s      name1
      IL_0048: ldfld        string Names.NameData::Name
      IL_004d: ldarg.1      // name
      IL_004e: call         bool [mscorlib]System.String::op_Equality(string, string)
      IL_0053: brfalse.s    IL_0069

      IL_0055: ldloc.s      name1
      IL_0057: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_005c: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0061: ldc.i4.1
      IL_0062: ceq
      IL_0064: ldc.i4.0
      IL_0065: ceq
      IL_0067: br.s         IL_006a
      IL_0069: ldc.i4.0
      IL_006a: stloc.s      V_8
      IL_006c: ldloc.s      V_8
      IL_006e: brfalse.s    IL_0091

      // [22 11 - 22 45]
      IL_0070: ldloc.1      // yValues
      IL_0071: ldloc.s      name1
      IL_0073: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0078: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_007d: ldc.i4.1
      IL_007e: sub
      IL_007f: ldelema      [mscorlib]System.Double
      IL_0084: dup

      IL_0085: ldind.r8
      IL_0086: ldc.r8       1
      IL_008f: add
      IL_0090: stind.r8
      IL_0091: nop
      IL_0092: ldloc.s      V_6
      IL_0094: ldc.i4.1
      IL_0095: add
      IL_0096: stloc.s      V_6
      IL_0098: ldloc.s      V_6
      IL_009a: ldloc.s      V_5
      IL_009c: ldlen
      IL_009d: conv.i4
      IL_009e: blt.s        IL_003e
    // end of loop

    // [24 7 - 24 116]
    IL_00a0: ldstr        "Рождаемость людей с именем '{0}'"
    IL_00a5: ldarg.1      // name
    IL_00a6: call         string [mscorlib]System.String::Format(string, object)
    IL_00ab: ldloc.0      // xLabels
    IL_00ac: ldloc.1      // yValues
    IL_00ad: newobj       instance void Names.HistogramData::.ctor(string, string[], float64[])
    IL_00b2: stloc.s      V_9
    IL_00b4: br.s         IL_00b6
    IL_00b6: ldloc.s      V_9
    IL_00b8: ret

  } // end of method HistogramTask::GetBirthsPerDayHistogram
} // end of class Names.HistogramTask
