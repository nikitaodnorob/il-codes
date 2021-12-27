// Type: Mazes.DiagonalMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 23E28FD4-AE17-47AB-B8DE-505085350BC6
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.DiagonalMazeTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static int32
    CalcStepLong(
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 V_0
    )

    // [13 63 - 13 124]
    IL_0000: ldarg.0      // width
    IL_0001: ldarg.1      // height
    IL_0002: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_0007: ldarg.0      // width
    IL_0008: ldarg.1      // height
    IL_0009: call         int32 [mscorlib]System.Math::Min(int32, int32)
    IL_000e: stloc.0      // V_0
    IL_000f: ldc.i4.3
    IL_0010: sub
    IL_0011: ldloc.0      // V_0
    IL_0012: ldc.i4.2
    IL_0013: sub
    IL_0014: div
    IL_0015: ret

  } // end of method DiagonalMazeTask::CalcStepLong

  .method private hidebysig static void
    MakeStep(
      class Mazes.Robot robot,
      int32 stepsCnt,
      valuetype Mazes.Direction startDirection
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] int32 index
    )

    // [17 12 - 17 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_000f
    // start of loop, entry point: IL_000f

      // [18 9 - 18 37]
      IL_0004: ldarg.0      // robot
      IL_0005: ldarg.2      // startDirection
      IL_0006: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [17 45 - 17 52]
      IL_000b: ldloc.0      // index
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.0      // index

      // [17 27 - 17 43]
      IL_000f: ldloc.0      // index
      IL_0010: ldarg.1      // stepsCnt
      IL_0011: blt.s        IL_0004
    // end of loop
    IL_0013: ret

  } // end of method DiagonalMazeTask::MakeStep

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 stepsCnt,
      [1] valuetype Mazes.Direction startDirection,
      [2] valuetype Mazes.Direction dir
    )

    // [23 7 - 23 66]
    IL_0000: ldarg.1      // width
    IL_0001: ldarg.2      // height
    IL_0002: call         int32 Mazes.DiagonalMazeTask::CalcStepLong(int32, int32)
    IL_0007: stloc.0      // stepsCnt

    // [24 7 - 24 83]
    IL_0008: ldarg.1      // width
    IL_0009: ldarg.2      // height
    IL_000a: bgt.s        IL_000f

    IL_000c: ldc.i4.1
    IL_000d: br.s         IL_0010
    IL_000f: ldc.i4.3
    IL_0010: stloc.1      // startDirection

    // [25 7 - 25 72]
    IL_0011: ldarg.1      // width
    IL_0012: ldarg.2      // height
    IL_0013: bgt.s        IL_0018

    IL_0015: ldc.i4.3
    IL_0016: br.s         IL_0019
    IL_0018: ldc.i4.1
    IL_0019: stloc.2      // dir
    IL_001a: br.s         IL_0033
    // start of loop, entry point: IL_0033

      // [28 9 - 28 67]
      IL_001c: ldarg.0      // robot
      IL_001d: ldloc.0      // stepsCnt
      IL_001e: ldloc.1      // startDirection
      IL_001f: call         void Mazes.DiagonalMazeTask::MakeStep(class Mazes.Robot, int32, valuetype Mazes.Direction)

      // [29 9 - 29 29]
      IL_0024: ldarg.0      // robot
      IL_0025: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_002a: brtrue.s     IL_0033

      // [30 11 - 30 28]
      IL_002c: ldarg.0      // robot
      IL_002d: ldloc.2      // dir
      IL_002e: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [26 7 - 26 30]
      IL_0033: ldarg.0      // robot
      IL_0034: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0039: brfalse.s    IL_001c
    // end of loop
    IL_003b: ret

  } // end of method DiagonalMazeTask::MoveOut
} // end of class Mazes.DiagonalMazeTask

