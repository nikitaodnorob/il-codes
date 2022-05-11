namespace Rectangles
{
    public class RectangleCounter
    {
        private bool areIntersectedEnabled;
        private bool intersectionSquareEnabled;
        private bool indexOfInnerRectangleEnabled;
        
        public RectangleCounter(
            bool areIntersectedEnabled,
            bool intersectionSquareEnabled,
            bool indexOfInnerRectangleEnabled
        )
        {
            this.areIntersectedEnabled = areIntersectedEnabled;
            this.intersectionSquareEnabled = intersectionSquareEnabled;
            this.indexOfInnerRectangleEnabled = indexOfInnerRectangleEnabled;
        }

        public bool AreIntersected(Rectangle r1, Rectangle r2)
        {
            if (!areIntersectedEnabled) throw new NotImplementedException();
            
            return !(r2.Left > r1.Right || r2.Top > r1.Bottom || r1.Left > r2.Right || r1.Top > r2.Bottom);
        }
        
        public int IntersectionSquare(Rectangle r1, Rectangle r2)
        {
            if (!intersectionSquareEnabled) throw new NotImplementedException();
            
            CalcMinMax(r1, r2, out int left, out int right, out int top, out int bottom);

            int width = right - left;
            int height = bottom - top;

            if (width <= 0 || height <= 0) return 0;
            return width * height;
        }

        public int IndexOfInnerRectangle(Rectangle r1, Rectangle r2)
        {
            if (!indexOfInnerRectangleEnabled) throw new NotImplementedException();
            
            CalcMinMax(r1, r2, out int left, out int right, out int top, out int bottom);

            if (r1.Left == left && r1.Top == top && r1.Right == right && r1.Bottom == bottom) return 0;
            if (r2.Left == left && r2.Top == top && r2.Right == right && r2.Bottom == bottom) return 1;
            return -1;
        }

        private static void CalcMinMax(Rectangle r1, Rectangle r2, out int left, out int right, out int top, out int bottom)
        {
            left = Math.Max(r1.Left, r2.Left);
            right = Math.Min(r1.Right, r2.Right);
            top = Math.Max(r1.Top, r2.Top);
            bottom = Math.Min(r1.Bottom, r2.Bottom);
        }
    }

    public class RectangleCounterBuilder
    {
        private bool areIntersectedEnabled;
        private bool intersectionSquareEnabled;
        private bool indexOfInnerRectangleEnabled;

        public RectangleCounterBuilder EnableAreIntersected()
        {
            areIntersectedEnabled = true;
            return this;
        }
        
        public RectangleCounterBuilder EnableIntersectionSquare()
        {
            intersectionSquareEnabled = true;
            return this;
        }
        
        public RectangleCounterBuilder EnableIndexOfInnerRectangle()
        {
            indexOfInnerRectangleEnabled = true;
            return this;
        }

        public RectangleCounter Build()
        {
            return new RectangleCounter(areIntersectedEnabled, intersectionSquareEnabled, indexOfInnerRectangleEnabled);
        }
    }
    
    public class Rectangle
    {
        public readonly int Left, Top, Width, Height;

        public Rectangle(int left, int top, int width, int height)
        {
            Left = left;
            Top = top;
            Width = width;
            Height = height;
        }

        public int Bottom => Top + Height;
        public int Right => Left + Width;

        public override string ToString()
        {
            return string.Format("Left: {0}, Top: {1}, Width: {2}, Height: {3}", Left, Top, Width, Height);
        }
    }
}