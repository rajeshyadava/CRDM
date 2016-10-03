using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDM.Data
{
    public class DBConnection : IDisposable
    {

        readonly SqlConnection _connection;

        private DBConnection()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["CRDMConnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        public static DBConnection GetConnection()
        {
            return new DBConnection();
        }

        public SqlCommand ExecuteReader(string query)
        {
            SqlCommand cmd = new SqlCommand(query);
            return cmd;
        }

        public void Dispose()
        {
            _connection.Dispose();
        }
    }
}
