using System.Drawing;

namespace Recognizer
{
    public class Pixel
    {
        public Pixel(byte r, byte g, byte b)
        {
            G = g;
            B = b;
            R = r;
        }

        public Pixel(Color color)
        {
            B = color.B;
            G = color.G;
            
            R = color.R;
        }

        public byte R { get; }
        public byte G { get; }
        public byte B { get; }

        public override string ToString()
        {
            return string.Format("Pixel({0}, {1}, {2})", R, G, B);
        }
    }
}