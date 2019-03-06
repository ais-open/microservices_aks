using System;

namespace DBEntities
{
    public class Book
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string AuthorName { get; set; }
        public string PublisherName { get; set; }
        public int Price { get; set; }
        public decimal Discount { get; set; }
        public string Language { get; set; }
        public int? PublicationYear { get; set; }
        public string Image { get; set; }
        public string Details { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Isbn { get; set; }
    }
}
