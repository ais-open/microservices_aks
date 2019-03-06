using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Provider;
using RatingWebApi.Model;

namespace RatingWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("CorsPolicy")]
    public class BookRatingController : ControllerBase
    {
        private readonly IRatingProvider bookRatingProvider;
        public BookRatingController(IRatingProvider bookRatingProvider)
        {
            this.bookRatingProvider = bookRatingProvider;
        }

        /// <summary>
        /// Get all books
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IEnumerable<BookRatingModel> Get()
        {
            var returnData = bookRatingProvider.GetBookRatings().Select(r => ModelFactory.Create(r));
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