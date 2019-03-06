using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ReviewCommentWebApi.Model
{
    public class BookReviewModel
    {
        public Int32 Id { get; set; }
        public String Name { get; set; }
        public Int32 Rating { get; set; }
        public String ReviewComments { get; set; }
        public String ReviewedBy { get; set; }
        public String ISBN { get; set; }
        public DateTime? CreatedOn { get; set; }
    }
}
