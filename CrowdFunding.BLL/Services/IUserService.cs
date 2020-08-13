using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.BLL.Services
{
    public interface IUserService<TId, TEntity> : IService<TId, TEntity>
    {
        TEntity Check(TEntity entity);
    }
}
