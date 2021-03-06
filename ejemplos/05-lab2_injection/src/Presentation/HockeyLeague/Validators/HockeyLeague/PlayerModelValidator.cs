using System;
using FluentValidation;
using Lab2.Domain.Core.Helpers;
using Lab2.Domain.Core.ValueObjects;
using Lab2.Domain.HockeyLeague.ValueObjects;
using Lab2.Presentation.HockeyLeague.Models.HockeyLeague;

namespace Lab2.Presentation.HockeyLeague.Validators.HockeyLeague
{
    public class PlayerModelValidator : AbstractValidator<PlayerModel>
    {
        public PlayerModelValidator()
        {
            // check name
            RuleFor(p => p)
                .Custom((model, context) => {
                    var result = RequiredString.TryCreate(model.Name);
                    if (!result.IsFail)
                        return;

                    var error = result.Fail();
                    var errorMessage = error switch
                    {
                        RequiredString.IsNullOrWhitespace _ => "Please type the player's name.",
                        RequiredString.TooLong tooLong => $"Please type less than {tooLong.MaxLength} characters.",
                        _ => throw new ArgumentOutOfRangeException(nameof(error))
                    };

                    context.AddFailure(nameof(PlayerModel.Name), errorMessage);
                });

            // check jersey
            RuleFor(p => p)
                .Custom((model, context) => {
                    var result = JerseyNumber.TryCreate(model.Jersey);
                    if (!result.IsFail)
                        return;

                    var error = result.Fail();
                    var errorMessage = error switch
                    {
                        JerseyNumber.NumberIsNull => $"Please choose a jersey number.",
                        JerseyNumber.NumberTooSmall tooSmall => $"Please choose a jersey number larger than or equal to {tooSmall.MinNumber}.",
                        JerseyNumber.NumberTooBig tooBig => $"Please choose a jersey number smaller than or equal to {tooBig.MaxNumber}.",
                        _ => throw new ArgumentOutOfRangeException(nameof(error))
                    };

                    context.AddFailure(nameof(PlayerModel.Jersey), errorMessage);
                });
        }
    }
}
