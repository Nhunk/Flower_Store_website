<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="QLBANHOA.DangNhap" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Flower Shop Login</title>
  <link rel="stylesheet" href="css\style.css" />
</head>
<body>
  <form id="form1" runat="server">
    <div class="container">
      <img
        src="Images/I_logo.png"
        alt="Logo Shop Hoa"
        class="logo"
      />  
      <div class="login-box">
        <h1>LOGIN</h1>

        <asp:Label ID="lblThongBao" runat="server" ForeColor="Red" CssClass="error-message" />

        <label>
          <span>User:</span>
          <asp:TextBox ID="txtEmail" runat="server" CssClass="input-text" OnTextChanged="txtEmail_TextChanged" />
        </label>
        <label>
          <span>Password:</span>
          <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="input-text" />
        </label>

        <asp:Button ID="btnDangNhap" runat="server" Text="Login" CssClass="login-btn" OnClick="btnDangNhap_Click" />
      </div>
    </div>
  </form>
</body>
</html>
