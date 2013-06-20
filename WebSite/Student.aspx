<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

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
    <div>
        <strong><span class="style1">学生登陆界面</span></strong><br />
        <br />
        课题信息表<br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="project_num" DataSourceID="LinqDataSource1" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="project_num" HeaderText="project_num" 
                    ReadOnly="True" SortExpression="project_num" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="detail" HeaderText="detail" 
                    SortExpression="detail" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="project">
        </asp:LinqDataSource>
    </div>
    <p>
        <asp:Button ID="Button2" runat="server"  onclick="Button2_Click" Text="开题报告"  />
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="退出" />
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
