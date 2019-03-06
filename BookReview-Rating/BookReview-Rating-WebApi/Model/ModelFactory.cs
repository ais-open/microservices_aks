using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RatingWebApi.Model
{
    public class ModelFactory
    {
        public ModelFactory()
        {
        }

        public static BookRatingModel Create(BookRating entity)
        {
            if (entity != null)
            {
                var model = new BookRatingModel
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    Rating = entity.Rating,
                    ISBN = entity.Isbn
                };
                return model;
            }
            return null;
        }
    }
}
