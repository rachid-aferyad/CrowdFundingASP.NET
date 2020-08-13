using CrowdFunding.BLL.Models;
using CrowdFunding.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.BLL.Mappers
{
    public static class UserMapper
    {
        public static UserDAL ToDAL(this UserBO entity)
        {
            if (entity == null) return null;
            return new UserDAL
            {
                user_id = entity.Id,
                login = entity.Login,
                email = entity.Email,
                first_name = entity.FirstName,
                last_name = entity.LastName,
                password = entity.Password,
                birth_date = entity.BirthDate,
                active = entity.Active,
                salt = entity.Salt,
                role = entity.Role.ToString()   //(entity.Role == C.UserRole.ADMIN) ? "ADMIN" : (entity.Role == C.UserRole.SIMPLE_USER) ? "SIMPLE_USER" : "NOT_ASSIGNED"
            };
        }
        public static UserBO ToBLL(this UserDAL entity)
        {
            if (entity == null) return null;
            return new UserBO(entity);
        }
    }
}
