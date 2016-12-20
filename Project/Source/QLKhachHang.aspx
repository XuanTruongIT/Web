<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QLKhachHang.aspx.cs" Inherits="QLKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/Qlkhachhang.css" rel="stylesheet" />
    <div id="qlkhaschhang_form">
    <br/>
    <p id="txt_qlkh">QUẢN LÝ THÔNG TIN KHÁCH HÀNG</p>
    <div id="formkh">
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="MaKH" DataSourceID="DBInsert" ForeColor="#333333" DefaultMode="Insert" OnItemCommand="Quaylai_Click" OnItemInserted="Them_Click" BorderStyle="Solid" Font-Size="20px" Width="430px">
        
        <InsertItemTemplate>
            Tên khách hàng:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            CMND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            Giới tính&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GioiTinh" DataTextField="GioiTinh" DataValueField="GioiTinh" Height="23px" SelectedValue='<%# Bind("GioiTinh") %>' Width="174px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="GioiTinh" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT GioiTinh FROM KhachHang GROUP BY GioiTinh"></asp:SqlDataSource>
            <br />
            Địa chỉ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            Số điện thoại&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="SoDTTextBox" runat="server" Text='<%# Bind("SoDT") %>' />
            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm khách hàng" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Quay lại" />
        
        </InsertItemTemplate>

        <ItemTemplate>
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
            <br />
            TenKH:
            <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            CMND:
            <asp:Label ID="CMNDLabel" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            DiaChi:
            <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            SoDT:
            <asp:Label ID="SoDTLabel" runat="server" Text='<%# Bind("SoDT") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:FormView>
        </div>
    <div id="qlkhachhang">
    <asp:Label ID="err" runat="server" Text=""></asp:Label>

    <asp:SqlDataSource ID="DBInsert" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (@TenKH, @CMND, @GioiTinh, @DiaChi, @SoDT, @Email)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [CMND] = @CMND, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [Email] = @Email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    
   <p id="dskh_text"> ------------DANH SÁCH KHÁCH HÀNG---------------</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaKH" DataSourceID="DBGridView" Width="777px" CellSpacing="2" Font-Size="15px">
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
            <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" SortExpression="TenKH" />
            <asp:BoundField DataField="CMND" HeaderText="CMTND" SortExpression="CMND" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
            <asp:BoundField DataField="SoDT" HeaderText="Số ĐT" SortExpression="SoDT" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:TemplateField HeaderText="Xóa KH" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" OnClientClick="return confirm('Are you sure you want to delete?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="MaKH" DataNavigateUrlFormatString="UpdateKH.aspx?MaKH={0}" Text="Sửa" HeaderText="Sửa" />
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
    
    <asp:SqlDataSource ID="DBGridView" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (@TenKH, @CMND, @GioiTinh, @DiaChi, @SoDT, @Email)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [CMND] = @CMND, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [Email] = @Email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
        </div>
</asp:Content>

