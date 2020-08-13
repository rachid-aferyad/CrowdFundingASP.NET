using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
    public class RejectionDAL
    {
        public int rejector_id { get; set; }
        public int project_id { get; set; }
        public DateTime rejection_date { get; set; }
        public string comment { get; set; }
    }
}
