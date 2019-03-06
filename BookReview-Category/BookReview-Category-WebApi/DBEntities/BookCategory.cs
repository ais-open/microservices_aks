using System;

namespace DBEntities
{
    public class BookCategory
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Isbn { get; set; }
    }
}
