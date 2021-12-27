// Type: Mazes.DiagonalMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 9CCD0506-5C28-4F96-A87B-A527029D24ED
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.DiagonalMazeTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static void
    Step(
      class Mazes.Robot robot,
      valuetype Mazes.Direction direction,
      int32 length
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] int32 index
    )

    // [13 12 - 13 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_000f
    // start of loop, entry point: IL_000f

      // [14 9 - 14 32]
      IL_0004: ldarg.0      // robot
      IL_0005: ldarg.1      // direction
      IL_0006: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 43 - 13 50]
      IL_000b: ldloc.0      // index
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.0      // index

      // [13 27 - 13 41]
      IL_000f: ldloc.0      // index
      IL_0010: ldarg.2      // length
      IL_0011: blt.s        IL_0004
    // end of loop

    // [15 7 - 15 59]
    IL_0013: ldarg.0      // robot
    IL_0014: callvirt     instance bool Mazes.Robot::get_Finished()
    IL_0019: brtrue.s     IL_0027

    IL_001b: ldarg.1      // direction
    IL_001c: ldc.i4.3
    IL_001d: bne.un.s     IL_0027

    // [17 9 - 17 37]
    IL_001f: ldarg.0      // robot
    IL_0020: ldc.i4.1
    IL_0021: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0026: ret

    // [21 9 - 21 28]
    IL_0027: ldarg.0      // robot
    IL_0028: callvirt     instance bool Mazes.Robot::get_Finished()
    IL_002d: brtrue.s     IL_0036

    // [23 9 - 23 38]
    IL_002f: ldarg.0      // robot
    IL_0030: ldc.i4.3
    IL_0031: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

    IL_0036: ret

  } // end of method DiagonalMazeTask::Step

  .method private hidebysig static void
    Move(
      class Mazes.Robot robot,
      int32 bigger,
      int32 less,
      valuetype Mazes.Direction direction
    ) cil managed
  {
    .maxstack 3
    .locals init (
      [0] int32 length
    )

    // [29 7 - 29 33]
    IL_0000: ldarg.1      // bigger
    IL_0001: ldarg.2      // less
    IL_0002: div
    IL_0003: stloc.0      // length

    IL_0004: br.s         IL_000e
    // start of loop, entry point: IL_000e

      // [31 9 - 31 56]
      IL_0006: ldarg.0      // robot
      IL_0007: ldarg.3      // direction
      IL_0008: ldloc.0      // length
      IL_0009: call         void Mazes.DiagonalMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)

      // [30 7 - 30 30]
      IL_000e: ldarg.0      // robot
      IL_000f: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0014: brfalse.s    IL_0006
    // end of loop
    IL_0016: ret

  } // end of method DiagonalMazeTask::Move

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    // [36 7 - 36 26]
    IL_0000: ldarg.1      // width
    IL_0001: ldarg.2      // height
    IL_0002: ble.s        IL_0012

    // [37 9 - 37 77]
    IL_0004: ldarg.0      // robot
    IL_0005: ldarg.1      // width
    IL_0006: ldc.i4.2
    IL_0007: sub
    IL_0008: ldarg.2      // height
    IL_0009: ldc.i4.2
    IL_000a: sub
    IL_000b: ldc.i4.3
    IL_000c: call         void Mazes.DiagonalMazeTask::Move(class Mazes.Robot, int32, int32, valuetype Mazes.Direction)
    IL_0011: ret

    // [39 9 - 39 76]
    IL_0012: ldarg.0      // robot
    IL_0013: ldarg.2      // height
    IL_0014: ldc.i4.2
    IL_0015: sub
    IL_0016: ldarg.1      // width
    IL_0017: ldc.i4.2
    IL_0018: sub
    IL_0019: ldc.i4.1
    IL_001a: call         void Mazes.DiagonalMazeTask::Move(class Mazes.Robot, int32, int32, valuetype Mazes.Direction)
    IL_001f: ret

  } // end of method DiagonalMazeTask::MoveOut
} // end of class Mazes.DiagonalMazeTask

