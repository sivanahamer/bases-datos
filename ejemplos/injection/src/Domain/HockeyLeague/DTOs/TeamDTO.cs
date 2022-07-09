using UCR.Domain.Core.ValueObjects;
namespace UCR.Domain.HockeyLeague.DTOs
{
    public class TeamDTO
    {
        public long Id { get; }
        public RequiredString Name { get; }
        public TeamDTO(long id, RequiredString name)
        {
            Id = id;
            Name = name;
        }
    }
}