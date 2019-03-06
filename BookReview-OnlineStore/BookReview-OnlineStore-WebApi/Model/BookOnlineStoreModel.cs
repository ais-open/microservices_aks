using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookOnlineStoreWebApi.Model
{
    public class BookOnlineStoreModel
    {
        public Int32 Id { get; set; }
        public String Name { get; set; }
        public String OnlineLink { get; set; }
        public String ISBN { get; set; }
    }
}
