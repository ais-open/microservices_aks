using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Models;

namespace BookReviewUI.Controllers
{
    public class HomeController : Controller
    {
        private string baseUrl = string.Empty;
        private string bookEndpoint = string.Empty;
        private string ratingEndpoint = string.Empty;
        private string reviewEndpoint = string.Empty;
        private string categoryEndpoint = string.Empty;
        private string buyOnlineEndpoint = string.Empty;
        private string bestSellerEndpoint = string.Empty;

        public HomeController(IConfiguration configuration)
        {
            baseUrl = System.Environment.GetEnvironmentVariable("BASE_URL") ?? configuration["ServiceEndpoint:BaseUrl"];
            bookEndpoint = baseUrl + (System.Environment.GetEnvironmentVariable("BOOK_API") ?? configuration["ServiceEndpoint:Book"]);
            ratingEndpoint = baseUrl + (System.Environment.GetEnvironmentVariable("RATING_API") ?? configuration["ServiceEndpoint:Rating"]);
            reviewEndpoint = baseUrl + (System.Environment.GetEnvironmentVariable("REVIEWCOMMENT_API") ?? configuration["ServiceEndpoint:Review"]);
            categoryEndpoint = baseUrl + (System.Environment.GetEnvironmentVariable("CATEGORY_API") ?? configuration["ServiceEndpoint:Category"]);
            buyOnlineEndpoint = baseUrl + (System.Environment.GetEnvironmentVariable("BUYONLINE_API") ?? configuration["ServiceEndpoint:BuyOnline"]);
            bestSellerEndpoint = baseUrl + (System.Environment.GetEnvironmentVariable("BESTSELLER_API") ?? configuration["ServiceEndpoint:BestSeller"]);
        }
        public IActionResult Index()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public ActionResult BookReview()
        {
            ViewBag.BookEndPoint = bookEndpoint;
            ViewBag.RatingEndpoint = ratingEndpoint;
            ViewBag.ReviewEndpoint = reviewEndpoint;
            ViewBag.CategoryEndpoint = categoryEndpoint;
            ViewBag.BuyOnlineEndpoint = buyOnlineEndpoint;
            ViewBag.BestSellerEndpoint = bestSellerEndpoint;
            return View();
        }
    }
}
