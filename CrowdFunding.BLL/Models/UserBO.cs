using CrowdFunding.DAL.Models;
using CrowdFunding.DAL.Models.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.BLL.Models
{
    public class UserBO : BaseEntity
    {
		public string LastName { get; set; }
		public string FirstName { get; set; }
		public string Login { get; set; }
		public string Email { get; set; }
		public string Password { get; set; }
		public DateTime? BirthDate { get; set; }
		public string Salt { get; set; }
		public bool Active { get; set; }
		public UserRole Role { get; set; }

		public UserBO()
		{

		}

		public UserBO(UserDAL user)
		{
			Id = user.user_id;
			FirstName = user.first_name;
			LastName = user.last_name;
			Login = user.login;
			Email = user.email;
			Password = user.password;
			BirthDate = user.birth_date;
			Salt = user.salt;
			Role = (user.role == "SIMPLE_USER") ? UserRole.SIMPLE_USER : (user.role == "ADMIN") ? UserRole.ADMIN : UserRole.COMPANY;
			Active = user.active;
		}

		public UserBO(int id, string login, string email, string firstName, string lastName, string password, DateTime? birthDate, bool active, string salt, UserRole role)
		{
			Id = id;
			Login = login;
			Email = email;
			FirstName = firstName;
			LastName = lastName;
			Password = password;
			BirthDate = birthDate;
			Active = active;
			Salt = salt;
			Role = role;
		}
	}
}
