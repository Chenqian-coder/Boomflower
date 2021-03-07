using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using System.Data;
using DataAccess;
namespace Business
{
    public static class KangNaiXinBusiness
    {
        // 获取表的内容
        public static DataTable GetKangNaiXinTable()
        {
            string cmdText = "select * from kangNaiXin";
            DataSet ds = DemoAccess.GetDataSet(cmdText, null, null, "kangNaiXin");
            DataTable dt = ds.Tables["kangNaiXin"];
            return dt;
        }

        
        public static string GetKangNaiXinNameByID(int id)
        {
            string cmdText = "select name from kangNaiXin where no=@Id";
            string[] names = new string[] { "@Id"};
            object[] values = new object[] { id };
            object obj = DemoAccess.ExcuteSql2(cmdText,names,values);
            if (obj != null)
            {
                return (string)obj;
            }
            else
            {
                return null;
            }
        }

        public static KangNaiXinEntity GetKangNaiXinInfoByNo(int no)
        {
            string cmdText = "select * from kangNaiXin where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { no };
            object[] obj = DemoAccess.GetValues(cmdText, names, values);

            KangNaiXinEntity knx = new KangNaiXinEntity();
            knx.No = no;
            knx.Name = obj[1].ToString();
            knx.Image = obj[2].ToString();
            knx.Introduction = obj[3].ToString();
            knx.Price = double.Parse(obj[4].ToString());
            knx.Tprice = double.Parse(obj[5].ToString());
            
            return knx;
        }

        // 将信息插入数据库中
        public static bool InsertKangNaiXinInfo(KangNaiXinEntity knx)
        {
            string cmdText = "insert into kangNaiXin values (@no,@name,@image,@introduction,@price,@tprice)";
            string[] names = new string[] { "@no", "@name", "@image", "@introduction", "@price", "@tprice" };
            object[] values = new object[] { knx.No, knx.Name, knx.Image, knx.Introduction, knx.Price, knx.Tprice };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);

            if (n == 1)
                return true;
            return false;
        }

        // 首先查看kangNaiXin 这个表中是否有string 类型的主键id 如果有返回true 没有返回false
        public static bool IsExistNo(string hno)
        {
            string cmdText = "select * from kangNaiXin where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { hno };
            object obj = DemoAccess.ExcuteSql2(cmdText, names, values);
            if (obj != null)
            {

                return true;
            }
            else
            {

                return false;
            }
        }


        public static bool DeletetKangNaiXinInfo(string hno)
        {
            string cmdText = "delete from kangNaiXin where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { hno };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            else
                return false;
        }


        public static bool UpdatatKangNaiXinInfo(KangNaiXinEntity knx)
        {
            string cmdText = "update kangNaiXin set name=@name,image=@image,introduce=@introduce,price=@price,tprice=@tprice where no=@No";
            string[] names = new string[] { "@name", "@image", "@introduce", "@price","@tprice", "@No" };
            object[] values = new object[] { knx.Name,knx.Image,knx.Introduction,knx.Price,knx.Tprice,knx.No};
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            else
                return false;
        }

       

    }
}
      
          
           
           
               
           
         



