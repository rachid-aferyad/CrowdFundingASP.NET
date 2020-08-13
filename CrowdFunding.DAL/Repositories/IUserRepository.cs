using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Repositories
{
    public interface IUserRepository<TId, TEntity> : IRepository<TId, TEntity>
    {
        TEntity Check(TEntity entity);
    }
}
