using System;

namespace DBEntities
{
    public class BookReview
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Rating { get; set; }
        public string ReviewComments { get; set; }
        public string ReviewedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Isbn { get; set; }
    }
}
