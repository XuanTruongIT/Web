<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QlHoaDon.aspx.cs" Inherits="QlHoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="CSS/HoaDon.css" rel="stylesheet" />
    <div id="danhsachhd">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>
                <center><h1 >THÔNG TIN HÓA ĐƠN</h1></center>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                Tìm kiếm theo tên khách hàng:
                <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btntimkiem" runat="server" Text="Tìm kiếm" OnClick="btntimkiem_Click" /></p>
                
                </p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="MaHD" HeaderText="Mã hóa đơn" />
                        <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" />
                        <asp:BoundField DataField="TenP" HeaderText="Tên phòng" />
                        <asp:BoundField DataField="Gia" HeaderText="Giá phòng" />
                        <asp:BoundField DataField="NgayDen" HeaderText="Ngày đặt phòng" />
                        <asp:BoundField DataField="NgayDi" HeaderText="Ngày rời đi" />
                        <asp:BoundField DataField="NgayLap" HeaderText="Ngày lập hóa đơn" />
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </p>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

