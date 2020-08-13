using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
    public class BankAccountDAL
    {
        public int bank_account_id { get; set; }
        public string account_number { get; set; }
        public string country { get; set; }
        public int project_id { get; set; }
    }
}
