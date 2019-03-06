using DBContext;
using DBEntities;
using System.Collections.Generic;
using System.Linq;

namespace Provider
{
    public class BestSellerProvider : IBestSellerProvider
    {
        private readonly BestSellerContext _dbContext;

        public BestSellerProvider(BestSellerContext _dbContext)
        {

            this._dbContext = _dbContext;
        }

        public IEnumerable<BookBestSeller> GetBestSellerBooks()
        {
            return _dbContext.BookBestSeller.ToList();
        }
    }
}
