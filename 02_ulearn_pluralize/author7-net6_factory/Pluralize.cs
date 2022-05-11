namespace Rectangles
{
    public interface IPluralizeFormatter
    {
        string Pluralize(int count);
    }

    public interface IPluralizeFormatterFactory
    {
        IPluralizeFormatter MakePluralizeFormatter();
    }
    
    public class RublesPluralizeFormatter : IPluralizeFormatter
    {
        public string Pluralize(int count)
        {
            if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "рублей";
            if (count % 10 == 1) return "рубль";
            return "рубля";
        }
    }
    
    public class DollarPluralizeFormatter : IPluralizeFormatter
    {
        public string Pluralize(int count)
        {
            if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "долларов";
            if (count % 10 == 1) return "доллар";
            return "доллара";
        }
    }

    public class RublesPluralizeFormatterFactory : IPluralizeFormatterFactory
    {
        public IPluralizeFormatter MakePluralizeFormatter()
        {
            return new RublesPluralizeFormatter();
        }
    }
    
    public class DollarsPluralizeFormatterFactory : IPluralizeFormatterFactory
    {
        public IPluralizeFormatter MakePluralizeFormatter()
        {
            return new DollarPluralizeFormatter();
        }
    }
}