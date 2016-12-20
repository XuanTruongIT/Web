<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateNV.aspx.cs" Inherits="UpdateNV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/Qlnhanvien.css" rel="stylesheet" />
     
    <p id="textsuanv">SỬA THÔNG TIN NHÂN VIÊN</p>
   <div id="suanhanvien">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaNV" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" DefaultMode="Edit" OnItemCommand="Cancel_Click" OnItemUpdated="Updated_Click" Width="298px">
        <EditItemTemplate>
            Mã nhân viên&nbsp;&nbsp;&nbsp; :
            <asp:Label ID="MaNVLabel1" runat="server" Text='<%# Eval("MaNV") %>' />
            <br />
            Tên nhân viên&nbsp; :
            <asp:TextBox ID="TenNVTextBox" runat="server" Text='<%# Bind("TenNV") %>' />
            <br />
            Giới tính&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="GioiTinh" DataValueField="GioiTinh" Height="23px" SelectedValue='<%# Bind("GioiTinh") %>' Width="174px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT GioiTinh FROM KhachHang GROUP BY GioiTinh"></asp:SqlDataSource>
            <br />
            CMTND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            TenNV:
            <asp:TextBox ID="TenNVTextBox" runat="server" Text='<%# Bind("TenNV") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            CMND:
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaNV:
            <asp:Label ID="MaNVLabel" runat="server" Text='<%# Eval("MaNV") %>' />
            <br />
            TenNV:
            <asp:Label ID="TenNVLabel" runat="server" Text='<%# Bind("TenNV") %>' required="required"/>
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            CMND:
            <asp:Label ID="CMNDLabel" runat="server" Text='<%# Bind("CMND") %>' type="number" required="required" />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' required="required" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:FormView>


    <asp:Label ID="err" Text="" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([TenNV], [GioiTinh], [CMND], [Email]) VALUES (@TenNV, @GioiTinh, @CMND, @Email)" SelectCommand="SELECT * FROM [NhanVien] WHERE [MaNV] = @MaNV" UpdateCommand="UPDATE [NhanVien] SET [TenNV] = @TenNV, [GioiTinh] = @GioiTinh, [CMND] = @CMND, [Email] = @Email WHERE [MaNV] = @MaNV">
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:QueryStringParameter Type="Int32" Name="MaNV" QueryStringField="MaNV" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaNV" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

