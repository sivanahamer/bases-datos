using System.Threading.Tasks;
using Lab2.Domain.Core.Entities;

namespace Lab2.Domain.Core.Repositories
{
    public interface IRepository<TAggregateRoot> where TAggregateRoot : AggregateRoot
    {
        IUnitOfWork UnitOfWork { get; }
    }
}