<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangMuaHang.aspx.cs" Inherits="QLBANHOA.TrangMuaHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TenHoa" DataValueField="TenHoa"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TenHoa], [MoTa], [GiaBan], [HinhAnh] FROM [Hoa]"></asp:SqlDataSource>
    </form>
</body>
</html>
