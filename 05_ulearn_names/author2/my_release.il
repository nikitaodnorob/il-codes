// Type: Names.HeatmapTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B6FF737E-E64E-4067-A562-5DBE74A8BBB0
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\02_release_mycompiler.exe
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
      [2] int32 V_2
    )

    // [16 7 - 16 42]
    IL_0000: ldc.i4.s     30 // 0x1e
    IL_0002: newarr       [mscorlib]System.String
    IL_0007: stloc.0      // dayNumber

    // [17 12 - 17 25]
    IL_0008: ldc.i4.0
    IL_0009: stloc.1      // index

    IL_000a: br.s         IL_001e
    // start of loop, entry point: IL_001e

      // [18 9 - 18 50]
      IL_000c: ldloc.0      // dayNumber
      IL_000d: ldloc.1      // index
      IL_000e: ldloc.1      // index
      IL_000f: ldc.i4.2
      IL_0010: add
      IL_0011: stloc.2      // V_2
      IL_0012: ldloca.s     V_2
      IL_0014: call         instance string [mscorlib]System.Int32::ToString()
      IL_0019: stelem.ref

      // [17 39 - 17 46]
      IL_001a: ldloc.1      // index
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.1      // index

      // [17 27 - 17 37]
      IL_001e: ldloc.1      // index
      IL_001f: ldc.i4.s     30 // 0x1e
      IL_0021: blt.s        IL_000c
    // end of loop

    // [19 7 - 19 24]
    IL_0023: ldloc.0      // dayNumber
    IL_0024: ret

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
      [2] int32 V_2
    )

    // [24 7 - 24 40]
    IL_0000: ldc.i4.s     12 // 0x0c
    IL_0002: newarr       [mscorlib]System.String
    IL_0007: stloc.0      // numberM

    // [25 12 - 25 25]
    IL_0008: ldc.i4.0
    IL_0009: stloc.1      // index

    IL_000a: br.s         IL_001e
    // start of loop, entry point: IL_001e

      // [26 9 - 26 48]
      IL_000c: ldloc.0      // numberM
      IL_000d: ldloc.1      // index
      IL_000e: ldloc.1      // index
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.2      // V_2
      IL_0012: ldloca.s     V_2
      IL_0014: call         instance string [mscorlib]System.Int32::ToString()
      IL_0019: stelem.ref

      // [25 39 - 25 46]
      IL_001a: ldloc.1      // index
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.1      // index

      // [25 27 - 25 37]
      IL_001e: ldloc.1      // index
      IL_001f: ldc.i4.s     12 // 0x0c
      IL_0021: blt.s        IL_000c
    // end of loop

    // [27 7 - 27 22]
    IL_0023: ldloc.0      // numberM
    IL_0024: ret

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
      [5] class Names.NameData name
    )

    // [32 7 - 32 42]
    IL_0000: ldc.i4.s     30 // 0x1e
    IL_0002: ldc.i4.s     12 // 0x0c
    IL_0004: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0009: stloc.0      // heat

    // [33 7 - 33 59]
    IL_000a: ldarg.0      // names
    IL_000b: call         string[] Names.HeatmapTask::GetDayNumber(class Names.NameData[])
    IL_0010: stloc.1      // dayNumber

    // [34 7 - 34 55]
    IL_0011: ldarg.0      // names
    IL_0012: call         string[] Names.HeatmapTask::GetNumberM(class Names.NameData[])
    IL_0017: stloc.2      // numberM

    // [35 33 - 35 38]
    IL_0018: ldarg.0      // names
    IL_0019: stloc.3      // V_3

    IL_001a: ldc.i4.0
    IL_001b: stloc.s      V_4
    IL_001d: br.s         IL_0069
    // start of loop, entry point: IL_0069

      // [35 16 - 35 29]
      IL_001f: ldloc.3      // V_3
      IL_0020: ldloc.s      V_4
      IL_0022: ldelem.ref
      IL_0023: stloc.s      name

      // [37 9 - 37 37]
      IL_0025: ldloc.s      name
      IL_0027: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_002c: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0031: ldc.i4.1
      IL_0032: beq.s        IL_0063

      // [38 11 - 38 67]
      IL_0034: ldloc.0      // heat
      IL_0035: ldloc.s      name
      IL_0037: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_003c: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0041: ldc.i4.2
      IL_0042: sub
      IL_0043: ldloc.s      name
      IL_0045: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_004a: call         instance int32 [mscorlib]System.DateTime::get_Month()
      IL_004f: ldc.i4.1
      IL_0050: sub
      IL_0051: call         instance float64& float64[0...,0...]::Address(int32, int32)
      IL_0056: dup

      IL_0057: ldind.r8
      IL_0058: ldc.r8       1
      IL_0061: add
      IL_0062: stind.r8
      IL_0063: ldloc.s      V_4
      IL_0065: ldc.i4.1
      IL_0066: add
      IL_0067: stloc.s      V_4
      IL_0069: ldloc.s      V_4
      IL_006b: ldloc.3      // V_3
      IL_006c: ldlen
      IL_006d: conv.i4
      IL_006e: blt.s        IL_001f
    // end of loop

    // [40 7 - 40 87]
    IL_0070: ldstr        "Пример карты интенсивностей"
    IL_0075: ldloc.0      // heat
    IL_0076: ldloc.1      // dayNumber
    IL_0077: ldloc.2      // numberM
    IL_0078: newobj       instance void Names.HeatmapData::.ctor(string, float64[0...,0...], string[], string[])
    IL_007d: ret

  } // end of method HeatmapTask::GetBirthsPerDateHeatmap
} // end of class Names.HeatmapTask

