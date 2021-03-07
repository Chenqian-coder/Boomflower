using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using System.Data;
using DataAccess;

namespace Bussiness
{
    public class OrderBussiness
    {
        public static int InsertOrders(Orders orders)
        {
            string[] names = new string[] { "userId", "perfumeName", "price", "counts", "total", "time", "status" };
            object[] values = new object[] { orders.UserId, orders.PerfumeName, orders.Price, orders.Counts, orders.Total, orders.Time, orders.Status };
            object obj = DataBaseAccess.ExecuteSQL("InsertOrders", CommandType.StoredProcedure, names, values);
            return Convert.ToInt32(obj);
        }

        public static DataTable getALLOrderInfo(string userId)
        {
            string[] paras = { "@Id" };
            object[] values = { userId };
            DataTable dt = DataBaseAccess.GetDataTable("GetAllOrderInfo", CommandType.StoredProcedure, paras, values);
            return dt;
        }
    }
}
