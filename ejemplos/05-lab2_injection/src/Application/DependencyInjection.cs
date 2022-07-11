using Lab2.Application.HockeyLeague;
using Lab2.Application.HockeyLeague.Implementations;
using Microsoft.Extensions.DependencyInjection;

namespace Lab2.Application
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddApplicationLayer(this IServiceCollection services)
        {
            services.AddTransient<ITeamService, TeamService>();

            return services;
        }

    }
}
