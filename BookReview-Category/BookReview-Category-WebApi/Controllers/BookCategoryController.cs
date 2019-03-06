using System;
using System.Collections.Generic;
using System.Linq;
using CategoryWebApi.Model;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Provider;

namespace CategoryWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("CorsPolicy")]
    public class BookCategoryController : ControllerBase
    {
        private readonly ICategoryProvider categoryProvider;
        public BookCategoryController(ICategoryProvider categoryProvider)
        {
            this.categoryProvider = categoryProvider;
        }

        /// <summary>
        /// Get all books
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IEnumerable<BookCategoryModel> Get()
        {
            var returnData = categoryProvider.GetBookCategories().Select(r => ModelFactory.Create(r));
            if (returnData.Any())
            {
                return returnData;
            }
            else
            {
                return null;
            }
        }
    }
}