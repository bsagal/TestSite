using System.Data.Common;
using System.Data.SqlClient;
using System.Web.Configuration;

public static class DbUtils
{
    public static DbConnection CreateConnection() => new SqlConnection(WebConfigurationManager.ConnectionStrings["Data"].ConnectionString);
}