namespace Recognizer
{
    internal static class HoughTransformTask
    {
        public static Line[] HoughAlgo(double[,] orig)
        {
            var height = orig.GetLength(1);
            var width = orig.GetLength(0);
            return new[]
            {
                new Line(0, 0, width, height),
                new Line(0, height, width, 0)
            };
        }
    }
}