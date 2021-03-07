using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using DataAccess;
using System.Data;

namespace Bussiness
{
    public class ShopCartBussiness
    {
        public static bool InsertShopCart(ShopCart shopcart)
        {
            string[] paras = { "@Id", "@Name", "@Price", "@Counts", "@Time", "@Total","@UserId" };
            object[] values = { shopcart.PerfumeId, shopcart.PerfumeName, shopcart.Price, shopcart.Counts, shopcart.Time, shopcart.Total,shopcart.UserId };
            int n = DataBaseAccess.ExcuteSql("InsertShopcart", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static bool UpdateShopCart(string pname, string userId, int counts)
        {
            string[] paras = { "@pname", "@userId","@counts" };
            object[] values = { pname, userId, counts };
            int n = DataBaseAccess.ExcuteSql("UpdateShopCart", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static bool InsertMyCollect(Collect col)
        {
            string[] paras = { "@Name", "@Price", "@Image","@userId" };
            object[] values = {col.PerfumeName,col.Price,col.Image,col.UserId};
            int n = DataBaseAccess.ExcuteSql("InsertMyCollect", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static bool IsExistCol(string pname,string userId)
        {
            string returnPa = "@result";
            string[] paras = { "@pname","@userId" };
            object[] values = { pname,userId };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsExistCol", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool IsExistCart(string pname, string userId)
        {
            string returnPa = "@result";
            string[] paras = { "@pname", "@userId" };
            object[] values = { pname, userId };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsExistCart", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static int DeleteCakesById(string pname, string userId)
        {
            string[] names = new string[] { "@pname","@userId" };
            object[] values = new object[] { pname,userId };
            object obj = DataBaseAccess.ExecuteSQL("DeleteCollect", CommandType.StoredProcedure, names, values);
            return Convert.ToInt32(obj);
        }

        public static DataTable getALLInfo(string userId)
        {
            string[] paras = { "@Id" };
            object[] values = { userId };
            DataTable dt = DataBaseAccess.GetDataTable("GetAllCartInfo", CommandType.StoredProcedure, paras, values);
            return dt;
        }

        public static int DeleteCartByName(string pname, string userid)
        {
            string[] names = new string[] { "pname","userid" };
            object[] values = new object[] { pname,userid };
            object obj = DataBaseAccess.ExecuteSQL("DeleteCart", CommandType.StoredProcedure, names, values);
            return Convert.ToInt32(obj);
        }

    }
}
