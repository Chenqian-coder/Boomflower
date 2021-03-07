using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entity;
using System.Configuration;

namespace DataAccess
{
    public static class DataBaseAccess
    {
        static SqlConnection con;
        static SqlCommand cmd;
        static SqlParameter spr;
        static SqlDataAdapter sda;

        static DataBaseAccess()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["demoStr"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
            spr = new SqlParameter();
            sda = new SqlDataAdapter();
        }

        public static int ExcuteSql(string sqlText, CommandType cmdType, string[] param, object[] values, string pa, out object value, SqlDbType type)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = cmdType;
            if (param != null)
            {
                cmd.Parameters.Clear();
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.AddWithValue(param[i], values[i]);
                }
            }
            cmd.Parameters.Add(pa, type);
            cmd.Parameters[pa].Direction = ParameterDirection.Output;
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            value = cmd.Parameters[pa].Value;
            return n;
        }

        public static int ExcuteSql(string sqlText, CommandType cmdType, string[] param, object[] values)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = cmdType;
            if (param != null)
            {
                cmd.Parameters.Clear();
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.AddWithValue(param[i], values[i]);
                }
            }

            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();

            return n;
        }
        public static DataSet GetDateSet(string sqlText, CommandType cmdType, string tableName, string[] paramNames, object[] paramValues)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear();
            if (paramNames != null)
            {
                for (int i = 0; i < paramNames.Length; i++)
                {
                    cmd.Parameters.AddWithValue(paramNames[i], paramValues[i]);
                }
            }
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds, tableName);
            return ds;
        }
        public static DataTable GetDataTable(string cmdText, CommandType cmdType)
        {
            sda.SelectCommand = new SqlCommand();
            sda.SelectCommand.CommandText = cmdText;
            sda.SelectCommand.CommandType = cmdType;
            sda.SelectCommand.Connection = con;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public static DataTable GetDataTable(string cmdText, CommandType cmdType, string[] names, object[] values)
        {
            sda.SelectCommand = new SqlCommand();
            sda.SelectCommand.CommandText = cmdText;
            sda.SelectCommand.CommandType = cmdType;
            sda.SelectCommand.Connection = con;
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    sda.SelectCommand.Parameters.AddWithValue(names[i], values[i]);
                }
            }
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }

        public static int ExecuteSQL(string cmdText, CommandType cmdType, string[] names, object[] values)
        {
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear();
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    cmd.Parameters.AddWithValue(names[i], values[i]);
                }
            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            int count = cmd.ExecuteNonQuery();
            con.Close();
            return count;
        }
        public static object ExcuteSql2(string sqlText, CommandType cmdType, string[] paramNames, object[] paramValues)
        {
            cmd.CommandText = sqlText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear();
            if (paramNames != null)
            {
                for (int i = 0; i < paramNames.Length; i++)
                {
                    cmd.Parameters.AddWithValue(paramNames[i], paramValues[i]);
                }
            }
            con.Open();
            object obj = cmd.ExecuteScalar();
            con.Close();
            return obj;
        }

    }
}