// Type: Names.HistogramTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B6FF737E-E64E-4067-A562-5DBE74A8BBB0
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\05 names\02_release_mycompiler.exe
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
      [2] int32 index2,
      [3] int32 index1,
      [4] class Names.NameData[] nameDataArray,
      [5] class Names.NameData nameData
    )

    // [15 7 - 15 40]
    IL_0000: ldc.i4.s     31 // 0x1f
    IL_0002: newarr       [mscorlib]System.String
    IL_0007: stloc.0      // xLabels

    // [17 12 - 17 26]
    IL_0008: ldc.i4.0
    IL_0009: stloc.2      // index2

    IL_000a: br.s         IL_001e
    // start of loop, entry point: IL_001e
      IL_000c: ldloc.0      // xLabels
      IL_000d: ldloc.2      // index2
      IL_000e: ldloc.2      // index2
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.3      // index1
      IL_0012: ldloca.s     index1
      IL_0014: call         instance string [mscorlib]System.Int32::ToString()
      IL_0019: stelem.ref

      // [17 53 - 17 61]
      IL_001a: ldloc.2      // index2
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.2      // index2

      // [17 28 - 17 51]
      IL_001e: ldloc.2      // index2
      IL_001f: ldloc.0      // xLabels
      IL_0020: ldlen
      IL_0021: conv.i4
      IL_0022: blt.s        IL_000c
    // end of loop

    // [25 7 - 25 40]
    IL_0024: ldc.i4.s     31 // 0x1f
    IL_0026: newarr       [mscorlib]System.Double
    IL_002b: stloc.1      // yValues

    // [26 7 - 26 39]
    IL_002c: ldarg.0      // names
    IL_002d: stloc.s      nameDataArray

    // [27 12 - 27 22]
    IL_002f: ldc.i4.0
    IL_0030: stloc.3      // index1

    IL_0031: br.s         IL_007c
    // start of loop, entry point: IL_007c

      // [29 9 - 29 50]
      IL_0033: ldloc.s      nameDataArray
      IL_0035: ldloc.3      // index1
      IL_0036: ldelem.ref
      IL_0037: stloc.s      nameData

      // [30 9 - 30 66]
      IL_0039: ldloc.s      nameData
      IL_003b: ldfld        string Names.NameData::Name
      IL_0040: ldarg.1      // name
      IL_0041: call         bool [mscorlib]System.String::op_Equality(string, string)
      IL_0046: brfalse.s    IL_0078

      IL_0048: ldloc.s      nameData
      IL_004a: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_004f: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0054: ldc.i4.1
      IL_0055: beq.s        IL_0078

      // [31 11 - 31 48]
      IL_0057: ldloc.1      // yValues
      IL_0058: ldloc.s      nameData
      IL_005a: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_005f: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0064: ldc.i4.1
      IL_0065: sub
      IL_0066: ldelema      [mscorlib]System.Double
      IL_006b: dup
      IL_006c: ldind.r8
      IL_006d: ldc.r8       1
      IL_0076: add
      IL_0077: stind.r8

      // [27 55 - 27 63]
      IL_0078: ldloc.3      // index1
      IL_0079: ldc.i4.1
      IL_007a: add
      IL_007b: stloc.3      // index1

      // [27 24 - 27 53]
      IL_007c: ldloc.3      // index1
      IL_007d: ldloc.s      nameDataArray
      IL_007f: ldlen
      IL_0080: conv.i4
      IL_0081: blt.s        IL_0033
    // end of loop

    // [33 7 - 33 116]
    IL_0083: ldstr        "Рождаемость людей с именем '{0}'"
    IL_0088: ldarg.1      // name
    IL_0089: call         string [mscorlib]System.String::Format(string, object)
    IL_008e: ldloc.0      // xLabels
    IL_008f: ldloc.1      // yValues
    IL_0090: newobj       instance void Names.HistogramData::.ctor(string, string[], float64[])
    IL_0095: ret

  } // end of method HistogramTask::GetBirthsPerDayHistogram
} // end of class Names.HistogramTask
