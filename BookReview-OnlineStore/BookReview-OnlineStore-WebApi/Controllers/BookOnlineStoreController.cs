using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BookOnlineStoreWebApi.Model;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Provider;

namespace BookOnlineStoreWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("CorsPolicy")]
    public class BookOnlineStoreController : ControllerBase
    {
        private readonly IOnlineStoreProvider bookOnlineStoreProvider;
        public BookOnlineStoreController(IOnlineStoreProvider bookOnlineStoreProvider)
        {
            this.bookOnlineStoreProvider = bookOnlineStoreProvider;
        }

        /// <summary>
        /// Get all books
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IEnumerable<BookOnlineStoreModel> Get()
        {
            var returnData = bookOnlineStoreProvider.GetAllBooks().Select(r => ModelFactory.Create(r));
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