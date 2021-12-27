using System;

namespace Mazes
{
    public static class DiagonalMazeTask
    {
        public static void MoveOut(Robot robot, int width, int height)
        {
            while (!robot.Finished)
            {
                if (width > height)
                {
                        for (var i = 0; i < (width - 2) / (height - 2); i++) 
                        robot.MoveTo(Direction.Right);
                    if (!robot.Finished) 
                        robot.MoveTo(Direction.Down);
                }
                else
                {
                  for (var i = 0; i < (height - 2) / (width - 2); i++) 
                        robot.MoveTo(Direction.Down);
                    if (!robot.Finished) 
                        robot.MoveTo(Direction.Right);
                }
            }
        }
    }
}