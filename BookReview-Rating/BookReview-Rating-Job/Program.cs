using System;
using System.Threading;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;
using Provider;
using Microsoft.EntityFrameworkCore;
using DBContext;
using DBEntities;
using Microsoft.Extensions.Configuration;
using System.IO;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;

namespace ConsolidateRating
{
    class Program
    {
        private static readonly HttpClient httpClient = new HttpClient();
        public static IConfigurationRoot configuration;
        public static IServiceProvider serviceProvider;
        public static void Main(string[] args)
        {
            var services = new ServiceCollection();
            var builder = new ConfigurationBuilder()
            .SetBasePath(Path.Combine(AppContext.BaseDirectory))
            .AddJsonFile("appsettings.json", optional: true);
            configuration = builder.Build();

            var dbConnectionString = System.Environment.GetEnvironmentVariable("DB_CONNECTION") ?? configuration["Data:DefaultConnection:ConnectionString"];

            services.AddDbContext<RatingContext>(options => options.UseSqlServer(dbConnectionString));
            services.AddTransient<IRatingProvider, RatingProvider>();
            serviceProvider = services.BuildServiceProvider();
            var ratingProvider = serviceProvider.GetRequiredService<IRatingProvider>();

            var sastoken = System.Environment.GetEnvironmentVariable("SERVICEBUS_TOKEN") ?? configuration["ServiceBusEndpoint:Sastoken"];
            var url = System.Environment.GetEnvironmentVariable("SERVICEBUS_URL") ?? configuration["ServiceBusEndpoint:Url"];

            var message = string.Empty;
            do
            {
                message = GetMessages(sastoken, url).Result;
                if (!string.IsNullOrEmpty(message))
                {
                    var sbMessage = JsonConvert.DeserializeObject<Utility.Message>(message);
                    BookRating bRating = new BookRating
                    {
                        Name = sbMessage.Name,
                        Isbn = sbMessage.ISBN,
                        Rating = sbMessage.Rating
                    };

                    ratingProvider.UpdateRating(bRating);
                }
            } while (!string.IsNullOrEmpty(message));

        }

        public static async Task<string> GetMessages(string token, string url)
        {
            var message = string.Empty;
            httpClient.DefaultRequestHeaders.Accept.Clear();
            httpClient.DefaultRequestHeaders.Clear();
            httpClient.DefaultRequestHeaders.Add("Authorization", token);
            var stringTask = await httpClient.DeleteAsync(url);
            
            if (stringTask.StatusCode == System.Net.HttpStatusCode.OK)
            {
                message = await stringTask.Content.ReadAsStringAsync();
                Console.WriteLine(message);
            }
            return message;
        }
    }
}
