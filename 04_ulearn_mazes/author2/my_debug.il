// Type: Mazes.DiagonalMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 553E82F3-F393-47EB-A50F-2164F68E53D8
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.DiagonalMazeTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] bool V_0,
      [1] int32 index,
      [2] bool V_2,
      [3] bool V_3,
      [4] int32 index_V_4,
      [5] bool V_5,
      [6] bool V_6,
      [7] bool V_7
    )

    IL_0000: nop

    IL_0001: br.s         IL_0081
    // start of loop, entry point: IL_0081
      IL_0003: nop

      // [15 9 - 15 28]
      IL_0004: ldarg.1      // width
      IL_0005: ldarg.2      // height
      IL_0006: cgt
      IL_0008: stloc.0      // V_0

      IL_0009: ldloc.0      // V_0
      IL_000a: brfalse.s    IL_0043
      IL_000c: nop

      // [17 16 - 17 29]
      IL_000d: ldc.i4.0
      IL_000e: stloc.1      // index

      IL_000f: br.s         IL_001d
      // start of loop, entry point: IL_001d

        // [18 13 - 18 42]
        IL_0011: ldarg.0      // robot
        IL_0012: ldc.i4.3
        IL_0013: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
        IL_0018: nop

        // [17 67 - 17 74]
        IL_0019: ldloc.1      // index
        IL_001a: ldc.i4.1
        IL_001b: add
        IL_001c: stloc.1      // index

        // [17 31 - 17 65]
        IL_001d: ldloc.1      // index
        IL_001e: ldarg.1      // width
        IL_001f: ldc.i4.2
        IL_0020: sub
        IL_0021: ldarg.2      // height
        IL_0022: ldc.i4.2
        IL_0023: sub
        IL_0024: div
        IL_0025: clt
        IL_0027: stloc.2      // V_2

        IL_0028: ldloc.2      // V_2
        IL_0029: brtrue.s     IL_0011
      // end of loop

      // [19 11 - 19 31]
      IL_002b: ldarg.0      // robot
      IL_002c: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0031: ldc.i4.0
      IL_0032: ceq
      IL_0034: stloc.3      // V_3

      IL_0035: ldloc.3      // V_3
      IL_0036: brfalse.s    IL_0040

      // [20 13 - 20 41]
      IL_0038: ldarg.0      // robot
      IL_0039: ldc.i4.1
      IL_003a: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_003f: nop
      IL_0040: nop

      IL_0041: br.s         IL_0080
      IL_0043: nop

      // [24 16 - 24 29]
      IL_0044: ldc.i4.0
      IL_0045: stloc.s      index_V_4

      IL_0047: br.s         IL_0057
      // start of loop, entry point: IL_0057

        // [25 13 - 25 41]
        IL_0049: ldarg.0      // robot
        IL_004a: ldc.i4.1
        IL_004b: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
        IL_0050: nop

        // [24 67 - 24 74]
        IL_0051: ldloc.s      index_V_4
        IL_0053: ldc.i4.1
        IL_0054: add
        IL_0055: stloc.s      index_V_4

        // [24 31 - 24 65]
        IL_0057: ldloc.s      index_V_4
        IL_0059: ldarg.2      // height
        IL_005a: ldc.i4.2
        IL_005b: sub
        IL_005c: ldarg.1      // width
        IL_005d: ldc.i4.2
        IL_005e: sub
        IL_005f: div
        IL_0060: clt
        IL_0062: stloc.s      V_5

        IL_0064: ldloc.s      V_5
        IL_0066: brtrue.s     IL_0049
      // end of loop

      // [26 11 - 26 31]
      IL_0068: ldarg.0      // robot
      IL_0069: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_006e: ldc.i4.0
      IL_006f: ceq
      IL_0071: stloc.s      V_6

      IL_0073: ldloc.s      V_6
      IL_0075: brfalse.s    IL_007f

      // [27 13 - 27 42]
      IL_0077: ldarg.0      // robot
      IL_0078: ldc.i4.3
      IL_0079: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_007e: nop
      IL_007f: nop
      IL_0080: nop

      // [13 7 - 13 30]
      IL_0081: ldarg.0      // robot
      IL_0082: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0087: ldc.i4.0
      IL_0088: ceq
      IL_008a: stloc.s      V_7

      IL_008c: ldloc.s      V_7
      IL_008e: brtrue       IL_0003
    // end of loop
    IL_0093: ret

  } // end of method DiagonalMazeTask::MoveOut
} // end of class Mazes.DiagonalMazeTask

