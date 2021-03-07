using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
   public static class CarBusiness
    {
       public static DataTable GetSightTable()
       {
           string cmdText = "select * from buyCar";
           DataSet ds = DemoAccess.GetDataSet(cmdText, null, null, "buyCar");
           DataTable dt = ds.Tables["buyCar"];
           return dt;
       }

       // 将景点信息插入数据库中
      /* public static bool InsertSightInfo( BuyCar buyCar)
       {
           string cmdText = "insert into buyCar values (@no,@name,@image,@introduce,@tprice,@num)";
           string[] names = new string[] { "@no", "@name", "@image", "@introduce","@tprice", "@num" };
           object[] values = new object[] { buyCar.No, buyCar.Name, buyCar.Image, buyCar.Introduction,buyCar.Price, buyCar.Num };
           int n = DemoAccess.ExcuteSql(cmdText, names, values);

           if (n == 1)
               return true;
           return false;
       }*/
       public static bool InsertSightInfo(BuyCar buyCar)
       {
           string cmdText = "insert into buyCar values (@no,@name,@troduction,@num,@price,@image)";
           string[] names = new string[] { "@no","@name","@troduction","@num","@price","@image"};
           object[] values = new object[] { buyCar.No,buyCar.Name,buyCar.Introduction,buyCar.Num,buyCar.Price,buyCar.Image};
           int n = DemoAccess.ExcuteSql(cmdText, names, values);

           if (n == 1)
               return true;
           return false;
       }

       public static bool DeleteSightInfo(int no)
       {
           string cmdText = "delete from buyCar where no=@No";
           string[] names = new string[] { "@No" };
           object[] values = new object[] { no };
           int n = DemoAccess.ExcuteSql(cmdText, names, values);
           if (n == 1)
               return true;
           else
               return false;
       }
    }
}
