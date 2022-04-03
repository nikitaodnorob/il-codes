// Type: Names.HeatmapTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CE98E502-5301-4DDD-8178-84DE1EB12EBC
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\05_ulearn_names\author2-refactored\bin\Release\Names.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\05_ulearn_names\author2-refactored\bin\Release\Names.pdb

.class private abstract sealed auto ansi beforefieldinit
  Names.HeatmapTask
    extends [mscorlib]System.Object
{

  .field private static literal int32 value1 = int32(30) // 0x0000001e

  .field private static literal int32 value2 = int32(12) // 0x0000000c

  .method public hidebysig static string[]
    GetNumberM() cil managed
  {
    .maxstack 4
    .locals init (
      [0] string[] arr2,
      [1] int32 i,
      [2] int32 V_2
    )

    // [12 13 - 12 43]
    IL_0000: ldc.i4.s     12 // 0x0c
    IL_0002: newarr       [mscorlib]System.String
    IL_0007: stloc.0      // arr2

    // [13 18 - 13 27]
    IL_0008: ldc.i4.0
    IL_0009: stloc.1      // i

    IL_000a: br.s         IL_001e
    // start of loop, entry point: IL_001e

      // [14 14 - 14 43]
      IL_000c: ldloc.0      // arr2
      IL_000d: ldloc.1      // i
      IL_000e: ldloc.1      // i
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.2      // V_2
      IL_0012: ldloca.s     V_2
      IL_0014: call         instance string [mscorlib]System.Int32::ToString()
      IL_0019: stelem.ref

      // [13 41 - 13 44]
      IL_001a: ldloc.1      // i
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.1      // i

      // [13 29 - 13 39]
      IL_001e: ldloc.1      // i
      IL_001f: ldc.i4.s     12 // 0x0c
      IL_0021: blt.s        IL_000c
    // end of loop

    // [15 13 - 15 25]
    IL_0023: ldloc.0      // arr2
    IL_0024: ret

  } // end of method HeatmapTask::GetNumberM

  .method public hidebysig static string[]
    GetDayNumber() cil managed
  {
    .maxstack 4
    .locals init (
      [0] string[] arr,
      [1] int32 i,
      [2] int32 V_2
    )

    // [20 13 - 20 42]
    IL_0000: ldc.i4.s     30 // 0x1e
    IL_0002: newarr       [mscorlib]System.String
    IL_0007: stloc.0      // arr

    // [21 18 - 21 27]
    IL_0008: ldc.i4.0
    IL_0009: stloc.1      // i

    IL_000a: br.s         IL_001e
    // start of loop, entry point: IL_001e

      // [22 17 - 22 45]
      IL_000c: ldloc.0      // arr
      IL_000d: ldloc.1      // i
      IL_000e: ldloc.1      // i
      IL_000f: ldc.i4.2
      IL_0010: add
      IL_0011: stloc.2      // V_2
      IL_0012: ldloca.s     V_2
      IL_0014: call         instance string [mscorlib]System.Int32::ToString()
      IL_0019: stelem.ref

      // [21 41 - 21 44]
      IL_001a: ldloc.1      // i
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.1      // i

      // [21 29 - 21 39]
      IL_001e: ldloc.1      // i
      IL_001f: ldc.i4.s     30 // 0x1e
      IL_0021: blt.s        IL_000c
    // end of loop

    // [23 13 - 23 24]
    IL_0023: ldloc.0      // arr
    IL_0024: ret

  } // end of method HeatmapTask::GetDayNumber

  .method public hidebysig static class Names.HeatmapData
    GetBirthsPerDateHeatmap(
      class Names.NameData[] names
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] float64[0...,0...] mounthDay,
      [1] string[] day,
      [2] string[] mounth,
      [3] class Names.NameData[] V_3,
      [4] int32 V_4,
      [5] class Names.NameData name
    )

    // [28 13 - 28 62]
    IL_0000: ldc.i4.s     30 // 0x1e
    IL_0002: ldc.i4.s     12 // 0x0c
    IL_0004: newobj       instance void float64[0...,0...]::.ctor(int32, int32)
    IL_0009: stloc.0      // mounthDay

    // [29 13 - 29 43]
    IL_000a: call         string[] Names.HeatmapTask::GetDayNumber()
    IL_000f: stloc.1      // day

    // [30 13 - 30 44]
    IL_0010: call         string[] Names.HeatmapTask::GetNumberM()
    IL_0015: stloc.2      // mounth

    // [31 34 - 31 39]
    IL_0016: ldarg.0      // names
    IL_0017: stloc.3      // V_3
    IL_0018: ldc.i4.0
    IL_0019: stloc.s      V_4

    IL_001b: br.s         IL_0067
    // start of loop, entry point: IL_0067

      // [31 22 - 31 30]
      IL_001d: ldloc.3      // V_3
      IL_001e: ldloc.s      V_4
      IL_0020: ldelem.ref
      IL_0021: stloc.s      name

      // [32 17 - 32 45]
      IL_0023: ldloc.s      name
      IL_0025: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_002a: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_002f: ldc.i4.1
      IL_0030: beq.s        IL_0061

      // [33 21 - 33 83]
      IL_0032: ldloc.0      // mounthDay
      IL_0033: ldloc.s      name
      IL_0035: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_003a: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_003f: ldc.i4.2
      IL_0040: sub
      IL_0041: ldloc.s      name
      IL_0043: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_0048: call         instance int32 [mscorlib]System.DateTime::get_Month()
      IL_004d: ldc.i4.1
      IL_004e: sub
      IL_004f: call         instance float64& float64[0...,0...]::Address(int32, int32)
      IL_0054: dup
      IL_0055: ldind.r8
      IL_0056: ldc.r8       1
      IL_005f: add
      IL_0060: stind.r8

      IL_0061: ldloc.s      V_4
      IL_0063: ldc.i4.1
      IL_0064: add
      IL_0065: stloc.s      V_4

      // [31 31 - 31 33]
      IL_0067: ldloc.s      V_4
      IL_0069: ldloc.3      // V_3
      IL_006a: ldlen
      IL_006b: conv.i4
      IL_006c: blt.s        IL_001d
    // end of loop

    // [34 13 - 34 91]
    IL_006e: ldstr        "Пример карты интенсивностей"
    IL_0073: ldloc.0      // mounthDay
    IL_0074: ldloc.1      // day
    IL_0075: ldloc.2      // mounth
    IL_0076: newobj       instance void Names.HeatmapData::.ctor(string, float64[0...,0...], string[], string[])
    IL_007b: ret

  } // end of method HeatmapTask::GetBirthsPerDateHeatmap
} // end of class Names.HeatmapTask

