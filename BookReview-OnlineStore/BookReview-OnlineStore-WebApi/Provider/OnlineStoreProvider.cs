using DBContext;
using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Provider
{
    public class OnlineStoreProvider : IOnlineStoreProvider
    {
        private readonly OnlineStoreContext _dbContext;

        public OnlineStoreProvider(OnlineStoreContext _dbContext)
        {

            this._dbContext = _dbContext;
        }

        public IEnumerable<BookOnlineStore> GetAllBooks()
        {
            return _dbContext.BookOnlineStore.ToList();
        }
    }
}
