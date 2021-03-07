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
  public static   class AdministratorBusiness
    {

        //查看ID是否存在
        public static bool IsExistNo(string no)
        {
            string cmdText = "select * from administrator where no=@No";
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

        //查看ID密码是否正确
        public static bool IsRightPwd(string no, string password)
        {
            string cmdText = "select password from administrator where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { no };
            object obj = DemoAccess.ExcuteSql2(cmdText, names, values);
            if (obj.ToString() == password)
                return true;
            return false;
        }
      //修改密码 需要将数据库中的密码更新
        public static bool UpdateAdiminPassWord(string no, string pwd)
        {
            string cmdText = "update administrator set password=@Pwd where no=@No";
            string[] names = new string[] { "@No", "@Pwd" };
            object[] values = new object[] {no , pwd };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            return false;
        }

      //获得administrator中的数据
        public static DataTable GetVisitorTable()
        {
            string cmdText = "select * from administrator";
            DataSet ds = DemoAccess.GetDataSet(cmdText, null, null, "administrator");
            DataTable dt = ds.Tables["administrator"];
            return dt;
        }
        public static bool InsertAdminInfo(Administrator administrator)
        {
            string cmdText = "insert into administrator values (@no,@name,@password)";
            string[] names = new string[] { "@no", "@name", "@password"};
            object[] values = new object[] { administrator.No,administrator.Name,administrator.Password};
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            return false;
        }
      //删除管理员信息
        public static bool DeleteAdministratorInfo(string no)
        {
            string cmdText = "delete from  administrator where no=@No";
            string[] names = new string[] { "@No" };
            object[] values = new object[] { no };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            else
                return false;
        }
      //更新用户信息
        public static bool UpdataAdministratorInfoByNo(Administrator administrator)
        {
            string cmdText = "update administrator set name=@Name,password=@Password where no=@No";
            string[] names = new string[] { "Name", "@Password", "@No" };
            object[] values = new object[] {administrator.Name,administrator.Password,administrator.No };
            int n = DemoAccess.ExcuteSql(cmdText, names, values);
            if (n == 1)
                return true;
            else
                return false;
        }

    }
}
