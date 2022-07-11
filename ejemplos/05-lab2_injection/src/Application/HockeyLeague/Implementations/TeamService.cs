using System.Collections.Generic;
using System.Threading.Tasks;
using Lab2.Domain.HockeyLeague.DTOs;
using Lab2.Domain.HockeyLeague.Entities;
using Lab2.Domain.HockeyLeague.Repositories;

namespace Lab2.Application.HockeyLeague.Implementations
{
    internal class TeamService : ITeamService
    {
        private readonly ITeamRepository _teamRepository;

        public TeamService(ITeamRepository teamRepository)
        {
            _teamRepository = teamRepository;
        }

        public async Task AddPlayerToTeamRosterAsync(Team team, Player player)
        {
            player.AssignTeam(team);
            team.AddPlayerToRoster(player);

            await _teamRepository.SaveAsync(team);
        }

        public async Task DeletePlayerAndRemoveFromTeamRosterAsync(Team team, Player player)
        {
            team.RemovePlayerFromRoster(player);
            await _teamRepository.DeletePlayer(player);
            await _teamRepository.SaveAsync(team);
        }

        public async Task<Team?> GetTeamByIdAsync(string id)
        {
            return await _teamRepository.GetByIdAsync(id);
        }

        public async Task<IEnumerable<TeamDTO>> GetTeamsAsync()
        {
            return await _teamRepository.GetAllAsync();
        }
    }
}
