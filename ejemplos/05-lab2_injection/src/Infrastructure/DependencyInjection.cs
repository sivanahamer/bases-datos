using System.Net.Mime;
using Lab2.Domain.HockeyLeague.Repositories;
using Lab2.Infrastructure.HockeyLeague;
using Lab2.Infrastructure.HockeyLeague.Repositories;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace Lab2.Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddInfrastructureLayer( this IServiceCollection services, string connectionString)
        {
            services.AddDbContext<HockeyLeagueDbContext>(options =>
                options.UseSqlServer(connectionString));

            services.AddScoped<ITeamRepository, TeamRepository>();

            return services;
        }
    }
}
