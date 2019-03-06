using DBContext;
using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Provider
{
    public class BookProvider : IBookProvider
    {
        private readonly BookContext _dbContext;

        public BookProvider(BookContext _dbContext)
        {

            this._dbContext = _dbContext;
        }

        public IEnumerable<Book> GetAllBooks()
        {
            return _dbContext.Book.ToList();
        }
    }
}
