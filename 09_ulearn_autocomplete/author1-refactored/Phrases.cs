using System;
using System.Collections;
using System.Collections.Generic;

namespace Autocomplete
{
    public class Phrases : IReadOnlyList<string>
    {
       
        private readonly string[] nouns;
        private readonly string[] verbs;
        private readonly string[] adjectives;

        public Phrases(string[] verbs, string[] adjectives, string[] nouns)
        {
            this.adjectives = adjectives;
            this.nouns = nouns;
            this.verbs = verbs;
        }

        // Это называется вычисляемое свойство с геттером.
        public virtual int Length => adjectives.Length * nouns.Length * verbs.Length;

        // Это называется индексатор c геттером. Он позволяет писать так var x = phrases[i];
        public virtual string this[int index]
        {
            get
            {
                if (index < 0) throw new IndexOutOfRangeException("index = " + index);
                var ni = index % nouns.Length;
                var vi = index / (nouns.Length * adjectives.Length) % verbs.Length;
                var ai = index / nouns.Length % adjectives.Length;
                return verbs[vi] + " " + adjectives[ai] + " " + nouns[ni];
            }
        }

        public IEnumerator<string> GetEnumerator()
        {
            for (var i = 0; i < Length; i++)
                yield return this[i];
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public int Count => Length;

        public override string ToString()
        {
            string res = string.Format("Size: {3}. Verbs: {0}, Adjectives: {1}, Nouns: {2}", verbs.Length, adjectives.Length,
                nouns.Length, Length);
            return res;
        }
    }
}