// Type: Names.HistogramTask 
// Assembly: Names, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: CE98E502-5301-4DDD-8178-84DE1EB12EBC
// Location: D:\Windows\Desktop\MasterDiploma\MasterDiploma\05_ulearn_names\author2-refactored\bin\Release\Names.exe
// Sequence point data from D:\Windows\Desktop\MasterDiploma\MasterDiploma\05_ulearn_names\author2-refactored\bin\Release\Names.pdb

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
      [0] string[] d,
      [1] float64[] bD,
      [2] int32 i,
      [3] int32 V_3,
      [4] class Names.NameData[] V_4,
      [5] class Names.NameData val
    )

    // [10 13 - 10 38]
    IL_0000: ldc.i4.s     31 // 0x1f
    IL_0002: newarr       [mscorlib]System.String
    IL_0007: stloc.0      // d

    // [11 18 - 11 27]
    IL_0008: ldc.i4.0
    IL_0009: stloc.2      // i

    IL_000a: br.s         IL_001e
    // start of loop, entry point: IL_001e

      // [13 17 - 13 43]
      IL_000c: ldloc.0      // d
      IL_000d: ldloc.2      // i
      IL_000e: ldloc.2      // i
      IL_000f: ldc.i4.1
      IL_0010: add
      IL_0011: stloc.3      // V_3
      IL_0012: ldloca.s     V_3
      IL_0014: call         instance string [mscorlib]System.Int32::ToString()
      IL_0019: stelem.ref

      // [11 43 - 11 46]
      IL_001a: ldloc.2      // i
      IL_001b: ldc.i4.1
      IL_001c: add
      IL_001d: stloc.2      // i

      // [11 29 - 11 41]
      IL_001e: ldloc.2      // i
      IL_001f: ldloc.0      // d
      IL_0020: ldlen
      IL_0021: conv.i4
      IL_0022: blt.s        IL_000c
    // end of loop

    // [15 13 - 15 44]
    IL_0024: ldc.i4.s     31 // 0x1f
    IL_0026: newarr       [mscorlib]System.Double
    IL_002b: stloc.1      // bD

    // [16 33 - 16 38]
    IL_002c: ldarg.0      // names
    IL_002d: stloc.s      V_4
    IL_002f: ldc.i4.0
    IL_0030: stloc.3      // V_3

    IL_0031: br.s         IL_007c
    // start of loop, entry point: IL_007c

      // [16 22 - 16 29]
      IL_0033: ldloc.s      V_4
      IL_0035: ldloc.3      // V_3
      IL_0036: ldelem.ref
      IL_0037: stloc.s      val

      // [18 17 - 18 64]
      IL_0039: ldloc.s      val
      IL_003b: ldfld        string Names.NameData::Name
      IL_0040: ldarg.1      // name
      IL_0041: call         bool [mscorlib]System.String::op_Equality(string, string)
      IL_0046: brfalse.s    IL_0078
      IL_0048: ldloc.s      val
      IL_004a: ldflda       valuetype [mscorlib]System.DateTime Names.NameData::BirthDate
      IL_004f: call         instance int32 [mscorlib]System.DateTime::get_Day()
      IL_0054: ldc.i4.1
      IL_0055: beq.s        IL_0078

      // [19 21 - 19 49]
      IL_0057: ldloc.1      // bD
      IL_0058: ldloc.s      val
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

      IL_0078: ldloc.3      // V_3
      IL_0079: ldc.i4.1
      IL_007a: add
      IL_007b: stloc.3      // V_3

      // [16 30 - 16 32]
      IL_007c: ldloc.3      // V_3
      IL_007d: ldloc.s      V_4
      IL_007f: ldlen
      IL_0080: conv.i4
      IL_0081: blt.s        IL_0033
    // end of loop

    // [21 13 - 21 102]
    IL_0083: ldstr        "Рождаемость людей с именем '{0}'"
    IL_0088: ldarg.1      // name
    IL_0089: call         string [mscorlib]System.String::Format(string, object)
    IL_008e: ldloc.0      // d
    IL_008f: ldloc.1      // bD
    IL_0090: newobj       instance void Names.HistogramData::.ctor(string, string[], float64[])
    IL_0095: ret

  } // end of method HistogramTask::GetBirthsPerDayHistogram
} // end of class Names.HistogramTask
