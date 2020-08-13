using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
    public class FundingDAL
    {
        public int funder_id { get; set; }
        public int project_id { get; set; }
        public decimal amount { get; set; }
        public DateTime funding_date { get; set; }
    }
}
