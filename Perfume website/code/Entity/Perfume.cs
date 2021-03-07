using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Perfume
    {
        private string perfumeId;

        public string PerfumeId
        {
            get { return perfumeId; }
            set { perfumeId = value; }
        }
        private string perfumeName;

        public string PerfumeName
        {
            get { return perfumeName; }
            set { perfumeName = value; }
        }
        private string introduce;

        public string Introduce
        {
            get { return introduce; }
            set { introduce = value; }
        }
        private string image;

        public string Image
        {
            get { return image; }
            set { image = value; }
        }
        private string price;

        public string Price
        {
            get { return price; }
            set { price = value; }
        }
        private string counts;

        public string Counts
        {
            get { return counts; }
            set { counts = value; }
        }
        private bool isHot;

        public bool IsHot
        {
            get { return isHot; }
            set { isHot = value; }
        }
        private bool isMale;

        public bool IsMale
        {
            get { return isMale; }
            set { isMale = value; }
        }
    }
}
