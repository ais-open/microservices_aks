using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookOnlineStoreWebApi.Model
{
    public class ModelFactory
    {
        public ModelFactory()
        {

        }

        public static BookOnlineStoreModel Create(BookOnlineStore entity)
        {
            if (entity != null)
            {
                var model = new BookOnlineStoreModel
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    OnlineLink = entity.OnlineLink,
                    ISBN = entity.Isbn
                };
                return model;
            }
            return null;
        }
    }
}
