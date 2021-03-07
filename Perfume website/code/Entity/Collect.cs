using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Collect
    {
        private string perfumeName;

        public string PerfumeName
        {
            get { return perfumeName; }
            set { perfumeName = value; }
        }
        private string price;

        public string Price
        {
            get { return price; }
            set { price = value; }
        }
        private string image;

        public string Image
        {
            get { return image; }
            set { image = value; }
        }
        private string userId;

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }
    }
}
