using Dapper;
using System.Collections.Generic;
using System.Data.Common;
using System.Threading.Tasks;
using TestSite.Data.Models;

namespace TestSite.Data
{
    public static class Readings
    {
        public static Task<IEnumerable<Reading>> GetAllReadings(this DbConnection connection)
            => connection.QueryAsync<Reading>("SELECT [unit_id] AS [UnitId], [name], [address], [comment] FROM [dbo].[unit]");

    }
}
