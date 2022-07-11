using System.Collections.Generic;
using System.Threading.Tasks;
using Lab2.Domain.Core.Repositories;
using Lab2.Domain.HockeyLeague.DTOs;
using Lab2.Domain.HockeyLeague.Entities;

namespace Lab2.Domain.HockeyLeague.Repositories
{
    public interface ITeamRepository : IRepository<Team>
    {
        Task SaveAsync(Team team);
        Task<IEnumerable<TeamDTO>> GetAllAsync();
        Task<Team?> GetByIdAsync(string id);
        Task DeletePlayer(Player player);
    }
}
