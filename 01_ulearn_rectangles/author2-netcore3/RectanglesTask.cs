using System;

namespace Rectangles
{
    public static class RectanglesTask
    {
       
        public static bool AreIntersected(Rectangle r1, Rectangle r2)
        {
            return !( r2.Top > r1.Bottom || r2.Bottom < r1.Top || r2.Left > r1.Right || r2.Right < r1.Left );
        }
        public static int IntersectionSquare(Rectangle r1, Rectangle r2)
        {
            if (!AreIntersected(r1, r2))
                return 0;
            return (Math.Max(r1.Top, r2.Top) - Math.Min(r1.Bottom, r2.Bottom))*(Math.Max(r1.Left, r2.Left) - Math.Min(r1.Right, r2.Right));
        }
        public static int ComparisonOfTriangles(Rectangle r1, Rectangle r2)
        {
            if ((r1.Top <= r2.Top) && (r1.Bottom >= r2.Bottom) && (r1.Left <= r2.Left) && (r1.Right >= r2.Right))
                return 1;
            else if ((r2.Left <= r1.Left) && (r2.Right >= r1.Right) && (r2.Top <= r1.Top) && (r2.Bottom >= r1.Bottom))
                return 0;
            else if ((r1.Left == r2.Left) && (r1.Top == r2.Top) && (r1.Right == r2.Right) && (r2.Bottom == r2.Bottom))
                return 1;
            return -1;
        }      
        public static int IndexOfInnerRectangle(Rectangle r1, Rectangle r2)
        {
            return ComparisonOfTriangles(r1, r2);
        }
    }
}