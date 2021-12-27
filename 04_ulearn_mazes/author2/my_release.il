// Type: Mazes.DiagonalMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D00D8330-D235-47B5-B630-744CB156E7F9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_release_mycompiler.exe
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
      [0] int32 index,
      [1] int32 index_V_1
    )

    IL_0000: br.s         IL_0058
    // start of loop, entry point: IL_0058

      // [15 9 - 15 28]
      IL_0002: ldarg.1      // width
      IL_0003: ldarg.2      // height
      IL_0004: ble.s        IL_0030

      // [17 16 - 17 29]
      IL_0006: ldc.i4.0
      IL_0007: stloc.0      // index

      IL_0008: br.s         IL_0015
      // start of loop, entry point: IL_0015

        // [18 13 - 18 42]
        IL_000a: ldarg.0      // robot
        IL_000b: ldc.i4.3
        IL_000c: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

        // [17 67 - 17 74]
        IL_0011: ldloc.0      // index
        IL_0012: ldc.i4.1
        IL_0013: add
        IL_0014: stloc.0      // index

        // [17 31 - 17 65]
        IL_0015: ldloc.0      // index
        IL_0016: ldarg.1      // width
        IL_0017: ldc.i4.2
        IL_0018: sub
        IL_0019: ldarg.2      // height
        IL_001a: ldc.i4.2
        IL_001b: sub
        IL_001c: div
        IL_001d: blt.s        IL_000a
      // end of loop

      // [19 11 - 19 31]
      IL_001f: ldarg.0      // robot
      IL_0020: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0025: brtrue.s     IL_0058

      // [20 13 - 20 41]
      IL_0027: ldarg.0      // robot
      IL_0028: ldc.i4.1
      IL_0029: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      IL_002e: br.s         IL_0058

      // [24 16 - 24 29]
      IL_0030: ldc.i4.0
      IL_0031: stloc.1      // index_V_1

      IL_0032: br.s         IL_003f
      // start of loop, entry point: IL_003f

        // [25 13 - 25 41]
        IL_0034: ldarg.0      // robot
        IL_0035: ldc.i4.1
        IL_0036: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

        // [24 67 - 24 74]
        IL_003b: ldloc.1      // index_V_1
        IL_003c: ldc.i4.1
        IL_003d: add
        IL_003e: stloc.1      // index_V_1

        // [24 31 - 24 65]
        IL_003f: ldloc.1      // index_V_1
        IL_0040: ldarg.2      // height
        IL_0041: ldc.i4.2
        IL_0042: sub
        IL_0043: ldarg.1      // width
        IL_0044: ldc.i4.2
        IL_0045: sub
        IL_0046: div
        IL_0047: blt.s        IL_0034
      // end of loop

      // [26 11 - 26 31]
      IL_0049: ldarg.0      // robot
      IL_004a: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_004f: brtrue.s     IL_0058

      // [27 13 - 27 42]
      IL_0051: ldarg.0      // robot
      IL_0052: ldc.i4.3
      IL_0053: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 7 - 13 30]
      IL_0058: ldarg.0      // robot
      IL_0059: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_005e: brfalse.s    IL_0002
    // end of loop
    IL_0060: ret

  } // end of method DiagonalMazeTask::MoveOut
} // end of class Mazes.DiagonalMazeTask

// Type: Mazes.EmptyMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D00D8330-D235-47B5-B630-744CB156E7F9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_release_mycompiler.exe
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
      [0] int32 index
    )

    // [13 12 - 13 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_000f
    // start of loop, entry point: IL_000f

      // [14 9 - 14 37]
      IL_0004: ldarg.0      // robot
      IL_0005: ldc.i4.1
      IL_0006: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 47 - 13 54]
      IL_000b: ldloc.0      // index
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.0      // index

      // [13 27 - 13 45]
      IL_000f: ldloc.0      // index
      IL_0010: ldarg.1      // height
      IL_0011: ldc.i4.3
      IL_0012: sub
      IL_0013: blt.s        IL_0004
    // end of loop
    IL_0015: ret

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
      [0] int32 index
    )

    // [19 12 - 19 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_000f
    // start of loop, entry point: IL_000f

      // [20 9 - 20 38]
      IL_0004: ldarg.0      // robot
      IL_0005: ldc.i4.3
      IL_0006: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [19 46 - 19 53]
      IL_000b: ldloc.0      // index
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.0      // index

      // [19 27 - 19 44]
      IL_000f: ldloc.0      // index
      IL_0010: ldarg.1      // width
      IL_0011: ldc.i4.3
      IL_0012: sub
      IL_0013: blt.s        IL_0004
    // end of loop

    // [21 7 - 21 44]
    IL_0015: ldarg.0      // robot
    IL_0016: ldarg.2      // height
    IL_0017: call         void Mazes.EmptyMazeTask::StepDown(class Mazes.Robot, int32)
    IL_001c: ret

  } // end of method EmptyMazeTask::MoveOut
} // end of class Mazes.EmptyMazeTask

