namespace Rectangles
{
    public static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var factory = new RectangleCounterFactory();
            var counter = factory.MakeRectangleCounter();
        }
    }
}