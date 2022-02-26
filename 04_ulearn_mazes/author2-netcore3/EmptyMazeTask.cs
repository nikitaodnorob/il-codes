using System;

namespace Mazes
{
	public static class EmptyMazeTask
	{

		public static void StepDown(Robot robot, int height)
        {
			for (int i = 0; i < height - 3; i++)
			{ 
				robot.MoveTo(Direction.Down); 
			}
		}
		public static void MoveOut(Robot robot, int width, int height)
		{
			for (int i = 0; i < width - 3; i++)
			{ 
				robot.MoveTo(Direction.Right); 
			}
			StepDown(robot, height);
		}
	}
	}
