using DBContext;
using DBEntities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Provider
{
    public class CategoryProvider : ICategoryProvider
    {
        private readonly CategoryContext _dbContext;

        public CategoryProvider(CategoryContext _dbContext)
        {

            this._dbContext = _dbContext;
        }

        public IEnumerable<BookCategory> GetBookCategories()
        {
            return _dbContext.BookCategory.ToList();
        }
    }
}
