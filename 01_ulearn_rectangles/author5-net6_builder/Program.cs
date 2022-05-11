namespace Rectangles
{
    public static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var builder = new RectangleCounterBuilder();

            var counter = builder
                .EnableAreIntersected()
                .EnableIntersectionSquare()
                .EnableIndexOfInnerRectangle()
                .Build();
        }
    }
}