using System;
using System.Collections.Generic;
using DBEntities;
using System.Linq;
using DBContext;

namespace Provider
{
    public class RatingProvider : IRatingProvider
    {
        private readonly RatingContext _dbContext;

        public RatingProvider(RatingContext _dbContext)
        {

            this._dbContext = _dbContext;
        }

        public IEnumerable<BookRating> GetBookRatings()
        {
            return _dbContext.BookRating.ToList();
        }

        public void UpdateRating(BookRating bookRating)
        {
            var result = _dbContext.BookRating.SingleOrDefault(b => b.Isbn == bookRating.Isbn);
            if (result != null)
            {
                decimal updateRating;
                if (result.Rating >= 1)
                {
                    if (bookRating.Rating >= result.Rating)
                    {
                        updateRating = 0.5m;
                        result.Rating = result.Rating + updateRating;
                    }
                    else
                    {
                        updateRating = 0.5m;
                        result.Rating = result.Rating - updateRating;
                    }
                    _dbContext.SaveChanges();
                }
            }
            else
            {
                _dbContext.BookRating.Add(bookRating);
                _dbContext.SaveChanges();
            }
        }
    }
}
