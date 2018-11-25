<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="DateTestApp.IndexUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="dateTextBox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <asp:TextBox ID="showDateTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="calenderTextBox" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/Image/Calender.jpg" OnClick="ImageButton1_Click" Width="22px" />
&nbsp;&nbsp;
        <asp:TextBox ID="calenederToTextBox" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="16px" ImageUrl="~/Image/Calender.jpg" OnClick="ImageButton2_Click" Width="22px" />
        <br />
        <asp:Button ID="showButton" runat="server" OnClick="showButton_Click" Text="Show" />
        <br />
        <asp:Calendar ID="Calendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar_SelectionChanged" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:Calendar ID="CalendarTo" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="CalendarEnd_SelectionChanged" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:GridView ID="dateGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
&nbsp;</div>
    </form>
</body>
</html>
