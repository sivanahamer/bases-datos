using UCR.Domain.HockeyLeague.Entities;
using UCR.Infrastructure.Core;
using UCR.Infrastructure.HockeyLeague.EntityMappings;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
namespace UCR.Infrastructure.HockeyLeague
{
    public class HockeyLeagueDbContext : ApplicationDbContext
    {
        public HockeyLeagueDbContext(DbContextOptions options, ILogger<HockeyLeagueDbContext> logger) : base(options, logger)
        {}

        public DbSet<Team> Teams { get; set; } = null!;
        public DbSet<Player> Players { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new TeamMap());
            modelBuilder.ApplyConfiguration(new PlayerMap());
        }
    }
}