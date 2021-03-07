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
    public class UserBussiness
    {
        public static bool IsExistId(string id)
        {
            string returnPa = "@result";
            string[] paras = { "@userId" };
            object[] values = { id };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsExistId", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool InsertUserInfo(Users user)
        {
            string[] paras = { "@Id", "@Name", "@Pwd", "@RealName", "@Sex", "@Birthday", "@Contact", "@Email", "@Regdate" };
            object[] values = { user.UserId, user.UserName, user.Password, user.RealName, user.Sex, user.Birthday, user.Contact, user.Email, user.Regdate };
            int n = DataBaseAccess.ExcuteSql("InsertUserInfo", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static bool IsRightPwd(string id, string pwd)
        {

            string returnPa = "@result";
            string[] paras = { "@userId", "password" };
            object[] values = { id, pwd };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsRightPwd", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool IsRightContact(string id, string contact)
        {

            string returnPa = "@result";
            string[] paras = { "@userId", "contact" };
            object[] values = { id, contact };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsRightContact", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool UpdatePwd(string userId, string password)
        {
            string[] paras = { "@Id", "@Pwd" };
            object[] values = { userId, password };
            int n = DataBaseAccess.ExcuteSql("updatePwd", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static Users GetUserInfoById(string userId)
        {
            string[] paras = { "@userId" };
            object[] values = { userId };
            DataTable dt = DataBaseAccess.GetDataTable("GetUserInfoById", CommandType.StoredProcedure, paras, values);
            Users user = new Users();
            user.UserId = dt.Rows[0][0].ToString();
            user.UserName = dt.Rows[0][1].ToString();
            user.Password = dt.Rows[0][2].ToString();
            user.RealName = dt.Rows[0][3].ToString();
            user.Sex = dt.Rows[0][4].ToString();
            user.Birthday = dt.Rows[0][5].ToString();
            user.Contact = dt.Rows[0][6].ToString();
            user.Email = dt.Rows[0][7].ToString();
            user.Regdate = dt.Rows[0][8].ToString();
            return user;
        }

        public static bool UpdateUserInfo(Users user)
        {
            string[] paras = { "@Userid", "@Name", "@Pwd", "@RealName", "@Sex", "@Birthday", "@Contact", "@Email", "@Regdate" };
            object[] values = { user.UserId, user.UserName, user.Password, user.RealName, user.Sex, user.Birthday, user.Contact, user.Email, user.Regdate };
            int n = DataBaseAccess.ExcuteSql("UpdateUserInfo", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }
    }
}
