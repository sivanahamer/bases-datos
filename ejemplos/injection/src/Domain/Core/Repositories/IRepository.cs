using System.Threading.Tasks;
using UCR.Domain.Core.Entities;
namespace UCR.Domain.Core.Repositories
{
    public interface IRepository<TAggregateRoot> where TAggregateRoot : AggregateRoot
    {
        IUnitOfWork UnitOfWork { get; }
    }
}