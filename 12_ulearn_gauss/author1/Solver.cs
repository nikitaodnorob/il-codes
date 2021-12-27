using System;
using System.Linq;
using System.Collections.Generic;

namespace GaussAlgorithm
{
    public class Solver
    {
        int FindInColumn(double[][] m, int columnIndex, Func<double, int, bool> pred)
        {
            int i = 0;
            foreach (var row in m)
            {
                if (pred(row[columnIndex], i))
                    return i;
                i++;
            }
            return -1;
        }

        bool CheckNoSolution(double[][] m, double[] free)
        {
            int i = 0;
            foreach (var row in m)
            {
                if (row.All(v => IsZero(v)) && !IsZero(free[i]))
                    return true;
                i++;
            }
            return false;
        }

        void CopyData(double[][] m, double[] free, out double[][] newM, out double[] newFree)
        {
            newM = m.Select(row => row.ToArray()).ToArray();
            newFree = free = free.ToArray();
        }

        int ForwardGauss(double[][] m, double[] free, HashSet<int> lookedRows, HashSet<int> lookedCols)
        {
            int columnsCnt = 0;
            for (int j = 0; j < m[0].Length; ++j)
            {
                if (lookedCols.Contains(j))
                    continue;

                int i = FindInColumn(m, j, (v, ind) => !IsZero(v) && !lookedRows.Contains(ind));

                if (i > -1)
                {
                    SolveOneRow(m, free, i);
                    lookedRows.Add(i);
                    lookedCols.Add(j);
                    columnsCnt++;

                    if (CheckNoSolution(m, free))
                        throw new NoSolutionException("");
                }
            }

            return columnsCnt;
        }

        void DeleteZeroLines(ref double[][] m, ref double[] free)
        {
            double[][] mCopy = m;
            var oldFreeMembers = free.ToArray();
            free = free.Where(
                (f, i) => !IsZero(f) || mCopy[i].Any(v => !IsZero(v))
            ).ToArray();
            m = m.Where(
                (row, i) => row.Any(v => !IsZero(v)) || !IsZero(oldFreeMembers[i])
            ).ToArray();
        }

        double[] BackGauss(double[][] m, double[] free)
        {
            double[] answer = new double[m[0].Length];

            for (int i = 0; i < m.Length; ++i)
            {
                int varInd = Array.FindIndex(m[i], v => !IsZero(v));
                answer[varInd] = Round(free[i] / m[i][varInd]);
            }
            return answer;
        }


        public double[] Solve(double[][] matrix, double[] freeMembers, HashSet<int> lookedCols = null)
        {
            CopyData(
                matrix, freeMembers,
                out double[][] matrixCopy, out double[] freeMembersCopy
            );

            var lookedRows = new HashSet<int>();
            lookedCols = lookedCols == null ? new HashSet<int>() : null;

            int columnsCnt = ForwardGauss(matrixCopy, freeMembersCopy, lookedRows, lookedCols);
            double[] ans = new double[matrixCopy[0].Length];
            DeleteZeroLines(ref matrixCopy, ref freeMembersCopy);

            if (matrixCopy.Length == columnsCnt && matrixCopy.Length > 0)
                return BackGauss(matrixCopy, freeMembersCopy);
            else if (matrixCopy.Length == 0)
                return ans;
            else
                return Solve(matrixCopy, freeMembersCopy, lookedCols);
        }

        void SolveOneRow(double[][] m, double[] free, int i)
        {
            int cur_j = Array.FindIndex(m[i], v => !IsZero(v));
            for (int cur_i = 0; cur_i < m.Length; ++cur_i)
            {
                if (IsZero(m[cur_i][cur_j]) || cur_i == i)
                    continue;

                double k = -m[cur_i][cur_j] / m[i][cur_j];

                for (int j = 0; j < m[0].Length; ++j)
                    m[cur_i][j] = Round(k * m[i][j] + m[cur_i][j]);

                free[cur_i] = Round(k * free[i] + free[cur_i]);
            }
        }

        double Round(double v) => Math.Round(v, 10);

        bool IsZero(double v) => Math.Abs(v) < 1e-6;
    }
}
