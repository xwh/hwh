<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>教师登陆界面</strong></div>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加论题" Width="100px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="修改开题报告"  Width="100px" />
    </p>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click"  Text="退出" Width="100px" />
    </form>
</body>
</html>
