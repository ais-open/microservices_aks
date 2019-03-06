using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ReviewCommentWebApi.Model
{
    public class ModelFactory
    {
        public ModelFactory()
        {

        }

        public static BookReviewModel Create(BookReview entity)
        {
            if (entity != null)
            {
                var model = new BookReviewModel
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    ReviewComments = entity.ReviewComments,
                    ReviewedBy = entity.ReviewedBy,
                    Rating = entity.Rating,
                    ISBN = entity.Isbn,
                    CreatedOn = entity.CreatedOn
                };
                return model;
            }
            return null;
        }
    }
}
