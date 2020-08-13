using CrowdFunding.BLL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrowdFunding.ASP.Models
{
    public class UserPL
    {
		public int Id { get; set; }
		public string LastName { get; set; }
		public string FirstName { get; set; }
		public string Login { get; set; }
		public string Email { get; set; }
		public string Password { get; set; }
		public DateTime? BirthDate { get; set; }
		public string Salt { get; set; }
		public bool Active { get; set; }
		public UserRole Role { get; set; }

        public UserPL()
        {

        }
        public UserPL(UserBO entity)
        {
            Id = entity.Id;
            Login = entity.Login;
            Email = entity.Email;
            FirstName = entity.FirstName;
            LastName = entity.LastName;
            Password = entity.Password;
            BirthDate = entity.BirthDate;
            Active = entity.Active;
            Salt = entity.Salt;
            Role = entity.Role;
        }
    }
}