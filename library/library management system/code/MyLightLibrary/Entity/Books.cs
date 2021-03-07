using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Books
    {
        private int bookId;

        public int BookId
        {
            get { return bookId; }
            set { bookId = value; }
        }
        private string bookName;

        public string BookName
        {
            get { return bookName; }
            set { bookName = value; }
        }
        private string bookIntroduce;

        public string BookIntroduce
        {
            get { return bookIntroduce; }
            set { bookIntroduce = value; }
        }
        private string bookImage;

        public string BookImage
        {
            get { return bookImage; }
            set { bookImage = value; }
        }
        private string bookType;

        public string BookType
        {
            get { return bookType; }
            set { bookType = value; }
        }
    }
}
