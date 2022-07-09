using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UCR.Domain.Core.Repositories;
using UCR.Domain.HockeyLeague.DTOs;
using UCR.Domain.HockeyLeague.Entities;
using UCR.Domain.HockeyLeague.Repositories;
using UCR.Infrastructure.Core;
using Microsoft.EntityFrameworkCore;
namespace UCR.Infrastructure.HockeyLeague.Repositories
{
    internal class TeamRepository : ITeamRepository
    {
        private readonly HockeyLeagueDbContext _dbContext;
        public IUnitOfWork UnitOfWork => _dbContext;
        public TeamRepository(HockeyLeagueDbContext unitOfWork)
        {
            _dbContext = unitOfWork;
        }
        public async Task<IEnumerable<TeamDTO>> GetAllAsync()
        {
            return await _dbContext.Teams
            .Select(t => new TeamDTO(t.Id, t.Name))
            .ToListAsync();
        }
        public async Task<Team?> GetByIdAsync(long id)
        {
            return await _dbContext.Teams
            .Include(t => t.Roster)
            .FirstOrDefaultAsync(t => t.Id == id);
        }
        /// <summary>
        /// Saves aggregate and commits changes
        /// </summary>
        public async Task SaveAsync(Team team)
        {
            _dbContext.Update(team);
            await _dbContext.SaveEntitiesAsync();
        }
        public Task DeletePlayer(Player player)
        {
            _dbContext.Remove(player);
            return Task.CompletedTask;
        }
    }
}