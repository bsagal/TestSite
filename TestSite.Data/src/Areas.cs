using Dapper;
using System.Collections.Generic;
using System.Data.Common;
using System.Text.Json;
using System.Threading.Tasks;
using TestSite.Data.Models;

namespace TestSite.Data
{
    public static class Areas
    {
        public static Task<IEnumerable<Area>> GetAllAreas(this DbConnection connection)
            => connection.QueryAsync<Area, string, Area>(@"
SELECT		area.[area_id], area.name, CONCAT('[', STRING_AGG(area_unit.unit_id, ','),']') AS units
FROM		[dbo].area
			LEFT JOIN [dbo].area_unit ON area.area_id = area_unit.area_id
GROUP BY	area.[area_id], area.name", GetAreaWithUnits, splitOn: "units");

        private static Area GetAreaWithUnits(Area area, string units)
        {
            area.Units = JsonSerializer.Deserialize<int[]>(units);
            return area;
        }

    }
}
