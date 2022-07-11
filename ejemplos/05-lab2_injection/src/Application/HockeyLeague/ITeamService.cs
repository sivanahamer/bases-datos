using System.Collections.Generic;
using System.Threading.Tasks;
using Lab2.Domain.HockeyLeague.DTOs;
using Lab2.Domain.HockeyLeague.Entities;

namespace Lab2.Application.HockeyLeague
{
    public interface ITeamService
    {
        Task<IEnumerable<TeamDTO>> GetTeamsAsync();
        Task<Team?> GetTeamByIdAsync(string id);
        Task AddPlayerToTeamRosterAsync(Team team, Player player);
        Task DeletePlayerAndRemoveFromTeamRosterAsync(Team team, Player player);
    }
}
