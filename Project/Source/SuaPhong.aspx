<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuaPhong.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaP" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdated="FormView1_ItemUpdated" OnItemCommand="Cancel_Click" Width="271px">
        <EditItemTemplate>
            <br />
            <table>
                <tr>
                    <td>Mã phòng: </td>
                    <td>
                        <asp:Label ID="MaPLabel1" runat="server" Text='<%# Eval("MaP") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tên phòng: </td>
                    <td>
                        <asp:TextBox ID="TenPTextBox" runat="server" Text='<%# Bind("TenP") %>' />
                        <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="TenPTextBox" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Trạng thái: </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TrangThai" DataValueField="TrangThai" SelectedValue='<%# Bind("TrangThai") %>' Width="175px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT TrangThai FROM Phong GROUP BY TrangThai"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px">Mã loại phòng</td>
                    <td style="height: 20px">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenPhong" DataValueField="MaLP" SelectedValue='<%# Bind("MaLP") %>' Width="175px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [LoaiPhong]"></asp:SqlDataSource>
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
                        <asp:LinkButton ID="lbtnLoad" runat="server" OnClick="lbtnLoad_Click">Load</asp:LinkButton>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Anh") %>' Width="70px" />
                    </td>
                </tr>
                <tr>
                    <td>Giá: </td>
                    <td>
                        <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                        <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống" Font-Size="10pt" ForeColor="Red" ControlToValidate="GiaTextBox" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
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
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' type ="number"/>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" DeleteCommand="DELETE FROM [Phong] WHERE [MaP] = @MaP" InsertCommand="INSERT INTO [Phong] ([TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (@TenP, @TrangThai, @MaLP, @Anh, @Gia)" SelectCommand="SELECT * FROM [Phong] WHERE ([MaP] = @MaP)" UpdateCommand="UPDATE [Phong] SET [TenP] = @TenP, [TrangThai] = @TrangThai, [MaLP] = @MaLP, [Anh] = @Anh, [Gia] = @Gia WHERE [MaP] = @MaP">
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
        <SelectParameters>
            <asp:SessionParameter Name="MaP" SessionField="RoomID" Type="Int32" />
        </SelectParameters>
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
    
</asp:Content>

