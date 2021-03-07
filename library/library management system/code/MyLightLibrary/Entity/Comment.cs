using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Comment
    {
        private string userId;

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }
        private int bookId;

        public int BookId
        {
            get { return bookId; }
            set { bookId = value; }
        }
        private string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        private string bookComment;

        public string BookComment
        {
            get { return bookComment; }
            set { bookComment = value; }
        }
        private string time;

        public string Time
        {
            get { return time; }
            set { time = value; }
        }
    }
}
