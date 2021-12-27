// Type: Mazes.DiagonalMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 195E1DDA-EB60-4358-902A-F96AF7E03FB9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_debug_mycompiler.exe
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
      [0] int32 V_0,
      [1] int32 V_1,
      [2] int32 V_2
    )

    IL_0000: nop

    // [13 63 - 13 124]
    IL_0001: ldarg.0      // width
    IL_0002: ldarg.1      // height
    IL_0003: call         int32 [mscorlib]System.Math::Max(int32, int32)
    IL_0008: stloc.0      // V_0
    IL_0009: ldarg.0      // width
    IL_000a: ldarg.1      // height
    IL_000b: call         int32 [mscorlib]System.Math::Min(int32, int32)
    IL_0010: stloc.1      // V_1
    IL_0011: ldloc.0      // V_0
    IL_0012: ldc.i4.3
    IL_0013: sub
    IL_0014: ldloc.1      // V_1
    IL_0015: ldc.i4.2
    IL_0016: sub
    IL_0017: div
    IL_0018: stloc.2      // V_2
    IL_0019: br.s         IL_001b
    IL_001b: ldloc.2      // V_2
    IL_001c: ret

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
      [0] int32 index,
      [1] bool V_1
    )

    IL_0000: nop

    // [17 12 - 17 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0011
    // start of loop, entry point: IL_0011

      // [18 9 - 18 37]
      IL_0005: ldarg.0      // robot
      IL_0006: ldarg.2      // startDirection
      IL_0007: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000c: nop

      // [17 45 - 17 52]
      IL_000d: ldloc.0      // index
      IL_000e: ldc.i4.1
      IL_000f: add
      IL_0010: stloc.0      // index

      // [17 27 - 17 43]
      IL_0011: ldloc.0      // index
      IL_0012: ldarg.1      // stepsCnt
      IL_0013: clt
      IL_0015: stloc.1      // V_1

      IL_0016: ldloc.1      // V_1
      IL_0017: brtrue.s     IL_0005
    // end of loop
    IL_0019: ret

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
      [2] valuetype Mazes.Direction dir,
      [3] bool V_3,
      [4] bool V_4
    )

    IL_0000: nop

    // [23 7 - 23 66]
    IL_0001: ldarg.1      // width
    IL_0002: ldarg.2      // height
    IL_0003: call         int32 Mazes.DiagonalMazeTask::CalcStepLong(int32, int32)
    IL_0008: stloc.0      // stepsCnt

    // [24 7 - 24 83]
    IL_0009: ldarg.1      // width
    IL_000a: ldarg.2      // height
    IL_000b: bgt.s        IL_0010

    IL_000d: ldc.i4.1
    IL_000e: br.s         IL_0011
    IL_0010: ldc.i4.3
    IL_0011: stloc.1      // startDirection

    // [25 7 - 25 72]
    IL_0012: ldarg.1      // width
    IL_0013: ldarg.2      // height
    IL_0014: bgt.s        IL_0019

    IL_0016: ldc.i4.3
    IL_0017: br.s         IL_001a
    IL_0019: ldc.i4.1
    IL_001a: stloc.2      // dir
    IL_001b: br.s         IL_003d
    // start of loop, entry point: IL_003d
      IL_001d: nop

      // [28 9 - 28 67]
      IL_001e: ldarg.0      // robot
      IL_001f: ldloc.0      // stepsCnt
      IL_0020: ldloc.1      // startDirection
      IL_0021: call         void Mazes.DiagonalMazeTask::MakeStep(class Mazes.Robot, int32, valuetype Mazes.Direction)
      IL_0026: nop

      // [29 9 - 29 29]
      IL_0027: ldarg.0      // robot
      IL_0028: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_002d: ldc.i4.0
      IL_002e: ceq
      IL_0030: stloc.3      // V_3

      IL_0031: ldloc.3      // V_3
      IL_0032: brfalse.s    IL_003c

      // [30 11 - 30 28]
      IL_0034: ldarg.0      // robot
      IL_0035: ldloc.2      // dir
      IL_0036: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_003b: nop
      IL_003c: nop

      // [26 7 - 26 30]
      IL_003d: ldarg.0      // robot
      IL_003e: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0043: ldc.i4.0
      IL_0044: ceq
      IL_0046: stloc.s      V_4

      IL_0048: ldloc.s      V_4
      IL_004a: brtrue.s     IL_001d
    // end of loop
    IL_004c: ret

  } // end of method DiagonalMazeTask::MoveOut
} // end of class Mazes.DiagonalMazeTask

