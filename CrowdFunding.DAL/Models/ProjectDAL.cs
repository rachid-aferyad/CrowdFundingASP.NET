using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
    public class ProjectDAL
    {
        public int project_id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string video_link { get; set; }
        public bool active { get; set; }
        public bool activated_for_validation { get; set; }
        public DateTime creation_date { get; set; }
        public DateTime? validation_date { get; set; }
        public string level_type { get; set; }
        public int creator_id { get; set; }
        public int? validator_id { get; set; }
    }
}
