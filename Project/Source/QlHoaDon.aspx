<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QlHoaDon.aspx.cs" Inherits="QlHoaDon" %>

<%@ Register Src="~/UC/HoaDon.ascx" TagPrefix="uc1" TagName="HoaDon" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc1:HoaDon runat="server" id="HoaDon" />
</asp:Content>

