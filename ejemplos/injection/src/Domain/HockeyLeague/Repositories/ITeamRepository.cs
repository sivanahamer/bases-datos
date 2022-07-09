using System.Collections.Generic;
using System.Threading.Tasks;
using UCR.Domain.Core.Repositories;
using UCR.Domain.HockeyLeague.DTOs;
using UCR.Domain.HockeyLeague.Entities;
namespace UCR.Domain.HockeyLeague.Repositories
{
    public interface ITeamRepository : IRepository<Team>
    {
        Task SaveAsync(Team team);
        Task<IEnumerable<TeamDTO>> GetAllAsync();
        Task<Team?> GetByIdAsync(long id);
        Task DeletePlayer(Player player);
    }
}