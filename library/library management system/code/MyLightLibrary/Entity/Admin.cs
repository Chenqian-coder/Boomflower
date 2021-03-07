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
        private string adminPwd;

        public string AdminPwd
        {
            get { return adminPwd; }
            set { adminPwd = value; }
        }
        private bool adminPower;

        public bool AdminPower
        {
            get { return adminPower; }
            set { adminPower = value; }
        }
    }
}
