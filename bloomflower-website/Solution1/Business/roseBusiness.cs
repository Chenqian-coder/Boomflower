using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using DataAccess;
using System.Data;


namespace Business
{
    public static class roseBusiness
    {

        public static bool IsExistNo(string no)
        {
            string cmdText = "select * from meigui where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { no };
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

        public static DataTable GetSightTable()
        {
            string cmdText = "select * from meigui";
            DataSet ds = DemoAccess.GetDataSet(cmdText, null, null, "sight");
            DataTable dt = ds.Tables["sight"];
            return dt;
        }
    
        public static Rose GetSightInfoByNo(int no)
        {
            string cmdText = "select * from meigui where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { no };
            object[] obj = DemoAccess.GetValues(cmdText, names, values);
           
            Rose sight = new Rose();
            sight.No = no;
            sight.Name = obj[1].ToString();
          
            sight.Image = obj[2].ToString();
            sight.Introduction = obj[3].ToString();
            sight.Price = double.Parse(obj[4].ToString());
           // sight.Traffic = obj[6].ToString();
            //sight.Local = obj[7].ToString();
            sight.Tprice =double.Parse(obj[5].ToString());
            sight.Num = Int32.Parse(obj[6].ToString());
            sight.Count = Int32.Parse(obj[7].ToString());
            return sight;
        }

        public static int GetSightNoByName(string name)
        {
            string cmdText = "select no from meigui where name=@Name";
            string[] names = new string[] { "@Name" };
            object[] values = new object[] { name };
            object obj = DemoAccess.ExcuteSql2(cmdText, names, values);
            if (obj.ToString() != null)
            {
                return int.Parse(obj.ToString());
            }
            else
            {
                return 1;
            }         
        }

        // 将信息插入数据库中
        public static bool InsertSightInfo(Rose sight)
        {
            string cmdText = "insert into meigui values (@no,@name,@image,@introduction,@price,@tprice,@num,@count)";
            string[] names = new string[] {"@no", "@name","@image", "@introduction", "@price", "@tprice", "@num", "@count" };
            object[] values = new object[] {sight.No, sight.Name,  sight.Image,sight.Introduction, sight.Price, sight.Tprice,sight.Num,sight.Count };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);

            if (n == 1)
                return true;
            return false;
        }

        // 删除信息
        public static bool DeleteSightInfo(int no)
        {
            string cmdText = "delete from meigui where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { no };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        //更新信息
        public static bool UpdataSightInfoByNo(Rose sight)
        {
            string cmdText = "update meigui set name=@Name,image=@Image,introduce=@Introduction,price=@Price,tprice=@Tprice,num=@num,count=@count where no=@No";
            string[] names = new string[] { "@Name",  "@Image", "@Introduction", "@Price","@Tprice","@num","@count","@No"};
            object[] values = new object[] {sight.Name,sight.Image,sight.Introduction,sight.Price,sight.Tprice,sight.Num,sight.Count,sight.No};
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            else
                return false;
        }
         
    }

    
}
