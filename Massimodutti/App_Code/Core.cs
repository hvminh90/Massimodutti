using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Massimodutti.App_Code
{
    public class Core
    {
        #region ConnectionConfig

        public static string RegisterConnection()
        {
            string scnn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            return scnn;
        }

        #endregion
        public static DataTable GetDataTable(string sql)
        {
            var con = new SqlConnection(RegisterConnection());
            con.Open();
            var dt = new DataTable();
            try
            {
                var da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return dt;
        }
    }
}