// Type: Mazes.EmptyMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 195E1DDA-EB60-4358-902A-F96AF7E03FB9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_debug_mycompiler.exe
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
    .maxstack 3
    .locals init (
      [0] bool V_0,
      [1] bool V_1
    )

    IL_0000: nop

    // [13 7 - 13 31]
    IL_0001: ldarg.0      // robot
    IL_0002: callvirt     instance int32 Mazes.Robot::get_X()
    IL_0007: ldarg.1      // width
    IL_0008: ldc.i4.2
    IL_0009: sub
    IL_000a: clt
    IL_000c: stloc.0      // V_0

    IL_000d: ldloc.0      // V_0
    IL_000e: brfalse.s    IL_001a

    // [15 9 - 15 38]
    IL_0010: ldarg.0      // robot
    IL_0011: ldc.i4.3
    IL_0012: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0017: nop

    IL_0018: br.s         IL_0031

    // [19 9 - 19 35]
    IL_001a: ldarg.0      // robot
    IL_001b: callvirt     instance int32 Mazes.Robot::get_Y()
    IL_0020: ldarg.2      // height
    IL_0021: ldc.i4.2
    IL_0022: sub
    IL_0023: clt
    IL_0025: stloc.1      // V_1

    IL_0026: ldloc.1      // V_1
    IL_0027: brfalse.s    IL_0031

    // [21 9 - 21 37]
    IL_0029: ldarg.0      // robot
    IL_002a: ldc.i4.1
    IL_002b: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0030: nop

    IL_0031: ret

  } // end of method EmptyMazeTask::MakeStep

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] bool V_0
    )

    IL_0000: nop

    IL_0001: br.s         IL_000e
    // start of loop, entry point: IL_000e
      IL_0003: nop

      // [28 9 - 28 53]
      IL_0004: ldarg.0      // robot
      IL_0005: ldarg.1      // width
      IL_0006: ldarg.2      // height
      IL_0007: call         void Mazes.EmptyMazeTask::MakeStep(class Mazes.Robot, int32, int32)
      IL_000c: nop
      IL_000d: nop

      // [27 7 - 27 30]
      IL_000e: ldarg.0      // robot
      IL_000f: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0014: ldc.i4.0
      IL_0015: ceq
      IL_0017: stloc.0      // V_0

      IL_0018: ldloc.0      // V_0
      IL_0019: brtrue.s     IL_0003
    // end of loop
    IL_001b: ret

  } // end of method EmptyMazeTask::MoveOut
} // end of class Mazes.EmptyMazeTask

// Type: Mazes.PyramidMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 195E1DDA-EB60-4358-902A-F96AF7E03FB9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_debug_mycompiler.exe
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
// MVID: 195E1DDA-EB60-4358-902A-F96AF7E03FB9
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\01_debug_mycompiler.exe
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
    .maxstack 2
    .locals init (
      [0] bool V_0
    )

    IL_0000: nop

    IL_0001: br.s         IL_000b
    // start of loop, entry point: IL_000b

      // [14 9 - 14 37]
      IL_0003: ldarg.0      // robot
      IL_0004: ldc.i4.2
      IL_0005: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000a: nop

      // [13 7 - 13 26]
      IL_000b: ldarg.0      // robot
      IL_000c: callvirt     instance int32 Mazes.Robot::get_X()
      IL_0011: ldc.i4.1
      IL_0012: cgt
      IL_0014: stloc.0      // V_0

      IL_0015: ldloc.0      // V_0
      IL_0016: brtrue.s     IL_0003
    // end of loop
    IL_0018: ret

  } // end of method SnakeMazeTask::MoveLeft

  .method private hidebysig static void
    MoveDown(
      class Mazes.Robot robot
    ) cil managed
  {
    .maxstack 8

    IL_0000: nop

    // [19 7 - 19 35]
    IL_0001: ldarg.0      // robot
    IL_0002: ldc.i4.1
    IL_0003: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0008: nop

    // [20 7 - 20 35]
    IL_0009: ldarg.0      // robot
    IL_000a: ldc.i4.1
    IL_000b: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0010: nop
    IL_0011: ret

  } // end of method SnakeMazeTask::MoveDown

  .method private hidebysig static void
    MoveRight(
      class Mazes.Robot robot,
      int32 width
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] bool V_0
    )

    IL_0000: nop

    IL_0001: br.s         IL_000b
    // start of loop, entry point: IL_000b

      // [26 9 - 26 38]
      IL_0003: ldarg.0      // robot
      IL_0004: ldc.i4.3
      IL_0005: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000a: nop

      // [25 7 - 25 34]
      IL_000b: ldarg.0      // robot
      IL_000c: callvirt     instance int32 Mazes.Robot::get_X()
      IL_0011: ldarg.1      // width
      IL_0012: ldc.i4.2
      IL_0013: sub
      IL_0014: clt
      IL_0016: stloc.0      // V_0

      IL_0017: ldloc.0      // V_0
      IL_0018: brtrue.s     IL_0003
    // end of loop
    IL_001a: ret

  } // end of method SnakeMazeTask::MoveRight

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] bool V_0,
      [1] bool V_1
    )

    IL_0000: nop

    IL_0001: br.s         IL_002e
    // start of loop, entry point: IL_002e
      IL_0003: nop

      // [33 9 - 33 46]
      IL_0004: ldarg.0      // robot
      IL_0005: ldarg.1      // width
      IL_0006: call         void Mazes.SnakeMazeTask::MoveRight(class Mazes.Robot, int32)
      IL_000b: nop

      // [34 9 - 34 38]
      IL_000c: ldarg.0      // robot
      IL_000d: call         void Mazes.SnakeMazeTask::MoveDown(class Mazes.Robot)
      IL_0012: nop

      // [35 9 - 35 38]
      IL_0013: ldarg.0      // robot
      IL_0014: call         void Mazes.SnakeMazeTask::MoveLeft(class Mazes.Robot)
      IL_0019: nop

      // [36 9 - 36 29]
      IL_001a: ldarg.0      // robot
      IL_001b: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0020: stloc.0      // V_0

      IL_0021: ldloc.0      // V_0
      IL_0022: brfalse.s    IL_0026
      IL_0024: br.s         IL_0032

      // [37 11 - 37 40]
      IL_0026: ldarg.0      // robot
      IL_0027: call         void Mazes.SnakeMazeTask::MoveDown(class Mazes.Robot)
      IL_002c: nop
      IL_002d: nop

      IL_002e: ldc.i4.1
      IL_002f: stloc.1      // V_1

      // [39 11 - 39 17]
      IL_0030: br.s         IL_0003
    // end of loop

    IL_0032: ret

  } // end of method SnakeMazeTask::MoveOut
} // end of class Mazes.SnakeMazeTask