// Type: Mazes.EmptyMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 9CCD0506-5C28-4F96-A87B-A527029D24ED
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.EmptyMazeTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static void
    Step(
      class Mazes.Robot robot,
      valuetype Mazes.Direction direction,
      int32 length
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] int32 index
    )

    // [13 12 - 13 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_000f
    // start of loop, entry point: IL_000f

      // [14 9 - 14 32]
      IL_0004: ldarg.0      // robot
      IL_0005: ldarg.1      // direction
      IL_0006: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 43 - 13 50]
      IL_000b: ldloc.0      // index
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.0      // index

      // [13 27 - 13 41]
      IL_000f: ldloc.0      // index
      IL_0010: ldarg.2      // length
      IL_0011: blt.s        IL_0004
    // end of loop
    IL_0013: ret

  } // end of method EmptyMazeTask::Step

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    // [19 7 - 19 60]
    IL_0000: ldarg.0      // robot
    IL_0001: ldc.i4.3
    IL_0002: ldarg.1      // width
    IL_0003: ldc.i4.3
    IL_0004: sub
    IL_0005: call         void Mazes.EmptyMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)

    // [20 7 - 20 60]
    IL_000a: ldarg.0      // robot
    IL_000b: ldc.i4.1
    IL_000c: ldarg.2      // height
    IL_000d: ldc.i4.3
    IL_000e: sub
    IL_000f: call         void Mazes.EmptyMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)
    IL_0014: ret

  } // end of method EmptyMazeTask::MoveOut
} // end of class Mazes.EmptyMazeTask

// Type: Mazes.PyramidMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 9CCD0506-5C28-4F96-A87B-A527029D24ED
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_release_mycompiler.exe
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
// MVID: 9CCD0506-5C28-4F96-A87B-A527029D24ED
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_release_mycompiler.exe
// Sequence point data from decompiler

.class public abstract sealed auto ansi beforefieldinit
  Mazes.SnakeMazeTask
    extends [mscorlib]System.Object
{

  .method private hidebysig static void
    Step(
      class Mazes.Robot robot,
      valuetype Mazes.Direction direction,
      int32 length
    ) cil managed
  {
    .maxstack 2
    .locals init (
      [0] int32 index
    )

    // [13 12 - 13 25]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // index

    IL_0002: br.s         IL_000f
    // start of loop, entry point: IL_000f

      // [14 9 - 14 32]
      IL_0004: ldarg.0      // robot
      IL_0005: ldarg.1      // direction
      IL_0006: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

      // [13 43 - 13 50]
      IL_000b: ldloc.0      // index
      IL_000c: ldc.i4.1
      IL_000d: add
      IL_000e: stloc.0      // index

      // [13 27 - 13 41]
      IL_000f: ldloc.0      // index
      IL_0010: ldarg.2      // length
      IL_0011: blt.s        IL_0004
    // end of loop

    // [15 7 - 15 26]
    IL_0013: ldarg.0      // robot
    IL_0014: callvirt     instance bool Mazes.Robot::get_Finished()
    IL_0019: brtrue.s     IL_0029

    // [17 7 - 17 35]
    IL_001b: ldarg.0      // robot
    IL_001c: ldc.i4.1
    IL_001d: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

    // [18 7 - 18 35]
    IL_0022: ldarg.0      // robot
    IL_0023: ldc.i4.1
    IL_0024: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)

    IL_0029: ret

  } // end of method SnakeMazeTask::Step

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] int32 num
    )

    // [23 7 - 23 18]
    IL_0000: ldc.i4.0
    IL_0001: stloc.0      // num

    IL_0002: br.s         IL_0023
    // start of loop, entry point: IL_0023

      // [26 9 - 26 26]
      IL_0004: ldloc.0      // num
      IL_0005: ldc.i4.2
      IL_0006: rem
      IL_0007: brtrue.s     IL_0015

      // [27 11 - 27 64]
      IL_0009: ldarg.0      // robot
      IL_000a: ldc.i4.3
      IL_000b: ldarg.1      // width
      IL_000c: ldc.i4.3
      IL_000d: sub
      IL_000e: call         void Mazes.SnakeMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)

      IL_0013: br.s         IL_001f

      // [29 11 - 29 63]
      IL_0015: ldarg.0      // robot
      IL_0016: ldc.i4.2
      IL_0017: ldarg.1      // width
      IL_0018: ldc.i4.3
      IL_0019: sub
      IL_001a: call         void Mazes.SnakeMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)

      // [30 9 - 30 14]
      IL_001f: ldloc.0      // num
      IL_0020: ldc.i4.1
      IL_0021: add
      IL_0022: stloc.0      // num

      // [24 7 - 24 30]
      IL_0023: ldarg.0      // robot
      IL_0024: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0029: brfalse.s    IL_0004
    // end of loop
    IL_002b: ret

  } // end of method SnakeMazeTask::MoveOut
} // end of class Mazes.SnakeMazeTask
