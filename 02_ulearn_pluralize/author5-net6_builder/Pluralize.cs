namespace Rectangles
{
    public class PluralizeFormatter
    {
        private bool rublesEnabled;
        private bool dollarsEnabled;
        
        public PluralizeFormatter(bool rublesEnabled, bool dollarsEnabled)
        {
            this.rublesEnabled = rublesEnabled;
            this.dollarsEnabled = dollarsEnabled;
        }

        public string PluralizeRubles(int count)
        {
            if (!rublesEnabled) throw new NotImplementedException();

            if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "рублей";
            if (count % 10 == 1) return "рубль";
            return "рубля";
        }
        
        public string PluralizeDollars(int count)
        {
            if (!dollarsEnabled) throw new NotImplementedException();

            if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "долларов";
            if (count % 10 == 1) return "доллар";
            return "доллара";
        }
    }

    public class PluralizeFormatterBuilder
    {
        private bool rublesEnabled;
        private bool dollarsEnabled;

        public PluralizeFormatterBuilder EnableRubles()
        {
            rublesEnabled = true;
            return this;
        }
        
        public PluralizeFormatterBuilder EnableDollars()
        {
            dollarsEnabled = true;
            return this;
        }

        public PluralizeFormatter Build()
        {
            return new PluralizeFormatter(rublesEnabled, dollarsEnabled);
        }
    }
}