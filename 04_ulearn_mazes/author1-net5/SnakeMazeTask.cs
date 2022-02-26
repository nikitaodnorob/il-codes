namespace Mazes
{
	public static class SnakeMazeTask
	{
		static void MoveLeft(Robot robot)
		{
			while (robot.X > 1)
				robot.MoveTo(Direction.Left);
		}

		static void MoveDown(Robot robot)
		{
			robot.MoveTo(Direction.Down);
			robot.MoveTo(Direction.Down);
		}

		static void MoveRight(Robot robot, int width)
		{
			while (robot.X < width - 2)
				robot.MoveTo(Direction.Right);
		}

		public static void MoveOut(Robot robot, int width, int height)
		{
			while (true) {
				MoveRight(robot, width);
				MoveDown(robot);
				MoveLeft(robot);
				if (robot.Finished) break;
				MoveDown(robot);
			}
		}
	}
}