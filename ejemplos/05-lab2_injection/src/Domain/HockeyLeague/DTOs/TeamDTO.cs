using Lab2.Domain.Core.ValueObjects;

namespace Lab2.Domain.HockeyLeague.DTOs
{
    public class TeamDTO
    {
        public string Id { get; }
        public RequiredString Name { get; }

        public TeamDTO(string id, RequiredString name)
        {
            Id = id;
            Name = name;
        }
    }
}
