using System;
using System.Collections.Generic;
using System.Text;
using DBEntities;

namespace Provider
{
    public interface IRatingProvider
    {
        IEnumerable<BookRating> GetBookRatings();

        void UpdateRating(BookRating bookRating);
    }
}
