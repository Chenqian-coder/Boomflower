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
   public static  class XiangRiKuiBusiness
    {
       // 获得food表中的内容
       public static DataTable GetXiangRiKuiTable()
       {
           string cmdText = "select * from xiangRiKui";
           DataSet ds = DemoAccess.GetDataSet(cmdText, null, null, "xiangRiKui");
           DataTable dt = ds.Tables["xiangRiKui"];
           return dt;
       }

       //通过食物的编号，获取表中的内容
       public static XiangRiKuiEntity GetXiangRiKuiInfoByNo(int no)
       {
           string cmdText = "select * from xiangRiKui where no=@No";
           string[] names = new string[] { "@No" };
           object[] values = new object[] { no };
           object[] obj = DemoAccess.GetValues(cmdText, names, values);
           XiangRiKuiEntity food = new XiangRiKuiEntity();
           food.No = no;
           food.Name = obj[1].ToString();
           food.Image = obj[2].ToString();
           food.Introduction = obj[3].ToString();
           food.Price = double.Parse(obj[4].ToString());
           food.Tprice = double.Parse(obj[5].ToString());
          
           return food;
       }

       public static int GetXiangRiKuiNoByName(string name)
       {
           string cmdText = "select no from xiangRiKui where name=@Name";
           string[] names = new string[] { "@Name" };
           object[] values = new object[] { name};
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

       #region    获取指定no是否存在（存在返回true）
       /// <summary>
       /// 获取指定no是否存在（存在返回true）
       /// </summary>
       /// <param name="id">美食编号</param>
       /// <returns></returns>
       public static bool IsExistNo(string no)
       {
           string cmdText = "select * from xiangRiKui where no=@No";
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

       #endregion
       #region 页面里获取的美食的信息传到数据库中
       /// <summary>
       /// 页面里获取的美食的信息传到数据库中
       /// </summary>
       /// <param name="visitor">visitor</param>
       /// <returns>bool值</returns>


       public static bool InsertXiangRiKuiInfo(XiangRiKuiEntity xrk)
       {
           string cmdText = "insert into xiangRiKui values (@no,@name,@image,@introduce,@price,@tprice)";
           string[] names = new string[] { "@no", "@name", "@image", "@introduce", "@price","tprice"};
           object[] values = new object[] { xrk.No, xrk.Name, xrk.Image, xrk.Introduction,xrk.Price, xrk.Tprice };
           int n = DemoAccess.ExcuteSql(cmdText, names, values);
           if (n == 1)
               return true;
           return false;
       }
       #endregion

       public static bool DeleteXiangRiKuiInfo(string no)
      {
          string cmdText = "delete from xiangRiKui where no=@No";
          string[] names = new string[] { "@No" };
          object[] values = new object[] { no };
          int n = DemoAccess.ExcuteSql(cmdText, names, values);
          if (n == 1)
              return true;
          else
              return false;
      }
       public static bool UpdataXiangRiKuiInfoByNo(XiangRiKuiEntity xrk)
      {
          string cmdText = "update xiangRiKui set name=@name,image=@image,introduce=@introduction,price=@price,tprice=@tprice where no=@No";
          string[] names = new string[] { "@name", "@image", "@introduction", "@price", "@tprice", "@No" };
          object[] values = new object[] { xrk.Name, xrk.Image, xrk.Introduction,xrk.Price, xrk.Tprice, xrk.No };
          int n = DemoAccess.ExcuteSql(cmdText, names, values);
          if (n == 1)
              return true;
          else
              return false;
      }
         
    }
}
