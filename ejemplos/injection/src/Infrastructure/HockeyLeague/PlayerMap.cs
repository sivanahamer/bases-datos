using UCR.Domain.Core.Helpers;
using UCR.Domain.Core.ValueObjects;
using UCR.Domain.HockeyLeague.Entities;
using UCR.Domain.HockeyLeague.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
namespace UCR.Infrastructure.HockeyLeague.EntityMappings
{
    public class PlayerMap : IEntityTypeConfiguration<Player>

    {
        public void Configure(EntityTypeBuilder<Player> builder)
        {
            builder.ToTable("Players");
            builder.HasKey(p => p.Id);
            builder.Property(p => p.Name)
            .HasConversion(
            r => r.Value,
            s => RequiredString.TryCreate(s).Success());
            builder.Property(p => p.JerseyNumber)
            .HasConversion(
            j => j.Number,
            n => JerseyNumber.TryCreate(n).Success());
        }
    }
}
