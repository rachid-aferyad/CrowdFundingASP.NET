using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
    public class CompanyDAL
    {
        public int company_id { get; set; }
        public string name { get; set; }
        public string vat_number { get; set; }
        public string address_mail_box { get; set; }
        public int address_number { get; set; }
        public string address_street { get; set; }
        public string address_city { get; set; }
        public int address_zip_code { get; set; }
        public string address_country { get; set; }
    }
}
