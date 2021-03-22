<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ReadingsTable.ascx.cs" Inherits="UserControls_ReadingsTable" %>
<div class="table-responsive">
    <table runat="server" class="table table-striped table-sm" id="ReadingsTable"></table>
</div>

<script>

    <%=DataVariable%> = <%=JsonData%>;

    <%=SettingsVariable%> = {
        data: <%=DataVariable%>,
        columns: [
            { title: "Unit Number", data: "UnitId" },
            { title: "Name", data: "Name" },
            { title: "Address", data: "Address" },
            { title: "Comment", data: "Comment" }
        ]
    };
</script>