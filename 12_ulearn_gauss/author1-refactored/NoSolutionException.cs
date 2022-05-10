using System;
using System.Text;

namespace GaussAlgorithm
{
    public class NoSolutionException : Exception
    {
        public NoSolutionException(string message) : base(message)
        { }

        public NoSolutionException(double[][] initialMatrix, double[] freeMembers, double[][] matrixAfterSolve)
            : base(GetMessage(initialMatrix, freeMembers, matrixAfterSolve))
        { }

        private static string GetMessage(double[][] sourceMatrix, double[] freeMembers, double[][] solvedMatrix)
        {
            var builder = new StringBuilder();
            var sdmStr = solvedMatrix.StringFormatMatrix();
            var smStr = sourceMatrix.StringFormatMatrix();
            var freeMems = string.Join(", ", freeMembers);
            builder.Append("Initial matrix:" + Environment.NewLine + smStr + Environment.NewLine);
            builder.Append("Free members: [" + freeMems + "]" + Environment.NewLine);
            builder.Append("Matrix after Solve:" + Environment.NewLine + sdmStr);
            return builder.ToString();
        }
    }
}