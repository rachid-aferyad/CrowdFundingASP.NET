using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Repositories
{
    public class IFundingRepository<TId, TEntity> : IRepository<TId, TEntity>
    {
        public bool Delete(TId id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<TEntity> GetAll()
        {
            throw new NotImplementedException();
        }

        public TEntity GetById(TId id)
        {
            throw new NotImplementedException();
        }

        public TId Insert(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public bool Update(TId id, TEntity entity)
        {
            throw new NotImplementedException();
        }
    }
}
