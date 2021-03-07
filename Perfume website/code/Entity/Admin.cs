using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Admin
    {
        private string adminId;

        public string AdminId
        {
            get { return adminId; }
            set { adminId = value; }
        }
        private string adminName;

        public string AdminName
        {
            get { return adminName; }
            set { adminName = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private string realName;

        public string RealName
        {
            get { return realName; }
            set { realName = value; }
        }
        private string contact;

        public string Contact
        {
            get { return contact; }
            set { contact = value; }
        }
    }
}
