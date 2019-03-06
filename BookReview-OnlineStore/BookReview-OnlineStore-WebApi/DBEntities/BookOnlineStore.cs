using System;

namespace DBEntities
{
    public class BookOnlineStore
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Isbn { get; set; }
        public string OnlineLink { get; set; }
    }
}
