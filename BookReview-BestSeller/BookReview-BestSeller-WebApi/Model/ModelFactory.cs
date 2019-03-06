using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BestSellerWebApi.Model
{
    public class ModelFactory
    {
        public static BookBestSellerModel Create(BookBestSeller entity)
        {
            if (entity != null)
            {
                var model = new BookBestSellerModel
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    BestSeller = entity.BestSeller,
                    ISBN = entity.Isbn
                };
                return model;
            }
            return null;
        }
    }
}
