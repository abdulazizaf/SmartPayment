<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pay.aspx.cs" Inherits="SBSWeb.pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <%--    <asp:Image ID="Image1" runat="server" src="images/HHPages_PaymentMethod_2.jpg" />--%>
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/HHPages_PaymentMethod_2.jpg"  OnClientClick ="if (!confirm('Are you sure?','Warning','Ok','Cancel',null,this)) return false;"  />
    </form>
</asp:Content>
