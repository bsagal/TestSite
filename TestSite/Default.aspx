<%@ Page Async="true" Title="Unit List" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="DefaultPage" %>

<%@ Register src="~/UserControls/ReadingsTable.ascx" tagname="ReadingsTable" tagprefix="rt" %>

<asp:Content runat="server" ContentPlaceHolderID="Main">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Unit List</h1>
    </div>

    <rt:ReadingsTable runat="server" ID="ReadingTable"/>
</asp:Content>
