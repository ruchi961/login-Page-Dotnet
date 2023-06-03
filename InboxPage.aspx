<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InboxPage.aspx.cs" Inherits="Login_Page.InboxPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
   
    <h1 style="color:darkblue;">Welcome, 
        <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
    </h1>

    <h2 style="color:orangered">This is you Inbox, Check all your Emails here</h2>
    <asp:Button ID="btnLogOut" runat="server" Text="Log Out" style="color:darkblue;width:100px;font-size:25px;" OnClick="Button1_Click" />
    </form>
 </body>
</html>