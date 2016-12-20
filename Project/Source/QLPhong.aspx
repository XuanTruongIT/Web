<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QLPhong.aspx.cs" Inherits="QLPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="CSS/Phong.css" rel="stylesheet" />
    
    <div id="qlttphong">
        <h1>QUẢN LÝ THÔNG TIN PHÒNG</h1>
        <br />
        <br />
        <div id="full_fg">
        <div id="left_form">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaP" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" OnItemCommand="Cancel_Click">
            <EditItemTemplate>
                MaP:
                <asp:Label ID="MaPLabel1" runat="server" Text='<%# Eval("MaP") %>' />
                <br />
                TenP:
                <asp:TextBox ID="TenPTextBox" runat="server" Text='<%# Bind("TenP") %>' />
                <br />
                TrangThai:
                <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
                <br />
                MaLP:
                <asp:TextBox ID="MaLPTextBox" runat="server" Text='<%# Bind("MaLP") %>' />
                <br />
                Anh:
                <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BorderStyle="None" />
            <InsertItemTemplate>
                <br />
                <table id="ndformqlp">
                    <tr>
                        
                        <td>Tên phòng: </td>
                        <td><br />
                            <asp:TextBox ID="TenPTextBox" runat="server" Text='<%# Bind("TenP") %>' />
                            <br /><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="TenPTextBox" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                        </td>
                        <br/>
                    </tr>
                    <tr>
                        <td>Trạng thái:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TrangThai" DataValueField="TrangThai" SelectedValue='<%# Bind("TrangThai") %>' Width="175px">
                            </asp:DropDownList>
                            <br/>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT TrangThai FROM Phong GROUP BY TrangThai"></asp:SqlDataSource>
                        
                        </td>
                        
                    </tr>
                    <tr>
                        <td>Mã loại phòng: </td>
                        <td><br/>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenPhong" DataValueField="MaLP" SelectedValue='<%# Bind("MaLP") %>' Width="175px">
                            </asp:DropDownList>
                            <br/>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [LoaiPhong]"></asp:SqlDataSource>
                            <br/>
                        </td>
                    </tr>
                    <tr>
                        <td>Ảnh: </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbtnLoad" runat="server" OnClick="lbtnLoad_Click" Font-Size="20px" ForeColor="Blue" >Load</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Anh") %>' Width="70px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Giá: </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Gia") %>' type="number"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                 <tr>
                     <td></td>
                 </tr>
                </table>
               <br/><br/>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm phòng" Font-Size="20px" ForeColor="Blue" />
                &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" Font-Size="20px" ForeColor="Blue" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaP:
                <asp:Label ID="MaPLabel" runat="server" Text='<%# Eval("MaP") %>' />
                <br />
                TenP:
                <asp:Label ID="TenPLabel" runat="server" Text='<%# Bind("TenP") %>' />
                <br />
                TrangThai:
                <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Bind("TrangThai") %>' />
                <br />
                MaLP:
                <asp:Label ID="MaLPLabel" runat="server" Text='<%# Bind("MaLP") %>' />
                <br />
                Anh:
                <asp:Label ID="AnhLabel" runat="server" Text='<%# Bind("Anh") %>' />
                <br />
                Gia:
                <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                

                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [Phong] WHERE [MaP] = @MaP" InsertCommand="INSERT INTO [Phong] ([TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (@TenP, @TrangThai, @MaLP, @Anh, @Gia)" SelectCommand="SELECT * FROM [Phong]" UpdateCommand="UPDATE [Phong] SET [TenP] = @TenP, [TrangThai] = @TrangThai, [MaLP] = @MaLP, [Anh] = @Anh, [Gia] = @Gia WHERE [MaP] = @MaP">
            <DeleteParameters>
                <asp:Parameter Name="MaP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenP" Type="String" />
                <asp:Parameter Name="TrangThai" Type="String" />
                <asp:Parameter Name="MaLP" Type="Int32" />
                <asp:Parameter Name="Anh" Type="String" />
                <asp:Parameter Name="Gia" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenP" Type="String" />
                <asp:Parameter Name="TrangThai" Type="String" />
                <asp:Parameter Name="MaLP" Type="Int32" />
                <asp:Parameter Name="Anh" Type="String" />
                <asp:Parameter Name="Gia" Type="Int32" />
                <asp:Parameter Name="MaP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
            </div>
        <div id="right_grid">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1" ForeColor="#333333" GridLines="None" Width="60%" Style="text-align: center; margin-top: 0px;">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="MaP" HeaderText="Mã phòng">
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



                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnSua" runat="server" CommandArgument='<%# Eval("MaP") %>' CommandName="sua" OnCommand="lbtnSua_Command">Sửa</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>



                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnXoa" runat="server" CommandArgument='<%# Eval("MaP") %>' CommandName="del" OnCommand="lbtnXoa_Command1" OnClientClick="return confirm('Are you sue ?')">Xóa</asp:LinkButton>
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

        <br />
        <br />
        <br />
        <br />

    </div>
    </div>
    </div>
</asp:Content>

