using CrowdFunding.DAL.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Mappers
{
    public static class UserMapper
    {
        public static UserDAL ToUserDAL(this IDataRecord reader)
        {
            if (reader == null) return null;
            return new UserDAL
            {
                user_id = (int)reader[nameof(UserDAL.user_id)],
                login = (string)reader[nameof(UserDAL.login)],
                email = (string)reader[nameof(UserDAL.email)],
                last_name = (string)reader[nameof(UserDAL.last_name)],
                first_name = (string)reader[nameof(UserDAL.first_name)],
                birth_date = (DateTime)reader[nameof(UserDAL.birth_date)],
                active = (bool)reader[nameof(UserDAL.active)],
                role = (string)reader[nameof(UserDAL.role)]
            };
        }

        public static CompanyDAL ToCompanyDAL(this IDataRecord reader)
        {
            if (reader == null) return null;
            return new CompanyDAL
            {
                company_id = (int)reader[nameof(CompanyDAL.company_id)],
                name = (string)reader[nameof(CompanyDAL.name)],
                vat_number = (string)reader[nameof(CompanyDAL.vat_number)],
                address_mail_box = (string)reader[nameof(CompanyDAL.address_mail_box)],
                address_number = (int)reader[nameof(CompanyDAL.address_number)],
                address_street = (string)reader[nameof(CompanyDAL.address_street)],
                address_zip_code = (int)reader[nameof(CompanyDAL.address_zip_code)],
                address_city = (string)reader[nameof(CompanyDAL.address_city)],
                address_country = (string)reader[nameof(CompanyDAL.address_country)]
            };
        }
    }
}
