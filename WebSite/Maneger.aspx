<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maneger.aspx.cs" Inherits="Maneger" %>

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
    <span class="style1"><strong>管理员登陆界面</strong></span><br />
    <br />
    管理员信息表<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="admin_name" DataSourceID="LinqDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="admin_name" HeaderText="admin_name" ReadOnly="True" 
                SortExpression="admin_name" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
        </Columns>
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
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="admin">
    </asp:LinqDataSource>
    <br />
    学生信息表<br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="user_name" DataSourceID="LinqDataSource2" AllowPaging="True" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" ReadOnly="True" 
                SortExpression="user_name" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
            <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
            <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
            <asp:BoundField DataField="telephone" HeaderText="telephone" 
                SortExpression="telephone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
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
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="user">
    </asp:LinqDataSource>
    <br />
    教师信息表<br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="teacher_name" DataSourceID="LinqDataSource3" 
        AllowPaging="True" AllowSorting="True" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="teacher_name" HeaderText="teacher_name" 
                ReadOnly="True" SortExpression="teacher_name" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
            <asp:BoundField DataField="telephone" HeaderText="telephone" 
                SortExpression="telephone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="department" HeaderText="department" 
                SortExpression="department" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource3" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="teacher">
    </asp:LinqDataSource>
    <br />
    课题信息表<br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="project_num" DataSourceID="LinqDataSource4" 
        AllowPaging="True" AllowSorting="True" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="project_num" HeaderText="project_num" 
                ReadOnly="True" SortExpression="project_num" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="detail" HeaderText="detail" 
                SortExpression="detail" />
            <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource4" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="project">
    </asp:LinqDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="退出" />
    </form>
</body>
</html>
