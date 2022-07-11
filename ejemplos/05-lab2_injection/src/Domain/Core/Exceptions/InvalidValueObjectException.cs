using System;

namespace Lab2.Domain.Core.Exceptions
{
    public class InvalidValueObjectException : DomainException
    {
        public InvalidValueObjectException(string? message) : base(message)
        {
        }
    }
}