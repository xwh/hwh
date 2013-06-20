<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addproposal.aspx.cs" Inherits="Addproposal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <span class="style1"><strong>开题报告表</strong></span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="proposal_num" DataSourceID="LinqDataSource4" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="user_name" HeaderText="user_name" 
                    SortExpression="user_name" />
                <asp:BoundField DataField="teacher_name" HeaderText="teacher_name" 
                    SortExpression="teacher_name" />
                <asp:BoundField DataField="proposal_num" HeaderText="proposal_num" 
                    ReadOnly="True" SortExpression="proposal_num" />
                <asp:BoundField DataField="proposal1" HeaderText="proposal1" 
                    SortExpression="proposal1" />
                <asp:BoundField DataField="project_num" HeaderText="project_num" 
                    SortExpression="project_num" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    
        <asp:LinqDataSource ID="LinqDataSource4" runat="server" 
            ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="proposal">
        </asp:LinqDataSource>
    
    </div>
    论文题目：<asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="LinqDataSource1" DataTextField="title" 
        DataValueField="title">
    </asp:DropDownList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="project">
    </asp:LinqDataSource>
    <br />
    指导教师：<asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="LinqDataSource2" DataTextField="name" 
        DataValueField="name" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="teacher">
    </asp:LinqDataSource>
    <br />
    姓名：<asp:TextBox ID="TextBox3" 
        runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    开题报告编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    开题报告：<br />
    <asp:TextBox ID="TextBox1" runat="server" Height="250px" TextMode="MultiLine" 
        Width="500px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交开题报告" />
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回学生首页" />
    </form>
</body>
</html>
