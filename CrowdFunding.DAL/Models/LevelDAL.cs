using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrowdFunding.DAL.Models
{
    public class LevelDAL
    {
        public int level_id { get; set; }
        public string title { get; set; }
        public decimal amount { get; set; }
        public string award { get; set; }
    }
}
