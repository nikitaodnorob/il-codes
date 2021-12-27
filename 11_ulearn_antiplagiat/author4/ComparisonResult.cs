using System;
using System.Collections.Generic;

namespace Antiplagiarism
{
    public class ComparisonResult
    {
   
        public readonly List<string> Document2;
        public readonly List<string> Document1;
        public readonly double Distance_;

        public ComparisonResult(List<string> document1, List<string> document2, double distance)
        {
            Document1 = document1;
            Document2 = document2;
            Distance_ = distance;
        }

        public override bool Equals(object obj)
        {
            bool res = false;
            if (obj == this) res = true;
            else if (!(obj is ComparisonResult item)) res = false;
            else res = Equals(item);
            return res;
        }

        protected bool Equals(ComparisonResult other)
        {
            bool cond1 = Equals(Document1, other.Document1) && Equals(Document2, other.Document2);
            bool cond2 = Equals(Document1, other.Document2) && Equals(Document2, other.Document1);
            bool cond3 = AreEquals(Distance_, other.Distance_);
            return (cond1 || cond2) && cond3;
        }

        public static bool AreEquals(double first, double second)
        {
            return Math.Abs(first - second) <= 1e-6;
        }

        public override string ToString()
        {
            return $"{nameof(Distance_)}: {Distance_}";
        }

        public override int GetHashCode()
        {
            unchecked
            {
                int hashCode = 0;
                if (Document1 != null)
                    hashCode = Document1.GetHashCode();
                hashCode = (hashCode * 397) ^ (Document2 != null ? Document2.GetHashCode() : 0);
                return hashCode;
            }
        }
    }
}