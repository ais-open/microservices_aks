using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookWebApi.Model
{
    public class BookModel
    {
        public Int32 Id { get; set; }
        public String Name { get; set; }
        public Int32 Price { get; set; }
        public Decimal Discount { get; set; }
        public String Language { get; set; }
        public String Image { get; set; }
        public String Details { get; set; }
        public String AuthorName { get; set; }
        public String PublisherName { get; set; }
        public Int32? PublicationYear { get; set; }
        public String ISBN { get; set; }
    }
}
