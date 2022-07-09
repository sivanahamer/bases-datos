using UCR.Domain.Core.Helpers;
using UCR.Domain.Core.ValueObjects;
using UCR.Domain.HockeyLeague.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
namespace UCR.Infrastructure.HockeyLeague.EntityMappings
{
    public class TeamMap : IEntityTypeConfiguration<Team>
    {
        public void Configure(EntityTypeBuilder<Team> builder)
        {
            builder.ToTable("Teams");

            builder.HasKey(t => t.Id);

            builder.Property(t => t.Name)
                .HasConversion(r => r.Value, s => RequiredString.TryCreate(s).Success());
            builder.HasMany(t => t.Roster)
                .WithOne(p => p.Team!);

            builder.HasIndex(t => t.Name)
                .IsUnique();
        }
    }
}