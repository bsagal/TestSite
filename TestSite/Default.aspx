<%@ Page Async="true" Title="Unit List" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="DefaultPage" %>

<%@ Register src="~/UserControls/ReadingsTable.ascx" tagname="ReadingsTable" tagprefix="rt" %>

<asp:Content runat="server" ContentPlaceHolderID="Main">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Unit List</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="input-group">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="<%=SelectArea.ClientID%>">Area</label>
                </div>
                <asp:DropDownList runat="server" ID="SelectArea" class="custom-select">
                    <asp:ListItem Value="">All</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <rt:ReadingsTable runat="server" ID="ReadingTable"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="HiddenContent">
    <script>
        $('#<%=SelectArea.ClientID%>').change(function () {
            var val = $(this).val();
            var newData = <%=ReadingTable.DataVariable%>;
            if (val != "") {
                var filter = JSON.parse(val);
                newData = newData.filter(function (val) {
                    return filter.includes(val.UnitId);
                });
            }
            var table = <%=ReadingTable.TableVariable%>;
            table.clear();
            table.rows.add(newData).draw();
        });
    </script>
</asp:Content>
