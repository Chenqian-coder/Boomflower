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
    public static class UserBusiness
    {
        
        // 查看ID是否存在
        public static bool IsExistID(string id)
        {
            string cmdText = "select * from tb_user where userid=@Id";
            string[] names = new string[] { "@Id" };
            object[] values = new object[] { id };
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

        // 查看ID密码是否正确
        public static bool IsRightPwd(string id, string password)
        {
            string cmdText = "select password from tb_user where userid=@Id";
            string[] names = new string[] { "@Id" };
            object[] values = new object[] { id };
            object obj = DemoAccess.ExcuteSql2(cmdText, names, values);
            if (obj.ToString() == password)
                return true;
            return false;
        }

        // 获取用户的所有信息
        public static DataTable GetVisitorTable()
        {
            string cmdText = "select * from tb_user";
            DataSet ds = DemoAccess.GetDataSet(cmdText, null, null, "visitor");
            DataTable dt = ds.Tables["visitor"];
            return dt;
        }

        public static UserEntity GetVisitorInfoByID(string id)
        {
            UserEntity user = new UserEntity();    
            user.Userid = id.ToString();
            string cmdText = "select * from tb_user where userid=@Id";
            string[] names = new string[] { "@Id" };
            object[] values = new object[] { id };
            object[] obj = DemoAccess.GetValues(cmdText, names, values);
            user.Userid = obj[0].ToString();
            user.Username = obj[1].ToString();
            user.Password = obj[2].ToString();          
            return user;
        }
   

      /// <summary>
      /// 将页面里新添加的值传到数据库中
      /// </summary>
      /// <param name="visitor"></param>
      /// <returns></returns>
        public static bool InsertVisitorInfo(UserEntity user)
        {
            string cmdText = "insert into tb_user values (@userid,@username,@password)";
            string[] names = new string[] { "@userid", "@username","@password" };
            object[] values = new object[] { user.Userid, user.Username, user.Password };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            return false;
        }

       
   /*    public static bool InsertAdminInfo(Administrator administrator)
        {
            string cmdText = "insert into administrator values (@no,@name,@password)";
            string[] names = new string[] { "@no", "@name", "@password" };
            object[] values = new object[] { administrator.No, administrator.Name, administrator.Password };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            return false;
        }*/

        //修改用户资料
       public static bool UpdateVisitorInfo(UserEntity visitor)
        {
            string cmdText = "update tb_user set username=@Name,password=@Pwd where userid=@Id";
            string[] names = new string[] { "@Id", "@Name", "@Pwd"};
            object[] values = new object[] {visitor.Userid,visitor.Username,visitor.Password};
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            return false;
        }

      
       public static bool DeleteVisitorInfo(string  userid)
       {
           string cmdText = "delete from tb_user where userid=@No";
           string[] names = new string[] { "@No" };
           object[] values = new object[] { userid };
           int n = DemoAccess.ExcuteSql(cmdText, names, values);
           if (n == 1)
               return true;
           else
               return false;
       }

       // 更新游客信息
       public static bool UpdataVisitorInfoByNo(UserEntity user)
       {
           string cmdText = "update tb_user set username=@Username,password=@Password where userid=@No";
           string[] names = new string[] { "Username", "@Password", "@No" };
           object[] values = new object[] { user.Username, user.Password, user.Userid };
           int n = DemoAccess.ExcuteSql(cmdText, names, values);
           if (n == 1)
               return true;
           else
               return false;
       }

        
       

    }
}
