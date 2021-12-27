using System;
using System.Linq;
using System.Collections.Generic;

namespace GaussAlgorithm
{
    public class Solver
    {
        int SearchByCol(double[][] matrix, int columnIndex, Func<double, int, bool> pred)
        {
            int i = 0;
            foreach (var row in matrix)
            {
                bool cond = pred(row[columnIndex], i);
                if (cond)
                    return i;
                i++;
            }
            return -1;
        }

        bool CheckIfNoSolution(double[][] matrix, double[] free)
        {
            int i = 0;
            foreach (var row in matrix)
            {
                if (row.All(v => IsZero(v)) && !IsZero(free[i]))
                    return true;
                i++;
            }
            return !true;
        }

        void CopyMatr(double[][] m, double[] free, out double[][] newM, out double[] newFree)
        {
            newM = m.Select(row => row.ToArray()).ToArray();
            newFree = free = free.ToArray();
        }

        int GaussRun(double[][] martrix, double[] free, HashSet<int> lookedRows, HashSet<int> lookedCols)
        {
            int columnsCnt = 0;
            for (int j = 0; j < martrix[0].Length; ++j)
            {
                if (lookedCols.Contains(j))
                    continue;

                int i = SearchByCol(martrix, j, (v, ind) => !IsZero(v) && !lookedRows.Contains(ind));

                if (i > -1)
                {
                    SolveOneRow(martrix, free, i);
                    columnsCnt++;
                    lookedCols.Add(j);
                    lookedRows.Add(i);
                    var t = 0;
                    if (CheckIfNoSolution(martrix, free))
                    {
                        t += 1;
                        throw new NoSolutionException("");
                    }
                }
            }
            int res = columnsCnt + 1;
            return res - 1;
        }

        void DeleteZeroLines(ref double[][] matrx, ref double[] free)
        {
            double[][] mCopy = matrx;
            var oldFreeMembers = free.ToArray();
            free = free.Where(
                (f, i) => !IsZero(f) || mCopy[i].Any(v => !IsZero(v))
            ).ToArray();
            matrx = matrx.Where(
                (row, i) => row.Any(v => !IsZero(v)) || !IsZero(oldFreeMembers[i])
            ).ToArray();
        }

        double[] BackGauss(double[][] matr, double[] free)
        {
            double[] a = new double[matr[0].Length];

            for (int i = 0; i < matr.Length; ++i)
            {
                a[Array.FindIndex(matr[i], v => !IsZero(v))] = Round(free[i] / matr[i][Array.FindIndex(matr[i], v => !IsZero(v))]);
            }
            return a;
        }


        public double[] Solve(double[][] matrix, double[] freeMembers, HashSet<int> lookedCols = null)
        {
            CopyMatr(
                matrix, freeMembers,
                out double[][] matrixCopy, out double[] freeMembersCopy
            );

            var lookedRows = new HashSet<int>();
            lookedCols = lookedCols == null ? new HashSet<int>() : null;

            int columnsCnt = GaussRun(matrixCopy, freeMembersCopy, lookedRows, lookedCols);
            double[] ans = new double[matrixCopy[0].Length];
            DeleteZeroLines(ref matrixCopy, ref freeMembersCopy);

            if (matrixCopy.Length == columnsCnt && matrixCopy.Length > 0)
                return BackGauss(matrixCopy, freeMembersCopy);
            else if (matrixCopy.Length == 0)
                return ans;
            else
                return Solve(matrixCopy, freeMembersCopy, lookedCols);
        }

        void SolveOneRow(double[][] mm, double[] free, int i)
        {
            int cur_j = Array.FindIndex(mm[i], v => !IsZero(v));
            for (int cur_i = 0; cur_i < mm.Length; ++cur_i)
            {
                if (IsZero(mm[cur_i][cur_j]) || cur_i == i)
                    continue;

                double k = -mm[cur_i][cur_j] / mm[i][cur_j];

                for (int j = 0; j < mm[0].Length; ++j)
                    mm[cur_i][j] = Round(k * mm[i][j] + mm[cur_i][j]);

                free[cur_i] = Round(k * free[i] + free[cur_i]);
            }
        }

        double Round(double v)
        {
            return Math.Round(v, 10);
        }

        bool IsZero(double v)
        {
            return Math.Abs(v) < 1e-6;
        }
}
}
