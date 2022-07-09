using System.Net.Mime;
using UCR.Domain.HockeyLeague.Repositories;
using UCR.Infrastructure.HockeyLeague;
using UCR.Infrastructure.HockeyLeague.Repositories;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
namespace UCR.Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddInfrastructureLayer(
        this IServiceCollection services,
        string connectionString)
        {
            services.AddDbContext<HockeyLeagueDbContext>(options => options.UseSqlServer(connectionString));
            services.AddScoped<ITeamRepository, TeamRepository>();
            return services;
        }
    }
}