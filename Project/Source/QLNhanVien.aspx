<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QLNhanVien.aspx.cs" Inherits="QLNhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="CSS/Qlnhanvien.css" rel="stylesheet" />
    <div id="qlnhanvien_form">
        <br />
        <p id="qlnv_txt">QUẢN LÝ NHÂN VIÊN</p>
        <div id="formnhanvien">
            <asp:formview id="FormView1" runat="server" datakeynames="MaNV" datasourceid="SqlDataSource1" defaultmode="Insert" onitemcommand="Cancel_Click" oniteminserted="Inserted_Click" cellpadding="4" forecolor="#333333" height="220px" width="390px" borderstyle="Solid" font-size="20px">
        
        
                <EditItemTemplate>
                    MaNV:
                    <asp:Label ID="MaNVLabel1" runat="server" Text='<%# Eval("MaNV") %>' />
                    <br />
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
        
        
        <InsertItemTemplate>
            Tên nhân viên
            <asp:TextBox ID="TenNVTextBox" runat="server" Text='<%# Bind("TenNV") %>'/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="TenNVTextBox" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            Giới tính&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GT" DataTextField="GioiTinh" DataValueField="GioiTinh" Height="35px" SelectedValue='<%# Bind("GioiTinh") %>' Width="250px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="GT" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT GioiTinh FROM KhachHang GROUP BY GioiTinh"></asp:SqlDataSource>
            <br />
            CMND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' type="number"/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="CMNDTextBox" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="EmailTextBox" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Nhập đúng định dạng mail" ControlToValidate="EmailTextBox" Display="Dynamic" EnableClientScript="False" Font-Size="10pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /><br /><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm nhân viên " />
             &nbsp; &nbsp; &nbsp; &nbsp;
           <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Quay lại" />

        </InsertItemTemplate>
        <ItemTemplate>
            MaNV:
            <asp:Label ID="MaNVLabel" runat="server" Text='<%# Eval("MaNV") %>' />
            <br />
            TenNV:
            <asp:Label ID="TenNVLabel" runat="server" Text='<%# Bind("TenNV") %>' />
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            CMND:
            <asp:Label ID="CMNDLabel" runat="server" Text='<%# Bind("CMND") %>'/>
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
    </asp:formview>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([TenNV], [GioiTinh], [CMND], [Email]) VALUES (@TenNV, @GioiTinh, @CMND, @Email)" SelectCommand="SELECT * FROM [NhanVien]" UpdateCommand="UPDATE [NhanVien] SET [TenNV] = @TenNV, [GioiTinh] = @GioiTinh, [CMND] = @CMND, [Email] = @Email WHERE [MaNV] = @MaNV">
                <DeleteParameters>
                    <asp:Parameter Name="MaNV" Type="Int32" />
                </DeleteParameters>
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
        <div id="dsthemnv">
            <asp:label id="err" runat="server" text=""></asp:label>
            <br />
            <p id="dsnhanvien_txt">
                ----------DANH SÁCH NHÂN VIÊN----------
            </p>
            <asp:gridview  runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="Grid" CellPadding="4" ForeColor="#333333" GridLines="None" Height="200px" Width="550px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                    <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" SortExpression="TenNV" />
                    <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
                    <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" OnClientClick="return confirm('Are you sure you want to delete ?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="MaNV" DataNavigateUrlFormatString="UpdateNV.aspx?MaNV={0}" HeaderText="Sửa" Text="Sửa" />
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

            </asp:gridview>
            <asp:SqlDataSource ID="Grid" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([TenNV], [GioiTinh], [CMND], [Email]) VALUES (@TenNV, @GioiTinh, @CMND, @Email)" SelectCommand="SELECT * FROM [NhanVien]" UpdateCommand="UPDATE [NhanVien] SET [TenNV] = @TenNV, [GioiTinh] = @GioiTinh, [CMND] = @CMND, [Email] = @Email WHERE [MaNV] = @MaNV">
                <DeleteParameters>
                    <asp:Parameter Name="MaNV" Type="Int32" />
                </DeleteParameters>
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

    </div>

</asp:Content>

