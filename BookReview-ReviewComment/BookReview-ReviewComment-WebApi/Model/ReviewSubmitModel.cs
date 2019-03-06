using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ReviewCommentWebApi.Model
{
    public class ReviewSubmitModel
    {
        public string Name { get; set; }

        public string ISBN { get; set; }

        public string ReviewComment { get; set; }

        public int Rating { get; set; }

        public string ReviewBy { get; set; }
    }
}
