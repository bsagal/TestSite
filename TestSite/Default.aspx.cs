using System;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.Data;

public partial class DefaultPage : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterAsyncTask(new PageAsyncTask(LoadDataAsync));
    }

    private async Task LoadDataAsync()
    {
        using var db = DbUtils.CreateConnection();
        ReadingTable.Readings = await db.GetAllReadings();
    }
}