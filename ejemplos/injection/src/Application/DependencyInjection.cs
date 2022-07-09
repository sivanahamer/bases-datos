using UCR.Application.HockeyLeague;
using UCR.Application.HockeyLeague.Implementations;
using Microsoft.Extensions.DependencyInjection;

namespace UCR.Application
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