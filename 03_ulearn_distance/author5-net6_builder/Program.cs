namespace Rectangles
{
    public static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var builder = new DistanceBuilder();

            var distance = builder
                .EnablePointDistance()
                .EnableGetDistanceToSegment()
                .Build();
        }
    }
}