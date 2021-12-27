// Type: Mazes.DiagonalMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B9965D22-F788-4C78-9E76-261B0118DF7F
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_debug_mycompiler.exe
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
      [0] int32 index,
      [1] bool V_1,
      [2] bool V_2,
      [3] bool V_3
    )

    IL_0000: nop

    // [13 12 - 13 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0011
    // start of loop, entry point: IL_0011

      // [14 9 - 14 32]
      IL_0005: ldarg.0      // robot
      IL_0006: ldarg.1      // direction
      IL_0007: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000c: nop

      // [13 43 - 13 50]
      IL_000d: ldloc.0      // index
      IL_000e: ldc.i4.1
      IL_000f: add
      IL_0010: stloc.0      // index

      // [13 27 - 13 41]
      IL_0011: ldloc.0      // index
      IL_0012: ldarg.2      // length
      IL_0013: clt
      IL_0015: stloc.1      // V_1

      IL_0016: ldloc.1      // V_1
      IL_0017: brtrue.s     IL_0005
    // end of loop

    // [15 7 - 15 59]
    IL_0019: ldarg.0      // robot
    IL_001a: callvirt     instance bool Mazes.Robot::get_Finished()
    IL_001f: brtrue.s     IL_0027

    IL_0021: ldarg.1      // direction
    IL_0022: ldc.i4.3
    IL_0023: ceq
    IL_0025: br.s         IL_0028
    IL_0027: ldc.i4.0
    IL_0028: stloc.2      // V_2
    IL_0029: ldloc.2      // V_2
    IL_002a: brfalse.s    IL_0036

    // [17 9 - 17 37]
    IL_002c: ldarg.0      // robot
    IL_002d: ldc.i4.1
    IL_002e: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0033: nop

    IL_0034: br.s         IL_004b

    // [21 9 - 21 28]
    IL_0036: ldarg.0      // robot
    IL_0037: callvirt     instance bool Mazes.Robot::get_Finished()
    IL_003c: ldc.i4.0
    IL_003d: ceq
    IL_003f: stloc.3      // V_3

    IL_0040: ldloc.3      // V_3
    IL_0041: brfalse.s    IL_004b

    // [23 9 - 23 38]
    IL_0043: ldarg.0      // robot
    IL_0044: ldc.i4.3
    IL_0045: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_004a: nop

    IL_004b: ret

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
      [0] int32 length,
      [1] bool V_1
    )

    IL_0000: nop

    // [29 7 - 29 33]
    IL_0001: ldarg.1      // bigger
    IL_0002: ldarg.2      // less
    IL_0003: div
    IL_0004: stloc.0      // length

    IL_0005: br.s         IL_0010
    // start of loop, entry point: IL_0010

      // [31 9 - 31 56]
      IL_0007: ldarg.0      // robot
      IL_0008: ldarg.3      // direction
      IL_0009: ldloc.0      // length
      IL_000a: call         void Mazes.DiagonalMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)
      IL_000f: nop

      // [30 7 - 30 30]
      IL_0010: ldarg.0      // robot
      IL_0011: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0016: ldc.i4.0
      IL_0017: ceq
      IL_0019: stloc.1      // V_1

      IL_001a: ldloc.1      // V_1
      IL_001b: brtrue.s     IL_0007
    // end of loop
    IL_001d: ret

  } // end of method DiagonalMazeTask::Move

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 4
    .locals init (
      [0] bool V_0
    )

    IL_0000: nop

    // [36 7 - 36 26]
    IL_0001: ldarg.1      // width
    IL_0002: ldarg.2      // height
    IL_0003: cgt
    IL_0005: stloc.0      // V_0

    IL_0006: ldloc.0      // V_0
    IL_0007: brfalse.s    IL_0019

    // [37 9 - 37 77]
    IL_0009: ldarg.0      // robot
    IL_000a: ldarg.1      // width
    IL_000b: ldc.i4.2
    IL_000c: sub
    IL_000d: ldarg.2      // height
    IL_000e: ldc.i4.2
    IL_000f: sub
    IL_0010: ldc.i4.3
    IL_0011: call         void Mazes.DiagonalMazeTask::Move(class Mazes.Robot, int32, int32, valuetype Mazes.Direction)
    IL_0016: nop

    IL_0017: br.s         IL_0027

    // [39 9 - 39 76]
    IL_0019: ldarg.0      // robot
    IL_001a: ldarg.2      // height
    IL_001b: ldc.i4.2
    IL_001c: sub
    IL_001d: ldarg.1      // width
    IL_001e: ldc.i4.2
    IL_001f: sub
    IL_0020: ldc.i4.1
    IL_0021: call         void Mazes.DiagonalMazeTask::Move(class Mazes.Robot, int32, int32, valuetype Mazes.Direction)
    IL_0026: nop

    IL_0027: ret

  } // end of method DiagonalMazeTask::MoveOut
} // end of class Mazes.DiagonalMazeTask

