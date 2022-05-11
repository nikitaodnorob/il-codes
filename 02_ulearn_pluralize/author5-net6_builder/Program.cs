namespace Rectangles
{
    public static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var builder = new PluralizeFormatterBuilder();

            var formatter = builder
                .EnableRubles()
                .EnableDollars()
                .Build();
        }
    }
}