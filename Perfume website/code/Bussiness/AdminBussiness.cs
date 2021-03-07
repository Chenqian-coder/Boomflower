using DataAccess;
using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bussiness
{
    public class AdminBussiness
    {
        public static bool IsExistAdminId(string id)
        {
            string returnPa = "@result";
            string[] paras = { "@adminId" };
            object[] values = { id };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsExistAdminId", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool IsRightAdminPwd(string id, string pwd)
        {

            string returnPa = "@result";
            string[] paras = { "@adminId", "password" };
            object[] values = { id, pwd };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsRightAdminPwd", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool InsertAdminInfo(Admin admin)
        {
            string[] paras = { "@Id", "@Name", "@Pwd", "@RealName", "@Contact" };
            object[] values = { admin.AdminId, admin.AdminName, admin.Password, admin.RealName, admin.Contact };
            int n = DataBaseAccess.ExcuteSql("InsertAdminInfo", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static Admin GetAdminInfoById(string adminId)
        {
            string[] paras = { "@adminId" };
            object[] values = { adminId };
            DataTable dt = DataBaseAccess.GetDataTable("GetAdminInfoById", CommandType.StoredProcedure, paras, values);
            Admin admin = new Admin();
            admin.AdminId = dt.Rows[0][0].ToString(); ;
            admin.AdminName = dt.Rows[0][1].ToString();
            admin.Password = dt.Rows[0][2].ToString();
            admin.RealName = dt.Rows[0][3].ToString();
            admin.Contact = dt.Rows[0][4].ToString();
            return admin;
        }

        public static bool UpdateAdminInfo(Admin admin)
        {
            string[] paras = { "@Adminid", "@Name", "@Pwd", "@RealName", "@Contact"};
            object[] values = { admin.AdminId, admin.AdminName, admin.Password, admin.RealName, admin.Contact };
            int n = DataBaseAccess.ExcuteSql("UpdateAdminInfo", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static DataTable getALLOrderInfo()
        {
            DataTable dt = DataBaseAccess.GetDataTable("GetAllOrderInfoForAdmin", CommandType.StoredProcedure);
            return dt;
        }

        public static int DeleteOrderByName(string pname, string userid)
        {
            string[] names = new string[] { "pname", "userid" };
            object[] values = new object[] { pname, userid };
            object obj = DataBaseAccess.ExecuteSQL("DeleteOrder", CommandType.StoredProcedure, names, values);
            return Convert.ToInt32(obj);
        }

        public static DataTable getALLUserInfo()
        {
            DataTable dt = DataBaseAccess.GetDataTable("GetAllUserInfo", CommandType.StoredProcedure);
            return dt;
        }

        public static int DeleteUserById(string userid)
        {
            string[] names = new string[] { "userid" };
            object[] values = new object[] { userid };
            object obj = DataBaseAccess.ExecuteSQL("DeleteUserById", CommandType.StoredProcedure, names, values);
            return Convert.ToInt32(obj);
        }

        public static DataTable getALLPerfumeInfo()
        {
            DataTable dt = DataBaseAccess.GetDataTable("GetAllPerfumeInfo", CommandType.StoredProcedure);
            return dt;
        }

        public static int DeletePerfumeById(string perfumeid)
        {
            string[] names = new string[] { "perfumeid" };
            object[] values = new object[] { perfumeid };
            object obj = DataBaseAccess.ExecuteSQL("DeletePerfumeById", CommandType.StoredProcedure, names, values);
            return Convert.ToInt32(obj);
        }
    }
}
