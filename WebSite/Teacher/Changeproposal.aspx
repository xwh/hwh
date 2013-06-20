<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changeproposal.aspx.cs" Inherits="Teacher_Changeproposal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        开题报告表<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        开题报告编号：<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="LinqDataSource1" DataTextField="proposal_num" 
            DataValueField="proposal_num">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="proposal">
        </asp:LinqDataSource>
        <br/>
        开题报告：<br/>
        <asp:TextBox ID="TextBox1" runat="server" Height="250px" TextMode="MultiLine" 
            Width="500px"></asp:TextBox><br/>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改" /><br/>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回教师首页" /><br/>
    </div>
    </form>
</body>
</html>
