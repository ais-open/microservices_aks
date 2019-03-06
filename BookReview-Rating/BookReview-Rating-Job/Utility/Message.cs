using System;
using System.Collections.Generic;
using System.Text;

namespace ConsolidateRating.Utility
{
    public class Message
    {
        public string Name { get; set; }

        public string ISBN { get; set; }

        public string ReviewComment { get; set; }

        public int Rating { get; set; }

        public string ReviewBy { get; set; }
    }
}
