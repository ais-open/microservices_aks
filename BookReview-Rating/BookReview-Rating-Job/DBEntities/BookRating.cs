using System;

namespace DBEntities
{
    public partial class BookRating
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Decimal Rating { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Isbn { get; set; }
    }
}
