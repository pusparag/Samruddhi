using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Samruddhi.Utilities
{
    public static class Repository
    {
        private static string _connectionString= ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;                

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }
    }

}