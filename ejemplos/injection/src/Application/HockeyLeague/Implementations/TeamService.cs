using System.Collections.Generic;
using System.Threading.Tasks;
using UCR.Domain.HockeyLeague.DTOs;
using UCR.Domain.HockeyLeague.Entities;
using UCR.Domain.HockeyLeague.Repositories;

namespace UCR.Application.HockeyLeague.Implementations
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

        public async Task<Team?> GetTeamByIdAsync(long id)
        {
            return await _teamRepository.GetByIdAsync(id);
        }

        public async Task<IEnumerable<TeamDTO>> GetTeamsAsync()
        {
            return await _teamRepository.GetAllAsync();
        }
    }
}