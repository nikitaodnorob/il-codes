namespace Rectangles
{
    public static class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var rublesFormatter = new RublesPluralizeFormatterFactory().MakePluralizeFormatter();
            var dollarsFormatter = new DollarsPluralizeFormatterFactory().MakePluralizeFormatter();
        }
    }
}