using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Views.Projects
{
    class VProjectListing
    {
        public int project_id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string video_link { get; set; }
        public string level_type { get; set; }

        //Creation
        public DateTime creation_date { get; set; }

        //Funding
        public decimal total_funding { get; set; }
    }
}
