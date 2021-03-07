using DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;

namespace Bussiness
{
    public class PerfumeBussiness
    {
        public static DataTable ShowAllPerfume()
        {
            DataTable dt = DataBaseAccess.GetDataTable("getAllPerfume", CommandType.StoredProcedure);
            return dt;
        }

        public static object ShowHotPerfume()
        {
            DataTable dt = DataBaseAccess.GetDataTable("getHotPerfume", CommandType.StoredProcedure);
            return dt;
        }

        public static object ShowMalePerfume()
        {
            DataTable dt = DataBaseAccess.GetDataTable("getMalePerfume", CommandType.StoredProcedure);
            return dt;
        }

        public static object ShowFemalePerfume()
        {
            DataTable dt = DataBaseAccess.GetDataTable("getFemalePerfume", CommandType.StoredProcedure);
            return dt;
        }

        public static object ShowCollectPerfume(string userId)
        {
            string[] paras = { "@userId" };
            object[] values = { userId };
            DataTable dt = DataBaseAccess.GetDataTable("getCollectPerfume", CommandType.StoredProcedure, paras, values);
            return dt;
        }

        public static object SearchPerfume(string name)
        {
            string[] paras = { "@name"};
            object[] values = { name };
            DataTable dt = DataBaseAccess.GetDataTable("searchPerfume", CommandType.StoredProcedure, paras, values);
            return dt;
        }

        public static Perfume GetPerfumeInfoByName(string pname)
        {
            string[] paras = { "@name" };
            object[] values = { pname };
            DataTable dt = DataBaseAccess.GetDataTable("searchPerfumeByName", CommandType.StoredProcedure, paras, values);
            Perfume perfume = new Perfume();
            perfume.PerfumeId = dt.Rows[0][0].ToString();
            perfume.PerfumeName = dt.Rows[0][1].ToString();
            perfume.Introduce = dt.Rows[0][2].ToString();
            perfume.Image = dt.Rows[0][3].ToString();
            perfume.Price = dt.Rows[0][4].ToString();
            perfume.Counts = dt.Rows[0][5].ToString();
            perfume.IsHot = (bool)dt.Rows[0][6];
            perfume.IsMale = (bool)dt.Rows[0][7];
            return perfume;
        }

        public static bool IsExistPerfumeId(string id)
        {
            string returnPa = "@result";
            string[] paras = { "@perfumeId" };
            object[] values = { id };
            object returnValue;
            DataBaseAccess.ExcuteSql("IsExistPerfumeId", CommandType.StoredProcedure, paras, values, returnPa, out returnValue, SqlDbType.Bit);
            return (bool)returnValue;
        }

        public static bool InsertPerfumeInfo(Perfume perfume)
        {
            string[] paras = { "@Id", "@Name", "@Introduce", "@Image", "@Price","Counts","IsHot","IsMale" };
            object[] values = { perfume.PerfumeId,perfume.PerfumeName,perfume.Introduce,perfume.Image,perfume.Price,perfume.Counts,perfume.IsHot,perfume.IsMale };
            int n = DataBaseAccess.ExcuteSql("InsertPerfumeInfo", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }

        public static bool UpdatePerfumeInfo(Perfume perfume)
        {
            string[] paras = { "@PerfumeId", "@PerfumeName", "@Introduce", "@Image", "@Price", "@Counts", "@IsHot", "@IsMale" };
            object[] values = { perfume.PerfumeId, perfume.PerfumeName, perfume.Introduce, perfume.Image, perfume.Price, perfume.Counts, perfume.IsHot, perfume.IsMale };
            int n = DataBaseAccess.ExcuteSql("UpdatePerfumeInfo", CommandType.StoredProcedure, paras, values);
            if (n == 1)
                return true;
            else
                return false;
        }
    }
}
