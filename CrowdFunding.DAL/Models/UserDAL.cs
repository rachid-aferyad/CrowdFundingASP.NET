using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
	public class UserDAL
	{
		public int user_id { get; set; }
		public string login { get; set; }
		public string email { get; set; }
		public string last_name { get; set; }
		public string first_name { get; set; }
		public string password { get; set; }
		public string salt { get; set; }
		public DateTime? birth_date { get; set; }
		public bool active { get; set; }
		public string role { get; set; }
	}
}
