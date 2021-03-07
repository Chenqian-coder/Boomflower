using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using DataAccess;

namespace Business
{
    public class CommentBusiness
    {
        public static DataSet SelectCommentByBookIdAndUserId(string tableName, string bookId )
        {
            string sqlText = "select * from Comment where bookId = '" + bookId + "'";
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static bool InsertBookComment(Comment comment)
        {
            string sqlText = "insert into Comment values (@userId,@bookId,@userName,@comment,@time)";
            string[] paramNames = { "@userId","@bookId","@userName","@comment","@time" };
            object[] paramValues = { comment.UserId,comment.BookId,comment.UserName,comment.BookComment,comment.Time };
            int n = DataBaseAccess.ExcuteSql(sqlText, CommandType.Text, paramNames, paramValues);
            if (n == 1)
                return true;
            else
                return false;
        }
        public static DataSet SelectCommentByUserId(string tableName, string userId)
        {
            string sqlText = "select * from Books,Comment where Books.bookId=Comment.bookId and userid= '" + userId + "'";
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static DataSet GetCommentTable(string tableName)
        {
            string sqlText = "select * from Comment";
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static DataSet GetCommentTableByBookIdAndUserId(string bookId, string userId, string tableName)
        {
            string sqlText = "select * from Comment where userId like '%" + userId + "%' and bookId like '%" + bookId + "%'";
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static bool DeleteInfoByCommentId(string id)
        {
            string sqlText = "delete from Comment where commentId=@Id";
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
