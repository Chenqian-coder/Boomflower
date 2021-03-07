using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Users
    {
        private string userId;

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }
        private string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
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
        private string sex;

        public string Sex
        {
            get { return sex; }
            set { sex = value; }
        }
        private string birthday;

        public string Birthday
        {
            get { return birthday; }
            set { birthday = value; }
        }
        private string contact;

        public string Contact
        {
            get { return contact; }
            set { contact = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string regdate;

        public string Regdate
        {
            get { return regdate; }
            set { regdate = value; }
        }
    }
}