// Type: Mazes.EmptyMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 553E82F3-F393-47EB-A50F-2164F68E53D8
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.EmptyMazeTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static void
    StepDown(
      class Mazes.Robot robot,
      int32 height
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 index,
      [1] bool V_1
    )

    IL_0000: nop

    // [13 12 - 13 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0013
    // start of loop, entry point: IL_0013
      IL_0005: nop

      // [14 9 - 14 37]
      IL_0006: ldarg.0      // robot
      IL_0007: ldc.i4.1
      IL_0008: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000d: nop
      IL_000e: nop

      // [13 47 - 13 54]
      IL_000f: ldloc.0      // index
      IL_0010: ldc.i4.1
      IL_0011: add
      IL_0012: stloc.0      // index

      // [13 27 - 13 45]
      IL_0013: ldloc.0      // index
      IL_0014: ldarg.1      // height
      IL_0015: ldc.i4.3
      IL_0016: sub
      IL_0017: clt
      IL_0019: stloc.1      // V_1

      IL_001a: ldloc.1      // V_1
      IL_001b: brtrue.s     IL_0005
    // end of loop
    IL_001d: ret

  } // end of method EmptyMazeTask::StepDown

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 index,
      [1] bool V_1
    )

    IL_0000: nop

    // [19 12 - 19 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0013
    // start of loop, entry point: IL_0013
      IL_0005: nop

      // [20 9 - 20 38]
      IL_0006: ldarg.0      // robot
      IL_0007: ldc.i4.3
      IL_0008: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000d: nop
      IL_000e: nop

      // [19 46 - 19 53]
      IL_000f: ldloc.0      // index
      IL_0010: ldc.i4.1
      IL_0011: add
      IL_0012: stloc.0      // index

      // [19 27 - 19 44]
      IL_0013: ldloc.0      // index
      IL_0014: ldarg.1      // width
      IL_0015: ldc.i4.3
      IL_0016: sub
      IL_0017: clt
      IL_0019: stloc.1      // V_1

      IL_001a: ldloc.1      // V_1
      IL_001b: brtrue.s     IL_0005
    // end of loop

    // [21 7 - 21 44]
    IL_001d: ldarg.0      // robot
    IL_001e: ldarg.2      // height
    IL_001f: call         void Mazes.EmptyMazeTask::StepDown(class Mazes.Robot, int32)
    IL_0024: nop
    IL_0025: ret

  } // end of method EmptyMazeTask::MoveOut
} // end of class Mazes.EmptyMazeTask

// Type: Mazes.PyramidMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 553E82F3-F393-47EB-A50F-2164F68E53D8
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.PyramidMazeTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    IL_0000: nop
    IL_0001: ret

  } // end of method PyramidMazeTask::MoveOut
} // end of class Mazes.PyramidMazeTask

