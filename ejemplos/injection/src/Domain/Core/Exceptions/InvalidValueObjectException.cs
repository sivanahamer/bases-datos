using System;
namespace UCR.Domain.Core.Exceptions
{
    public class InvalidValueObjectException : DomainException
    {
        public InvalidValueObjectException(string? message) : base(message)
        {
        }
    }
}