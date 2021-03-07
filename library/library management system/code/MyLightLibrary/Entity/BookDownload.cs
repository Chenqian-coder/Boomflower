using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class BookDownload
    {
        private int bookId;

        public int BookId
        {
            get { return bookId; }
            set { bookId = value; }
        }
        private string bookChapter;

        public string BookChapter
        {
            get { return bookChapter; }
            set { bookChapter = value; }
        }
        private string bookDownloadurl;

        public string BookDownloadurl
        {
            get { return bookDownloadurl; }
            set { bookDownloadurl = value; }
        }

       
    }
}
