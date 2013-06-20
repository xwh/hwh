<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addproject.aspx.cs" Inherits="Teacher_Addproject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        课题信息表<asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        课题编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
        题 目：&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br/>
        类 型：&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br/>
        专业要求：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br/>
        内容：<br />
        <asp:TextBox ID="TextBox5" runat="server" Height="170px" Width="585px" 
            ClientIDMode="AutoID" TextMode="MultiLine"></asp:TextBox><br/>

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加课题" /><br/>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回教师首页" />
        <br />
        <br/>
    </div>
    </form>
</body>
</html>
