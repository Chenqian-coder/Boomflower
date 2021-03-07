using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
  public   class Administrator
    {
        string no;

        public string No
        {
            get { return no; }
            set { no = value; }
        }
      
        string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
    }
}
