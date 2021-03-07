using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DataAccess
{
    public static class DemoAccess
    {
        static SqlConnection con = new SqlConnection();
        static SqlCommand cmd = new SqlCommand();
        static SqlDataReader sdr;
        static DataSet ds = new DataSet();
        static SqlDataAdapter sda = new SqlDataAdapter();
        static DemoAccess()
        {
            //con.ConnectionString = "server=.\\sqlexpress;database=demo;trusted_connection=true;";
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["demoStr"].ConnectionString;
            cmd.Connection = con;
        }
        /// <summary>
        /// 执行查询sql命令（返回结果集中首行首列值）
        /// </summary>
        /// <param name="commandText">命令文本</param>
        /// <param name="paramNames">参数名数组（集合）</param>
        /// <param name="paramValues">参数值数组（集合）</param>
        /// <returns></returns>
        public static object ExcuteSql2(string commandText, string[] paraNames, object[] paramValues)
        {
            cmd.CommandText = commandText;
            cmd.Parameters.Clear();
            if (paraNames != null)
            {
                for (int i = 0; i < paraNames.Length; i++)
                {
                    cmd.Parameters.AddWithValue(paraNames[i], paramValues[i]);
                }
            }
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            object obj = cmd.ExecuteScalar();
            con.Close();
            return obj;
        }

        /// <summary>
        /// 执行增删改sql命令（返回数据表中受影响行数）
        /// </summary>
        /// <param name="commandText">命令文本</param>
        /// <param name="paramNames">参数名数组（集合）</param>
        /// <param name="paramValues">参数值数组（集合）</param>
        /// <returns></returns>
        public static int ExcuteSql(string commandText, string[] paramNames, object[] paramValues)
        {
            cmd.CommandText = commandText;
            cmd.Parameters.Clear();
            //为cmd命令的参数集合中添加参数名及对应参数值
            if (paramNames != null)
            {
                for (int i = 0; i < paramNames.Length; i++)
                {
                    cmd.Parameters.AddWithValue(paramNames[i], paramValues[i]);
                }
            }
            //判断当前链接状态是否为关闭
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            //执行sql命令，返回数据表中受影响行数
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n;
        }
        /// <summary>
        /// 获得一行数据
        /// </summary>
        /// <param name="commandText"></param>
        /// <param name="paramNames"></param>
        /// <param name="paramValues"></param>
        /// <returns></returns>
        public static object[] GetValues(string commandText, string[] paramNames, object[] paramValues)
        {
            object[] values = null;
            cmd.CommandText = commandText;
            cmd.Parameters.Clear();
            //为cmd命令的参数集合中添加参数名及对应参数值
            if (paramNames != null)
            {
                for (int i = 0; i < paramNames.Length; i++)
                {
                    cmd.Parameters.AddWithValue(paramNames[i], paramValues[i]);
                }
            }
            //判断当前链接状态是否为关闭
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            sdr = cmd.ExecuteReader();
            int count = sdr.FieldCount;
            if (sdr.Read())
            {
                values = new object[count];
                for (int i = 0; i < count; i++)
                {
                    values[i] = sdr.GetValue(i);
                }
            }
            sdr.Close();
            return values;
        }
        /// <summary>
        /// 获取数据集
        /// </summary>
        /// <param name="commandText"></param>
        /// <param name="paramNames"></param>
        /// <param name="paramValues"></param>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static DataSet GetDataSet(string commandText, string[] paramNames, object[] paramValues, string tableName)
        {
            ds.Clear();
            cmd.CommandText = commandText;
            cmd.Parameters.Clear();
            //为cmd命令的参数集合中添加参数名及对应参数值
            if (paramNames != null)
            {
                for (int i = 0; i < paramNames.Length; i++)
                {
                    cmd.Parameters.AddWithValue(paramNames[i], paramValues[i]);
                }
            }
            sda.SelectCommand = cmd;
            sda.Fill(ds, tableName);
            return ds;
        }
    }
}
