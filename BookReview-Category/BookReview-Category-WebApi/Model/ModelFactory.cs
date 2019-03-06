using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CategoryWebApi.Model
{
    public class ModelFactory
    {
        public ModelFactory()
        {
        }

        public static BookCategoryModel Create(BookCategory entity)
        {
            if (entity != null)
            {
                var model = new BookCategoryModel
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    Category = entity.Category,
                    ISBN = entity.Isbn
                };
                return model;
            }
            return null;
        }
    }
}
