using System;
using System.Collections.Generic;
using System.Text.Json;
using TestSite.Data.Models;


public partial class UserControls_ReadingsTable : System.Web.UI.UserControl
{

    public IEnumerable<Reading> Readings { get; set; }

    public string TableClientId => ReadingsTable.ClientID;

    private string _tableVariable;
    public string TableVariable => _tableVariable ??= $"{ClientID}_var";

    private string _dataVariable;
    public string DataVariable => _dataVariable ??= $"{ClientID}_data";

    private string _settingsVariable;
    public string SettingsVariable => _settingsVariable ??= $"{ClientID}_settings";

    protected string JsonData => JsonSerializer.Serialize(Readings);

    protected void Page_Load(object sender, EventArgs e)
    {
        var key = $"ReadingsTable:{ClientID}:init";
        if (!Page.ClientScript.IsClientScriptIncludeRegistered(key))        {
            Page.ClientScript.RegisterStartupScript(GetType(), key, $"{TableVariable} = $({ReadingsTable.ClientID}).DataTable({SettingsVariable});", true);

        }
    }
}