using System.Linq;

namespace Names
{
    public class HistogramData
    {
        public HistogramData(string title, string[] xLabels, double[] yValues)
        {
            YValues = yValues;
            Title = title;
            XLabels = xLabels;
        }

        public string Title { get; }
        public string[] XLabels { get; }
        public double[] YValues { get; }

        public bool Equals(HistogramData other)
        {
            bool result = other.XLabels.SequenceEqual(XLabels);
            result = result && other.YValues.SequenceEqual(YValues);
            return result;
        }
    }
}