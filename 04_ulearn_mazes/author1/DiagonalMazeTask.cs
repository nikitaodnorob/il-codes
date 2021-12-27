using System;

namespace Mazes
{
	public static class DiagonalMazeTask
	{
		static int CalcStepLong(int width, int height)
		{
			int maxSize = Math.Max(width, height);
			int minSize = Math.Min(width, height);
			return (maxSize - 3) / (minSize - 2);
		}

		static void MakeStep(Robot robot, int stepsCnt, Direction startDirection)
		{
			for (int i = 0; i < stepsCnt; i++)
				robot.MoveTo(startDirection);
		}

		public static void MoveOut(Robot robot, int width, int height)
		{
			int stepsCnt = CalcStepLong(width, height);

			Direction startDirection = width > height ? Direction.Right : Direction.Down;
			Direction secondDirection = width > height ? Direction.Down : Direction.Right;

			while (!robot.Finished)
			{
				MakeStep(robot, stepsCnt, startDirection);
				if (!robot.Finished) robot.MoveTo(secondDirection);
			}
		}
	}
}