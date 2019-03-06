using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading;
using System.Threading.Tasks;
using DBEntities;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Provider;
using ReviewCommentWebApi.Model;
using Microsoft.Extensions.Configuration;

namespace ReviewCommentWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("CorsPolicy")]
    public class BookReviewController : ControllerBase
    {
        private readonly IReviewCommentProvider bookReviewProvider;
        private static string sastoken;
        private static string url;
        private static readonly HttpClient httpClient = new HttpClient();
        public BookReviewController(IReviewCommentProvider bookReviewProvider, IConfiguration configuration)
        {
            this.bookReviewProvider = bookReviewProvider;
            sastoken = System.Environment.GetEnvironmentVariable("SERVICEBUS_SASTOKEN") ?? configuration["ServiceBusEndpoint:Sastoken"];
            url = System.Environment.GetEnvironmentVariable("SERVICEBUS_URL") ?? configuration["ServiceBusEndpoint:Url"];
        }

        /// <summary>
        /// Get all books
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IEnumerable<BookReviewModel> Get()
        {
            var returnData = bookReviewProvider.GetBookReviews().Select(r => ModelFactory.Create(r));
            if (returnData.Any())
            {
                return returnData;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// Submit Review
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public void Post(ReviewSubmitModel comment)
        {
            BookReview br = new BookReview
            {
                Name = comment.Name,
                Isbn = comment.ISBN,
                Rating = comment.Rating,
                ReviewComments = comment.ReviewComment,
                ReviewedBy = comment.ReviewBy,
                CreatedOn = DateTime.Now
            };
            bookReviewProvider.SaveReviewComment(br);
            string jsonString = Newtonsoft.Json.JsonConvert.SerializeObject(comment);
            SendMessages(jsonString).Wait();
        }

        private static async Task SendMessages(string comment)
        {
            httpClient.DefaultRequestHeaders.Accept.Clear();
            httpClient.DefaultRequestHeaders.Clear();
            httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            httpClient.DefaultRequestHeaders.Add("Authorization", sastoken);
            var stringTask = httpClient.PostAsync(url, new StringContent(comment));
            var msg = await stringTask;
        }
    }
}