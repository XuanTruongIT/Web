<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Phong.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150px">
                <asp:ListItem Value="1">Loại phòng</asp:ListItem>
                <asp:ListItem Value="2">Giá phòng</asp:ListItem>
                <asp:ListItem Value="3">Trạng thái</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"  Width="150px" DataSourceID="DBLoaiphong" DataTextField="TenPhong" DataValueField="MaLP" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>

            <asp:SqlDataSource ID="DBLoaiphong" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [LoaiPhong] GROUP BY MaLP, TenPhong"></asp:SqlDataSource>
            <asp:SqlDataSource ID="DBGia" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT [Gia] FROM [Phong]  GROUP BY Gia"></asp:SqlDataSource>

            <asp:SqlDataSource ID="DBTrangThai" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT TrangThai FROM Phong GROUP BY TrangThai"></asp:SqlDataSource>

            <asp:DataList ID="DataList1" runat="server" DataKeyField="MaP" DataSourceID="DBPhong" RepeatColumns="4">
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td colspan="2">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl='<%# Eval("Anh") %>' Width="300px" />
                            </td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTenP" runat="server" Text='<%# Eval("TenP") %>'></asp:Label>
                            </td>
                            <td>Giá:
                        <asp:Label ID="lblGia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                            </td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Tình trạng:
                        <asp:Label ID="lblTrangThai" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnDatPhong" runat="server"  Text="Đặt phòng" CommandArgument='<%# Eval("MaP") %>' CommandName="Chon" OnCommand="btnDatPhong_Command"/>
                            </td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                            <td style="width: 4px">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>

           

            <asp:SqlDataSource ID="DBPhong3" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [Phong] WHERE ([TrangThai] = @TrangThai)">
                <SelectParameters>
                    <asp:SessionParameter Name="TrangThai" SessionField="TrangThai" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="DBPhong2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [Phong] WHERE ([Gia] = @Gia)">
                <SelectParameters>
                    <asp:SessionParameter Name="Gia" SessionField="Gia" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="DBPhong1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT Phong.MaP, Phong.TenP, Phong.TrangThai, Phong.MaLP, Phong.Anh, Phong.Gia FROM LoaiPhong INNER JOIN Phong ON LoaiPhong.MaLP = Phong.MaLP WHERE (LoaiPhong.MaLP = @MaLP)">
                <SelectParameters>
                    <asp:SessionParameter Name="MaLP" SessionField="MaLP" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="DBPhong" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyKhachSanConnectionString %>" SelectCommand="SELECT * FROM [Phong]"></asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>

    
</asp:Content>