// Type: Mazes.EmptyMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B9965D22-F788-4C78-9E76-261B0118DF7F
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_debug_mycompiler.exe
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
      [0] int32 index,
      [1] bool V_1
    )

    IL_0000: nop

    // [13 12 - 13 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0011
    // start of loop, entry point: IL_0011

      // [14 9 - 14 32]
      IL_0005: ldarg.0      // robot
      IL_0006: ldarg.1      // direction
      IL_0007: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000c: nop

      // [13 43 - 13 50]
      IL_000d: ldloc.0      // index
      IL_000e: ldc.i4.1
      IL_000f: add
      IL_0010: stloc.0      // index

      // [13 27 - 13 41]
      IL_0011: ldloc.0      // index
      IL_0012: ldarg.2      // length
      IL_0013: clt
      IL_0015: stloc.1      // V_1

      IL_0016: ldloc.1      // V_1
      IL_0017: brtrue.s     IL_0005
    // end of loop
    IL_0019: ret

  } // end of method EmptyMazeTask::Step

  .method public hidebysig static void
    MoveOut(
      class Mazes.Robot robot,
      int32 width,
      int32 height
    ) cil managed
  {
    .maxstack 8

    IL_0000: nop

    // [19 7 - 19 60]
    IL_0001: ldarg.0      // robot
    IL_0002: ldc.i4.3
    IL_0003: ldarg.1      // width
    IL_0004: ldc.i4.3
    IL_0005: sub
    IL_0006: call         void Mazes.EmptyMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)
    IL_000b: nop

    // [20 7 - 20 60]
    IL_000c: ldarg.0      // robot
    IL_000d: ldc.i4.1
    IL_000e: ldarg.2      // height
    IL_000f: ldc.i4.3
    IL_0010: sub
    IL_0011: call         void Mazes.EmptyMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)
    IL_0016: nop
    IL_0017: ret

  } // end of method EmptyMazeTask::MoveOut
} // end of class Mazes.EmptyMazeTask

// Type: Mazes.PyramidMazeTask 
// Assembly: Mazes, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: B9965D22-F788-4C78-9E76-261B0118DF7F
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_debug_mycompiler.exe
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
// MVID: B9965D22-F788-4C78-9E76-261B0118DF7F
// Location: D:\Windows\Desktop\диссертация\il codes\ulearn\04 mazes\03_debug_mycompiler.exe
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
      [0] int32 index,
      [1] bool V_1,
      [2] bool V_2
    )

    IL_0000: nop

    // [13 12 - 13 25]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // index

    IL_0003: br.s         IL_0011
    // start of loop, entry point: IL_0011

      // [14 9 - 14 32]
      IL_0005: ldarg.0      // robot
      IL_0006: ldarg.1      // direction
      IL_0007: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
      IL_000c: nop

      // [13 43 - 13 50]
      IL_000d: ldloc.0      // index
      IL_000e: ldc.i4.1
      IL_000f: add
      IL_0010: stloc.0      // index

      // [13 27 - 13 41]
      IL_0011: ldloc.0      // index
      IL_0012: ldarg.2      // length
      IL_0013: clt
      IL_0015: stloc.1      // V_1

      IL_0016: ldloc.1      // V_1
      IL_0017: brtrue.s     IL_0005
    // end of loop

    // [15 7 - 15 26]
    IL_0019: ldarg.0      // robot
    IL_001a: callvirt     instance bool Mazes.Robot::get_Finished()
    IL_001f: ldc.i4.0
    IL_0020: ceq
    IL_0022: stloc.2      // V_2

    IL_0023: ldloc.2      // V_2
    IL_0024: brfalse.s    IL_0038
    IL_0026: nop

    // [17 7 - 17 35]
    IL_0027: ldarg.0      // robot
    IL_0028: ldc.i4.1
    IL_0029: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_002e: nop

    // [18 7 - 18 35]
    IL_002f: ldarg.0      // robot
    IL_0030: ldc.i4.1
    IL_0031: callvirt     instance void Mazes.Robot::MoveTo(valuetype Mazes.Direction)
    IL_0036: nop
    IL_0037: nop

    IL_0038: ret

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
      [0] int32 num,
      [1] bool V_1,
      [2] bool V_2
    )

    IL_0000: nop

    // [23 7 - 23 18]
    IL_0001: ldc.i4.0
    IL_0002: stloc.0      // num

    IL_0003: br.s         IL_002d
    // start of loop, entry point: IL_002d
      IL_0005: nop

      // [26 9 - 26 26]
      IL_0006: ldloc.0      // num
      IL_0007: ldc.i4.2
      IL_0008: rem
      IL_0009: ldc.i4.0
      IL_000a: ceq
      IL_000c: stloc.1      // V_1

      IL_000d: ldloc.1      // V_1
      IL_000e: brfalse.s    IL_001d

      // [27 11 - 27 64]
      IL_0010: ldarg.0      // robot
      IL_0011: ldc.i4.3
      IL_0012: ldarg.1      // width
      IL_0013: ldc.i4.3
      IL_0014: sub
      IL_0015: call         void Mazes.SnakeMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)
      IL_001a: nop

      IL_001b: br.s         IL_0028

      // [29 11 - 29 63]
      IL_001d: ldarg.0      // robot
      IL_001e: ldc.i4.2
      IL_001f: ldarg.1      // width
      IL_0020: ldc.i4.3
      IL_0021: sub
      IL_0022: call         void Mazes.SnakeMazeTask::Step(class Mazes.Robot, valuetype Mazes.Direction, int32)
      IL_0027: nop

      // [30 9 - 30 14]
      IL_0028: ldloc.0      // num
      IL_0029: ldc.i4.1
      IL_002a: add
      IL_002b: stloc.0      // num
      IL_002c: nop

      // [24 7 - 24 30]
      IL_002d: ldarg.0      // robot
      IL_002e: callvirt     instance bool Mazes.Robot::get_Finished()
      IL_0033: ldc.i4.0
      IL_0034: ceq
      IL_0036: stloc.2      // V_2

      IL_0037: ldloc.2      // V_2
      IL_0038: brtrue.s     IL_0005
    // end of loop
    IL_003a: ret

  } // end of method SnakeMazeTask::MoveOut
} // end of class Mazes.SnakeMazeTask
