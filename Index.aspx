<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Guia_9.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [City] FROM [Customers] WHERE ([City] = @City)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="textCity" Name="City" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lbCiudad" runat="server" Text="Ciudad: "></asp:Label>
            <asp:TextBox ID="textCity" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
        </div>
        <asp:GridView ID="gvTabla" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" Width="234px">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