// Type: Mazes.EmptyMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 23E28FD4-AE17-47AB-B8DE-505085350BC6
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.EmptyMazeTask
    extends [mscorlib]System.Object
{

  .method public hidebysig static void
    MakeStep(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    // [13 7 - 13 31]
    IL_0000: ldarg.0      // robot
    IL_0001: callvirt     instance int32 Mazes.Robot::get_X()
    IL_0006: ldarg.1      // width
    IL_0007: ldc.i4.2
    IL_0008: sub
    IL_0009: bge.s        IL_0013

    // [15 9 - 15 38]
    IL_000b: ldarg.0      // robot
    IL_000c: ldc.i4.3
    IL_000d: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0012: ret

    // [19 9 - 19 35]
    IL_0013: ldarg.0      // robot
    IL_0014: callvirt     instance int32 Mazes.Robot::get_Y()
    IL_0019: ldarg.2      // height
    IL_001a: ldc.i4.2
    IL_001b: sub
    IL_001c: bge.s        IL_0025

    // [21 9 - 21 37]
    IL_001e: ldarg.0      // robot
    IL_001f: ldc.i4.1
    IL_0020: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

    IL_0025: ret

  } // end of method EmptyMazeTask::MakeStep

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    IL_0000: br.s         IL_000a
    // start of loop, entry point: IL_000a

      // [28 9 - 28 53]
      IL_0002: ldarg.0      // robot
      IL_0003: ldarg.1      // width
      IL_0004: ldarg.2      // height
      IL_0005: call         void Mazes.EmptyMazeTask::MakeStep(class Mazes.Robot, int32, int32)

      // [27 7 - 27 30]
      IL_000a: ldarg.0      // robot
      IL_000b: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0010: brfalse.s    IL_0002
    // end of loop
    IL_0012: ret

  } // end of method EmptyMazeTask::MoveOut
} // end of class Mazes.EmptyMazeTask

// Type: Mazes.PyramidMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 23E28FD4-AE17-47AB-B8DE-505085350BC6
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_release_mycompiler.exe
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
// MVID: 23E28FD4-AE17-47AB-B8DE-505085350BC6
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.SnakeMazeTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static void
    MoveLeft(
      class Mazes.Robot robot
    ) cil managed
  {
    .maxstack 8

    IL_0000: br.s         IL_0009
    // start of loop, entry point: IL_0009

      // [14 9 - 14 37]
      IL_0002: ldarg.0      // robot
      IL_0003: ldc.i4.2
      IL_0004: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 7 - 13 26]
      IL_0009: ldarg.0      // robot
      IL_000a: callvirt     instance int32 Mazes.Robot::get_X()
      IL_000f: ldc.i4.1
      IL_0010: bgt.s        IL_0002
    // end of loop
    IL_0012: ret

  } // end of method SnakeMazeTask::MoveLeft

  .method private hidebysig static void
    MoveDown(
      class Mazes.Robot robot
    ) cil managed
  {
    .maxstack 8

    // [19 7 - 19 35]
    IL_0000: ldarg.0      // robot
    IL_0001: ldc.i4.1
    IL_0002: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

    // [20 7 - 20 35]
    IL_0007: ldarg.0      // robot
    IL_0008: ldc.i4.1
    IL_0009: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_000e: ret

  } // end of method SnakeMazeTask::MoveDown

  .method private hidebysig static void
    MoveRight(
      class Mazes.Robot robot,
      int32 width
    ) cil managed
  {
    .maxstack 8

    IL_0000: br.s         IL_0009
    // start of loop, entry point: IL_0009

      // [26 9 - 26 38]
      IL_0002: ldarg.0      // robot
      IL_0003: ldc.i4.3
      IL_0004: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [25 7 - 25 34]
      IL_0009: ldarg.0      // robot
      IL_000a: callvirt     instance int32 Mazes.Robot::get_X()
      IL_000f: ldarg.1      // width
      IL_0010: ldc.i4.2
      IL_0011: sub
      IL_0012: blt.s        IL_0002
    // end of loop
    IL_0014: ret

  } // end of method SnakeMazeTask::MoveRight

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    // start of loop, entry point: IL_0000
      // [33 9 - 33 46]
      IL_0000: ldarg.0      // robot
      IL_0001: ldarg.1      // width
      IL_0002: call         void Mazes.SnakeMazeTask::MoveRight(class Mazes.Robot, int32)

      // [34 9 - 34 38]
      IL_0007: ldarg.0      // robot
      IL_0008: call         void Mazes.SnakeMazeTask::MoveDown(class Mazes.Robot)

      // [35 9 - 35 38]
      IL_000d: ldarg.0      // robot
      IL_000e: call         void Mazes.SnakeMazeTask::MoveLeft(class Mazes.Robot)

      // [36 9 - 36 29]
      IL_0013: ldarg.0      // robot
      IL_0014: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0019: brtrue.s     IL_0023

      // [37 11 - 37 40]
      IL_001b: ldarg.0      // robot
      IL_001c: call         void Mazes.SnakeMazeTask::MoveDown(class Mazes.Robot)

      IL_0021: br.s         IL_0000
    // end of loop
    IL_0023: ret

  } // end of method SnakeMazeTask::MoveOut
} // end of class Mazes.SnakeMazeTask
