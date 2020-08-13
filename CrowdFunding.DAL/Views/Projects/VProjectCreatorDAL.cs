using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Views.Projects
{
    public class VProjectCreatorDAL
    {
        public int project_id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string video_link { get; set; }
        public bool active { get; set; }
        public bool activated_for_validation { get; set; }
        public string level_type { get; set; }
        
        //Creation
        public int creator_id { get; set; }
        public DateTime creation_date { get; set; }

        //Validation
        public DateTime? validation_date { get; set; }

        //Category
        public int category_id { get; set; }
        public string category_name { get; set; }

        //Level
        public int level_id { get; set; }
        public string level_title { get; set; }

        //Modification
        public DateTime modification_date { get; set; }

        //Rejection
        public DateTime rejection_date { get; set; }
        public string rejection_comment { get; set; }

        //Funding
        public decimal funding_amount { get; set; }
        public DateTime funding_date { get; set; }
    }
}
