<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style3
        {
            font-size: medium;
        }
        .style4
        {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    	<div id="login">
        <table  width="100%" style="height: 222px">
        <tr><td class="style4"> &nbsp;毕业<strong>论文选题系统</strong></td></tr><tr><td class="style1">
        	    &nbsp;<span class="style3">用户名 ：</span><asp:TextBox ID="txtuid" runat="server" CssClass="text" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   Font-Size="Small"
                    ControlToValidate="txtuid" Display="Dynamic" ErrorMessage="*必填"></asp:RequiredFieldValidator>
                &nbsp;</td></tr>
                <tr><td height="13px"></td></tr><tr><td>
             
                &nbsp; 
                             密&nbsp;码 ：<asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="text" style=" vertical-align:top "></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="*必填" 
                    style="font-size: small"></asp:RequiredFieldValidator>
          </td></tr><tr><td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnlogin" runat="server" Text="登 录" 
                    onclick="btnlogin_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
      </td></tr></table>  
            
    
    </div>
    </form>
</body>
</html>
