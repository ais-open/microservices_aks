using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BookWebApi.Model;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Provider;

namespace BookWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("CorsPolicy")]
    public class BookController : ControllerBase
    {
        private readonly IBookProvider bookProvider;
        public BookController(IBookProvider bookProvider)
        {
            this.bookProvider = bookProvider;
        }

        /// <summary>
        /// Get all books
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IEnumerable<BookModel> Get()
        {
            var returnData = bookProvider.GetAllBooks().Select(r => ModelFactory.Create(r));
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