// Type: Mazes.SnakeMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 553E82F3-F393-47EB-A50F-2164F68E53D8
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_debug_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.SnakeMazeTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 index,
      [1] bool V_1,
      [2] int32 index_V_2,
      [3] bool V_3,
      [4] int32 index_V_4,
      [5] bool V_5,
      [6] bool V_6,
      [7] bool V_7
    )

    IL_0000: nop

    IL_0001: br.s         IL_0082
    // start of loop, entry point: IL_0082
      IL_0003: nop

      // [15 14 - 15 27]
      IL_0004: ldc.i4.0
      IL_0005: stloc.0      // index

      IL_0006: br.s         IL_0016
      // start of loop, entry point: IL_0016
        IL_0008: nop

        // [16 11 - 16 40]
        IL_0009: ldarg.0      // robot
        IL_000a: ldc.i4.3
        IL_000b: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
        IL_0010: nop
        IL_0011: nop

        // [15 48 - 15 55]
        IL_0012: ldloc.0      // index
        IL_0013: ldc.i4.1
        IL_0014: add
        IL_0015: stloc.0      // index

        // [15 29 - 15 46]
        IL_0016: ldloc.0      // index
        IL_0017: ldarg.1      // width
        IL_0018: ldc.i4.3
        IL_0019: sub
        IL_001a: clt
        IL_001c: stloc.1      // V_1

        IL_001d: ldloc.1      // V_1
        IL_001e: brtrue.s     IL_0008
      // end of loop

      // [17 14 - 17 27]
      IL_0020: ldc.i4.0
      IL_0021: stloc.2      // index_V_2

      IL_0022: br.s         IL_0032
      // start of loop, entry point: IL_0032
        IL_0024: nop

        // [18 11 - 18 39]
        IL_0025: ldarg.0      // robot
        IL_0026: ldc.i4.1
        IL_0027: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
        IL_002c: nop
        IL_002d: nop

        // [17 40 - 17 47]
        IL_002e: ldloc.2      // index_V_2
        IL_002f: ldc.i4.1
        IL_0030: add
        IL_0031: stloc.2      // index_V_2

        // [17 29 - 17 38]
        IL_0032: ldloc.2      // index_V_2
        IL_0033: ldc.i4.2
        IL_0034: clt
        IL_0036: stloc.3      // V_3

        IL_0037: ldloc.3      // V_3
        IL_0038: brtrue.s     IL_0024
      // end of loop

      // [19 14 - 19 27]
      IL_003a: ldc.i4.0
      IL_003b: stloc.s      index_V_4

      IL_003d: br.s         IL_004f
      // start of loop, entry point: IL_004f
        IL_003f: nop

        // [20 11 - 20 39]
        IL_0040: ldarg.0      // robot
        IL_0041: ldc.i4.2
        IL_0042: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
        IL_0047: nop
        IL_0048: nop

        // [19 48 - 19 55]
        IL_0049: ldloc.s      index_V_4
        IL_004b: ldc.i4.1
        IL_004c: add
        IL_004d: stloc.s      index_V_4

        // [19 29 - 19 46]
        IL_004f: ldloc.s      index_V_4
        IL_0051: ldarg.1      // width
        IL_0052: ldc.i4.3
        IL_0053: sub
        IL_0054: clt
        IL_0056: stloc.s      V_5

        IL_0058: ldloc.s      V_5
        IL_005a: brtrue.s     IL_003f
      // end of loop

      // [21 9 - 21 29]
      IL_005c: ldarg.0      // robot
      IL_005d: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0062: ldc.i4.0
      IL_0063: ceq
      IL_0065: stloc.s      V_6

      IL_0067: ldloc.s      V_6
      IL_0069: brfalse.s    IL_0081
      IL_006b: nop
      IL_006c: nop

      // [23 11 - 23 39]
      IL_006d: ldarg.0      // robot
      IL_006e: ldc.i4.1
      IL_006f: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_0074: nop
      IL_0075: nop
      IL_0076: nop

      // [24 11 - 24 39]
      IL_0077: ldarg.0      // robot
      IL_0078: ldc.i4.1
      IL_0079: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_007e: nop
      IL_007f: nop
      IL_0080: nop
      IL_0081: nop

      // [13 7 - 13 30]
      IL_0082: ldarg.0      // robot
      IL_0083: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0088: ldc.i4.0
      IL_0089: ceq
      IL_008b: stloc.s      V_7

      IL_008d: ldloc.s      V_7
      IL_008f: brtrue       IL_0003
    // end of loop
    IL_0094: ret

  } // end of method SnakeMazeTask::MoveOut
} // end of class Mazes.SnakeMazeTask
