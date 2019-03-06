using DBEntities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Provider
{
    public interface IReviewCommentProvider
    {
        IEnumerable<BookReview> GetBookReviews();

        void SaveReviewComment(BookReview bookReview);
    }
}
