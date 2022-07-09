using System.Collections.Generic;
using UCR.Domain.Core.ValueObjects;
using LanguageExt;

namespace UCR.Domain.HockeyLeague.ValueObjects
{
    public class JerseyNumber : ValueObject
    {
        public const int MinNumber = 1;
        public const int MaxNumber = 99;
        public int Number { get; }
        private JerseyNumber(int number)
        {
            Number = number;
        }
        public static Validation<ValidationError, JerseyNumber> TryCreate(int? number)
        {
            if (number is null)
                return new NumberIsNull();
            if (number < MinNumber)
                return new NumberTooSmall(MinNumber);
            if (number > MaxNumber)
                return new NumberTooBig(MaxNumber);
            return new JerseyNumber(number.Value);
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Number;
        }

        public override string ToString()
        {
            return Number.ToString();
        }

        public abstract record ValidationError;

        public record NumberIsNull : ValidationError;

        public record NumberTooSmall(int MinNumber) : ValidationError;

        public record NumberTooBig(int MaxNumber) : ValidationError;

    }
}