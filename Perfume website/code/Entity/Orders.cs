using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Orders
    {
        private string userId;

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }
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
        private int counts;

        public int Counts
        {
            get { return counts; }
            set { counts = value; }
        }
        private string total;

        public string Total
        {
            get { return total; }
            set { total = value; }
        }
        private string time;

        public string Time
        {
            get { return time; }
            set { time = value; }
        }
        private string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }
    }
}
