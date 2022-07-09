using UCR.Domain.HockeyLeague.DTOs;
using UCR.Domain.HockeyLeague.Entities;

namespace UCR.Application.HockeyLeague
{
    public interface ITeamService
    {
        Task<IEnumerable<TeamDTO>> GetTeamsAsync();
        Task<Team?> GetTeamByIdAsync(long id);
        Task AddPlayerToTeamRosterAsync(Team team, Player player);
        Task DeletePlayerAndRemoveFromTeamRosterAsync(Team team, Player player);
    }
}