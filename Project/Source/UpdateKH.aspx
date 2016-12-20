<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateKH.aspx.cs" Inherits="UpdateKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/Qlkhachhang.css" rel="stylesheet" />
    <p id="textsuakh">SỬA THÔNG TIN KHÁCH HÀNG</p>
   <div id="suakhachhang">
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="MaKH" DataSourceID="DbUpdate" DefaultMode="Edit" ForeColor="#333333" OnItemCommand="Cancel_Click" OnItemUpdated="Sua_Click">
        <EditItemTemplate>
            Mã khách hàng :
            <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
            <br />
            Tên khách hàng:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            CMTND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            Giới tính&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Gtinh" DataTextField="GioiTinh" DataValueField="GioiTinh" Height="23px" SelectedValue='<%# Bind("GioiTinh") %>' Width="174px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Gtinh" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT GioiTinh FROM KhachHang GROUP BY GioiTinh"></asp:SqlDataSource>
            <br />
            Địa chỉ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            Số điện thoại&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="SoDTTextBox" runat="server" Text='<%# Bind("SoDT") %>' />
            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            TenKH:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            CMND:
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            SoDT:
            <asp:TextBox ID="SoDTTextBox" runat="server" Text='<%# Bind("SoDT") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:FormView>
    <asp:Label ID="err" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="DbUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH " InsertCommand="INSERT INTO [KhachHang] ([TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (@TenKH, @CMND, @GioiTinh, @DiaChi, @SoDT, @Email)" SelectCommand="SELECT * FROM [KhachHang]  WHERE MaKH=@MaKH " UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [CMND] = @CMND, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [Email] = @Email WHERE [MaKH] = @MaKH">
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
        <SelectParameters>
            <asp:QueryStringParameter Type="Int64" QueryStringField="MaKH" Name="MaKH" />
        </SelectParameters>
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
</asp:Content>

