using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataAccess;
using Entity;

namespace Business
{
    public class AdminBusiness
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
        public static object PostBackPower(string id)
        {

            string sqlText = "select adminPower from admin where adminId=@Id";
            string[] paras = { "@Id" };
            object[] values = { id };
            object power = DataBaseAccess.ExcuteSql2(sqlText, CommandType.Text, paras, values);
            return power;
        }
        public static DataSet GetAdminTable(string tableName)
        {
            string sqlText = "select * from admin";
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static bool DeleteInfoByAdminId(string id)
        {
            string sqlText = "delete from admin where adminId=@Id";
            string[] paramNames = { "@Id" };
            object[] paramValues = { id };
            int n = DataBaseAccess.ExcuteSql(sqlText, CommandType.Text, paramNames, paramValues);
            if (n == 1)
                return true;
            else
                return false;
        }
    }
}
