namespace Mazes
{
	public static class EmptyMazeTask
	{
		public static void MakeStep(Robot robot, int width, int height)
		{
			if (robot.X < width - 2) robot.MoveTo(Direction.Right);
			else if (robot.Y < height - 2) robot.MoveTo(Direction.Down);
		}

		public static void MoveOut(Robot robot, int width, int height) {
			while (!robot.Finished) {
				MakeStep(robot, width, height);
			}
		}
	}
}