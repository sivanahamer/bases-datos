using Lab2.Domain.Core.Entities;
using Lab2.Domain.Core.ValueObjects;
using Lab2.Domain.HockeyLeague.ValueObjects;

namespace Lab2.Domain.HockeyLeague.Entities
{
    public class Player : Entity
    {
        public RequiredString Name { get; }
        public Team? Team { get; private set; }
        public JerseyNumber JerseyNumber { get; }

        public Player(RequiredString name, Team? team, JerseyNumber jerseyNumber)
        {
            Name = name;
            Team = team;
            JerseyNumber = jerseyNumber;
        }

        // for EFCore
        private Player(JerseyNumber jerseyNumber)
        {
            JerseyNumber = jerseyNumber;
            Name = null!;
            Team = null!;
        }

        public void AssignTeam(Team? team)
        {
            Team = team;
        }
    }
}