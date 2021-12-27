namespace Pluralize
{
	public static class PluralizeTask
	{
		public static string PluralizeRubles(int count)
		{
			if (count % 100 > 10 && count % 100 < 15 || count % 10 == 0 || count % 10 > 4) return "рублей";
			if (count % 10 == 1) return "рубль";
			return "рубля";
		}
	}
}