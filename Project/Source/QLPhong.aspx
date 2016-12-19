<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QLPhong.aspx.cs" Inherits="QLPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="qlttphong">
        <h1>QUẢN LÝ THÔNG TIN PHÒNG</h1>
        <table style="border-spacing:10px;border-collapse:separate">
            <tr>
                <td>Tên phòng</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Trạng thái</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="TT" DataTextField="TrangThai" DataValueField="TrangThai" Width="175" ></asp:DropDownList>
                    <asp:SqlDataSource ID="TT" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT TrangThai FROM Phong GROUP BY TrangThai"></asp:SqlDataSource>
            </tr>
            <tr>
                <td>Mã LP</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="MLP" DataTextField="TenPhong" DataValueField="MaLP" Width="175">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="MLP" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [LoaiPhong]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Ảnh</td>
                <td>

                    <asp:FileUpload ID="FileUpload1" runat="server"/>

                    </td>
            </tr>
            <tr>
                <td>Giá</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" required="required"></asp:TextBox></td>
            </tr>
        </table>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Sửa" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Xóa" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1" ForeColor="#333333" GridLines="None" Width="60%" style="text-align:center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns >
                <asp:BoundField DataField="MaP" HeaderText="Mã phòng" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="TenP" HeaderText="Tên phòng" />
                <asp:BoundField DataField="MaLP" HeaderText="Mã loại phòng" />
                <asp:ImageField DataImageUrlField="Anh" HeaderText="Ảnh">
                    <ControlStyle Width="100px" />
                    <HeaderStyle Height="80px" Width="100px" />
                    <ItemStyle Height="80px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="Gia" HeaderText="Giá" />
                <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" CommandArgument='<%# Eval("MaP") %>' OnClientClick="return confirm('Are you sure')" OnCommand="LinkButton1_Command"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Width="100px" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
</asp:Content>

