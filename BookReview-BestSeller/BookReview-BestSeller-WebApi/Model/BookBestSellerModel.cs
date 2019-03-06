using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BestSellerWebApi.Model
{
    public class BookBestSellerModel
    {
        public Int32 Id { get; set; }
        public String Name { get; set; }
        public String BestSeller { get; set; }
        public String ISBN { get; set; }
    }
}
