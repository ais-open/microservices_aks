using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BestSellerWebApi.Model;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Provider;

namespace BestSellerWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("CorsPolicy")]
    public class BookBestSellerController : ControllerBase
    {
        private readonly IBestSellerProvider bookBestSellerProvider;
        public BookBestSellerController(IBestSellerProvider bookBestSellerProvider)
        {
            this.bookBestSellerProvider = bookBestSellerProvider;
        }

        /// <summary>
        /// Get all books
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IEnumerable<BookBestSellerModel> Get()
        {
            var returnData = bookBestSellerProvider.GetBestSellerBooks().Select(r => ModelFactory.Create(r));
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