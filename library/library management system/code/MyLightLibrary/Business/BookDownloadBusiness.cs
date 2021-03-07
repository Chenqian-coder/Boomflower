using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using System.Data;
using DataAccess;

namespace Business
{
    public class BookDownloadBusiness
    {
        public static DataSet SelectDownloadByBookId(string tableName, string bookId)
        {
            string sqlText = "select * from Download where bookID = '" + bookId + "'"; ;
            return DataBaseAccess.GetDateSet(sqlText, CommandType.Text, tableName, null, null);
        }
    }
}
