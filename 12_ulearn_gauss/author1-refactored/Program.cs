using NUnitLite;
using System;

namespace GaussAlgorithm
{
    class Program
    {
        static void Main(string[] args)
        {
            double[][] matr = new double[3][];
            matr[0] = new double[] { -668, 200, -881 };
            matr[1] = new double[] { -325, 227, 889 };
            matr[2] = new double[] { -325, 227, 889 };
            double[] free = new double[] { 80234, 43852, 43852 };

            Solver solver = new Solver();
            foreach (var v in solver.Solve(matr, free))
                Console.Write(v.ToString() + " ");
            //new AutoRun().Execute(args);
        }
    }
}
