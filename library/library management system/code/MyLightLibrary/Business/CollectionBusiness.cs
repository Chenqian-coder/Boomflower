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
    public class CollectionBusiness
    {
        public static bool IsExistCollection(string userId,string bookId)
        {
            string returnPa = "@result";
            string[] paras = { "@userId" ,"@bookId"};
            object[] values = { userId ,bookId};
            object returnValue;
            DataBaseAccess.ExcuteSql("IsExistCollection", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }
        public static bool InsertCollection(string userId, string bookId)
        {
            string sqlText = "insert into Collection values (@bookId,@userId)";
            string[] paras = { "@bookId", "@userId" };
            object[] values = { bookId,userId };
            int n = DataBaseAccess.ExcuteSql(sqlText, CommandType.Text, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }
        public static bool DeleteCollection(string userId,string bookId)
        {
            string sqlText = "delete from Collection where userId=@userId and bookId=@bookId";
            string[] paramNames = { "@userId","@bookId" };
            object[] paramValues = { userId,bookId };
            int n = DataBaseAccess.ExcuteSql(sqlText, CommandType.Text, paramNames, paramValues);
            if (n == 1)
                return true;
            else
                return false;
        }
        public static DataSet SelectCollectionByUserId(string tableName, string userId)
        {
            string sqlText = "select * from Collection,Books where Collection.bookId=Books.bookId and userId = '" + userId + "'";
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
    }
}
