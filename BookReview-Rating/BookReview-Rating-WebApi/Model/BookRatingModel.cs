using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RatingWebApi.Model
{
    public class BookRatingModel
    {
        public Int32 Id { get; set; }
        public String Name { get; set; }
        public Decimal Rating { get; set; }
        public String ISBN { get; set; }
    }
}
