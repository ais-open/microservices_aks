using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CategoryWebApi.Model
{
    public class BookCategoryModel
    {
        public Int32 Id { get; set; }
        public String Name { get; set; }
        public String Category { get; set; }
        public String ISBN { get; set; }
    }
}
