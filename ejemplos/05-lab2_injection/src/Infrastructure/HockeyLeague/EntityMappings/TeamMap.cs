using Lab2.Domain.Core.Helpers;
using Lab2.Domain.Core.ValueObjects;
using Lab2.Domain.HockeyLeague.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Lab2.Infrastructure.HockeyLeague.EntityMappings
{
    public class TeamMap : IEntityTypeConfiguration<Team>
    {
        public void Configure(EntityTypeBuilder<Team> builder)
        {
            builder.ToTable("Teams");

            builder.HasKey(t => t.Id);

            builder.Property(t => t.Name)
                .HasConversion(r => r.Value,
                    s => RequiredString.TryCreate(s).Success());

            builder.HasMany(t => t.Roster)
                .WithOne(p => p.Team!);

            builder.HasIndex(t => t.Name)
                .IsUnique();
        }
    }
}
