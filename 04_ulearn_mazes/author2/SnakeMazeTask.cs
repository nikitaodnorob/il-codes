namespace Mazes
{
	public static class SnakeMazeTask
	{
		public static void MoveOut(Robot robot, int width, int height)
		{
           

            while (!robot.Finished)
            {
                    for (int i = 0; i < width - 3; i++)
                    { robot.MoveTo(Direction.Right); }
                    for (int i = 0; i < 2; i++)
                    { robot.MoveTo(Direction.Down); }
                    for (int i = 0; i < width - 3; i++)
                    { robot.MoveTo(Direction.Left); }
                    if (!robot.Finished)
                    {
                    { robot.MoveTo(Direction.Down); }
                    { robot.MoveTo(Direction.Down); }
                    }
            }
        }
	}
}