// Type: Mazes.PyramidMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D00D8330-D235-47B5-B630-744CB156E7F9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_release_mycompiler.exe
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

    IL_0000: ret

  } // end of method PyramidMazeTask::MoveOut
} // end of class Mazes.PyramidMazeTask

// Type: Mazes.SnakeMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D00D8330-D235-47B5-B630-744CB156E7F9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\02_release_mycompiler.exe
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
      [1] int32 index_V_1,
      [2] int32 index_V_2
    )

    IL_0000: br.s         IL_0055
    // start of loop, entry point: IL_0055

      // [15 14 - 15 27]
      IL_0002: ldc.i4.0
      IL_0003: stloc.0      // index

      IL_0004: br.s         IL_0011
      // start of loop, entry point: IL_0011

        // [16 11 - 16 40]
        IL_0006: ldarg.0      // robot
        IL_0007: ldc.i4.3
        IL_0008: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

        // [15 48 - 15 55]
        IL_000d: ldloc.0      // index
        IL_000e: ldc.i4.1
        IL_000f: add
        IL_0010: stloc.0      // index

        // [15 29 - 15 46]
        IL_0011: ldloc.0      // index
        IL_0012: ldarg.1      // width
        IL_0013: ldc.i4.3
        IL_0014: sub
        IL_0015: blt.s        IL_0006
      // end of loop

      // [17 14 - 17 27]
      IL_0017: ldc.i4.0
      IL_0018: stloc.1      // index_V_1

      IL_0019: br.s         IL_0026
      // start of loop, entry point: IL_0026

        // [18 11 - 18 39]
        IL_001b: ldarg.0      // robot
        IL_001c: ldc.i4.1
        IL_001d: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

        // [17 40 - 17 47]
        IL_0022: ldloc.1      // index_V_1
        IL_0023: ldc.i4.1
        IL_0024: add
        IL_0025: stloc.1      // index_V_1

        // [17 29 - 17 38]
        IL_0026: ldloc.1      // index_V_1
        IL_0027: ldc.i4.2
        IL_0028: blt.s        IL_001b
      // end of loop

      // [19 14 - 19 27]
      IL_002a: ldc.i4.0
      IL_002b: stloc.2      // index_V_2

      IL_002c: br.s         IL_0039
      // start of loop, entry point: IL_0039

        // [20 11 - 20 39]
        IL_002e: ldarg.0      // robot
        IL_002f: ldc.i4.2
        IL_0030: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

        // [19 48 - 19 55]
        IL_0035: ldloc.2      // index_V_2
        IL_0036: ldc.i4.1
        IL_0037: add
        IL_0038: stloc.2      // index_V_2

        // [19 29 - 19 46]
        IL_0039: ldloc.2      // index_V_2
        IL_003a: ldarg.1      // width
        IL_003b: ldc.i4.3
        IL_003c: sub
        IL_003d: blt.s        IL_002e
      // end of loop

      // [21 9 - 21 29]
      IL_003f: ldarg.0      // robot
      IL_0040: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0045: brtrue.s     IL_0055

      // [23 11 - 23 39]
      IL_0047: ldarg.0      // robot
      IL_0048: ldc.i4.1
      IL_0049: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [24 11 - 24 39]
      IL_004e: ldarg.0      // robot
      IL_004f: ldc.i4.1
      IL_0050: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 7 - 13 30]
      IL_0055: ldarg.0      // robot
      IL_0056: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_005b: brfalse.s    IL_0002
    // end of loop
    IL_005d: ret

  } // end of method SnakeMazeTask::MoveOut
} // end of class Mazes.SnakeMazeTask
