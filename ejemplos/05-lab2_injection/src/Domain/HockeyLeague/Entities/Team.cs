using System;
using System.Collections.Generic;
using Lab2.Domain.Core.Entities;
using Lab2.Domain.Core.Exceptions;
using Lab2.Domain.Core.ValueObjects;

namespace Lab2.Domain.HockeyLeague.Entities
{
    public class Team : AggregateRoot
    {
        public const int MaxRosterSize = 30;

        private readonly List<Player> _roster;
        public RequiredString Name { get; }
        public IReadOnlyCollection<Player> Roster => _roster.AsReadOnly();

        public Team(RequiredString name)
        {
            _roster = new List<Player>();
            Name = name;
        }

        // for EFCore
        private Team()
        {
            Name = null!;
            _roster = null!;
        }

        public void AddPlayerToRoster(Player player)
        {
            if (_roster.Count >= MaxRosterSize)
                throw new DomainException("Roster is at it's maximum capacity.");

            if (_roster.Exists(p => p == player))
                throw new DomainException("Player is already in the team.");

            if (_roster.Exists(p => p.JerseyNumber == player.JerseyNumber))
                throw new DomainException(
                    "A player with the selected jersey number is already registered in the team.");

            _roster.Add(player);
            player.AssignTeam(this);
        }

        public void RemovePlayerFromRoster(Player player)
        {
            if (_roster.Exists(p => p == player))
            {
                _roster.Remove(player);
                player.AssignTeam(null);
            }
        }
    }
}