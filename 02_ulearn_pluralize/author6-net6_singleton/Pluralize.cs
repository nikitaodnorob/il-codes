namespace Rectangles
{
    public class PluralizeFormatter
    {
        private static PluralizeFormatter? instance = null;
        
        private PluralizeFormatter() { }

        public static PluralizeFormatter GetInstance()
        {
            if (instance == null) instance = new PluralizeFormatter();
            return instance;
        }

        public string PluralizeRubles(int count)
        {
            if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "рублей";
            if (count % 10 == 1) return "рубль";
            return "рубля";
        }
        
        public string PluralizeDollars(int count)
        {
            if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "долларов";
            if (count % 10 == 1) return "доллар";
            return "доллара";
        }
    }
}