using System;

namespace DistanceTask
{
	public static class DistanceTask
	{
		
		public static double GetDistanceToSegment(double ax, double ay, double bx, double by, double x, double y)
        {
            double two = 2.0;
            double a1, a2, a3;
            NewMethod(ax, ay, bx, by, x, y, out a1, out a2, out a3);
            double scalarVectors1, scalarVectors2;
            GetScalarVectors(ax, ay, bx, by, x, y, out scalarVectors1, out scalarVectors2);

            if (a2 == 0)               
                return a1;

            else if (scalarVectors1 >= 0 && scalarVectors2 >= 0)
            {

                return (two * Math.Sqrt(Math.Abs(((a1 + a3 + a2) / two) * (((a1 + a3 + a2) / two) - a1) * (((a1 + a3 + a2) / two) - a3) * (((a1 + a3 + a2) / two) - a2)))) / a2;
            }
            else if (scalarVectors1 < 0 || scalarVectors2 < 0)
            {
                return Math.Min(a1, a3);
            }
            else return 0;
        }
        private static void GetScalarVectors(double ax, double ay, double bx, double by, double x, double y, out double scalarVectors1, out double scalarVectors2)
        {
            scalarVectors1 = (x - ax) * (bx - ax) + (y - ay) * (by - ay);
            scalarVectors2 = (x - bx) * (-bx + ax) + (y - by) * (-by + ay);
        }
        private static void NewMethod(double ax, double ay, double bx, double by, double x, double y, out double a1, out double a2, out double a3)
        {
            a1 = Math.Sqrt((x - ax) * (x - ax) + (y - ay) * (y - ay));
            a2 = Math.Sqrt((ax - bx) * (ax - bx) + (ay - by) * (ay - by));
            a3 = Math.Sqrt((x - bx) * (x - bx) + (y - by) * (y - by));
        }
    }
}