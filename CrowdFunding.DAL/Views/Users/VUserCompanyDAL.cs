using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models.Users
{
    public class UserCompanyDAL
    {
		//User
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

		//Company
		public int company_id { get; set; }
		public string company_name { get; set; }
		public string company_vat_number { get; set; }
		public string company_address_mail_box { get; set; }
		public int company_address_number { get; set; }
		public string company_address_street { get; set; }
		public string company_address_city { get; set; }
		public int company_address_zip_code { get; set; }
		public string company_address_country { get; set; }

	}
}
