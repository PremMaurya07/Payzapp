using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace e_PayZapp.connection
{
    public sealed class ePayZappConnection
    {
        public static SqlConnection SetConnection()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EPayZappConnection"].ConnectionString);
            return con;
        }
    }
   
}
