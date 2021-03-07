using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Entity;

namespace Business
{
    public class BookBusiness
    {
       
        public static DataTable ShowAllBooks()
        {
            DataTable dt = DataBaseAccess.GetDataTable("getAllBooks", CommandType.StoredProcedure);
            return dt;
        }
        public static DataSet SelectBooksByType(string tableName,string type)
        {
            string sqlText = "select * from Books where bookType like '%" + type + "%'"; ;
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static DataSet SelectBooksByName(string tableName, string name)
        {
            string sqlText = "select * from Books where bookName like '%" + name + "%'"; ;
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
        public static Books GetBookInfoByID(string bookId)
        {
            string sqlText = "select * from Books where bookId=@bookId";
            string[] paramNames = { "@bookId" };
            object[] paramValues = { bookId };
            DataSet ds = DataBaseAccess.GetDateSet(sqlText, CommandType.Text, "book", paramNames, paramValues);
            Books book = new Books();
            book.BookId =int.Parse(ds.Tables["book"].Rows[0][0].ToString());
            book.BookName = ds.Tables["book"].Rows[0][1].ToString();
            book.BookIntroduce = ds.Tables["book"].Rows[0][2].ToString();
            book.BookImage = ds.Tables["book"].Rows[0][3].ToString();
            book.BookType = ds.Tables["book"].Rows[0][4].ToString();
            
            return book;
        }
        public static DataSet SelectBooksByIdAndName(string bookId, string name, string tableName)
        {
            string sqlText = "select * from Books where bookId like '%" + bookId + "%' and bookName like '%"+name+"%'" ;
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
      
    }
}
