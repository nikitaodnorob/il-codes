namespace Rectangles
{
    public class Distance
    {
        private static Distance? instance = null;
        
        private Distance() { }

        public static Distance GetInstance()
        {
            if (instance == null) instance = new Distance();
            return instance;
        }
        
        static double GetSqr(double x)
        {
            return x * x;
        }

        public double PointDistance(double x1, double y1, double x2, double y2)
        {
            return Math.Sqrt(GetSqr(Math.Abs(x1 - x2)) + GetSqr(Math.Abs(y1 - y2)));
        }
        
        public double GetDistanceToSegment(double ax, double ay, double bx, double by, double x, double y)
        {
            // найдем стороны треугольника ABC, где C - точка, от которой ищем расстояние
            double sideAC = PointDistance(x, y, ax, ay);
            double sideBC = PointDistance(x, y, bx, by);
            double sideAB = PointDistance(ax, ay, bx, by);

            // если отрезок является точкой, возвращаем расстояние
            if (sideAB == 0) return sideAC;

            // если точка лежит на границе отрезка, возвращаем 0
            if (sideAC == 0 || sideBC == 0) return 0;

            double cosCAB = (GetSqr(sideBC) - GetSqr(sideAC) - GetSqr(sideAB)) / (-2 * sideAC * sideAB);
            double cosCBA = (GetSqr(sideAC) - GetSqr(sideBC) - GetSqr(sideAB)) / (-2 * sideBC * sideAB);

            // если тупоугольный треугольник, значит точка не над отрезком
            if (cosCAB < 0 || cosCBA < 0) return Math.Min(sideAC, sideBC);

            // иначе найдем высоту
            double sinCAB = Math.Sqrt(1 - GetSqr(cosCAB));
            return sinCAB * sideAC;
        }
    }
}