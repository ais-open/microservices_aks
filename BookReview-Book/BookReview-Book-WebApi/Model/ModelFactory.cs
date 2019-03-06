using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DBEntities;

namespace BookWebApi.Model
{
    public class ModelFactory
    {
        public ModelFactory()
        {
        }

        public static BookModel Create(Book entity)
        {
            if (entity != null)
            {
                var model = new BookModel
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    AuthorName = entity.AuthorName,
                    Language = entity.Language,
                    Price = entity.Price,
                    PublisherName = entity.PublisherName,
                    PublicationYear = entity.PublicationYear,
                    Image = entity.Image,
                    Discount = entity.Discount,
                    Details = entity.Details,
                    ISBN = entity.Isbn
                };
                return model;
            }
            return null;
        }
    }
}
