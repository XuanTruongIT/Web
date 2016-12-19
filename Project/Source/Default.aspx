<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr>
                <td>Tên phòng</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Trạng thái</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="TT" DataTextField="TrangThai" DataValueField="TrangThai" Width="150"></asp:DropDownList>
                    <asp:SqlDataSource ID="TT" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT TrangThai FROM Phong GROUP BY TrangThai"></asp:SqlDataSource>
            </tr>
            <tr>
                <td>Mã LP</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="MLP" DataTextField="TenPhong" DataValueField="MaLP" Width="150">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="MLP" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [LoaiPhong]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Ảnh</td>
                <td>

                    <asp:FileUpload ID="FileUpload1" runat="server" />

                    </td>
            </tr>
            <tr>
                <td>Giá</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Sửa" />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Xóa" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="60%" style="text-align:center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="MaP" HeaderText="Mã phòng" />
                <asp:BoundField DataField="TenP" HeaderText="Tên phòng" />
                <asp:BoundField DataField="MaLP" HeaderText="Mã loại phòng" />
                <asp:ImageField DataImageUrlField="Anh" HeaderText="Ảnh">
                    <ControlStyle Width="70px" />
                    <HeaderStyle Height="70px" Width="70px" />
                    <ItemStyle Height="70px" Width="70px" />
                </asp:ImageField>
                <asp:BoundField DataField="Gia" HeaderText="Giá" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
