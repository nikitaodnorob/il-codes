using System.Linq;

namespace Names
{
    public class HeatmapData
    {
        public HeatmapData(string title, double[,] heat, string[] xLabels, string[] yLabels)
        {
            Title = title;
            Heat = heat;
            XLabels = xLabels;
            YLabels = yLabels;
        }

        public double[,] Heat { get; }
        public string[] XLabels { get; }
        public string Title { get; }
        public string[] YLabels { get; }
        

        public bool Equals(HeatmapData other)
        {
            return Enumerable.Range(0, 2)
                       .All(dimension =>
                           Heat.GetLength(dimension) == other.Heat.GetLength(dimension))
                   && Heat
                       .Cast<double>()
                       .SequenceEqual(other.Heat
                           .Cast<double>());
        }
    }
}