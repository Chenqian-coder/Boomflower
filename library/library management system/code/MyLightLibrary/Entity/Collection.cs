using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Collection
    {
        private int bookId;

        public int BookId
        {
            get { return bookId; }
            set { bookId = value; }
        }
        private string userId;

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }
    }
}
