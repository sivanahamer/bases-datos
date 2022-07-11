using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Lab2.Domain.Core.Repositories;
using Lab2.Domain.HockeyLeague.DTOs;
using Lab2.Domain.HockeyLeague.Entities;
using Lab2.Domain.HockeyLeague.Repositories;
using Lab2.Infrastructure.Core;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Lab2.Domain.Core.ValueObjects;
using Lab2.Domain.Core.Helpers;
using Lab2.Domain.HockeyLeague.ValueObjects;

namespace Lab2.Infrastructure.HockeyLeague.Repositories
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
            //return await _dbContext.Teams
                //.Select(t => new TeamDTO(t.Id, t.Name))
                //.ToListAsync();
              
            List<TeamDTO> results = new List<TeamDTO>();
            using (SqlConnection connection = new SqlConnection(_dbContext.Database.GetDbConnection().ConnectionString))

            {
                await connection.OpenAsync();


                //Gets all the teams

                SqlCommand command = new SqlCommand("SELECT Id, Name FROM TEAMS;", connection);
                SqlDataReader reader = await command.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    string? id = reader[0].ToString();
                    RequiredString? name = RequiredString.TryCreate((string?)reader[1]).Success();
                    results.Add(new TeamDTO(id, name));
                }

                await connection.CloseAsync();

            }

            return results;

        }


        public async Task<Team?> GetTeamByIDAsync(string id)
        {
            Team? team = null;


            using (SqlConnection connection = new SqlConnection(_dbContext.Database.GetDbConnection().ConnectionString))

            {
                await connection.OpenAsync();


                //Gets the team name

                SqlCommand command = new SqlCommand("SELECT Name FROM TEAMS WHERE Id = '" + id + "';", connection);
                SqlDataReader reader = await command.ExecuteReaderAsync();

                if (await reader.ReadAsync())
                {
                    string? value = reader[0].ToString();
                    RequiredString? name = RequiredString.TryCreate(value).Success();
                    team = new Team(name);
                }

                await connection.CloseAsync();

            }

            return team;
        }

        public async Task<Team?> GetRosterByTeamIDAsync(string id, Team team)
        {
            using (SqlConnection connection = new SqlConnection(_dbContext.Database.GetDbConnection().ConnectionString))

            {
                await connection.OpenAsync();

                SqlCommand command = new SqlCommand("SELECT Name, JerseyNumber FROM PLAYERS WHERE TeamId = '" + id + "';", connection);
                SqlDataReader reader = await command.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    string? nameValue = reader[0].ToString();
                    int? jerseyNumberValue = (int?)reader[1];

                    RequiredString? name = RequiredString.TryCreate(nameValue).Success();
                    JerseyNumber? jerseyNumber = JerseyNumber.TryCreate(jerseyNumberValue).Success();
                    Player player = new Player(name, team, jerseyNumber);
                    team.AddPlayerToRoster(player);
                }

                await connection.CloseAsync();
            }

            return team;
        }


        public async Task<Team?> GetByIdAsync(string id)
        {
            //return await _dbContext.Teams
            //.Include(t => t.Roster)
            //.FirstOrDefaultAsync(t => t.Id == id);

            // Include Include https://docs.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure/work-with-data-in-asp-net-core-apps#fetching-related-data


            Team? team = await GetTeamByIDAsync(id);

            if (team is not null)
                return await GetRosterByTeamIDAsync(id, team);
            return null;

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
