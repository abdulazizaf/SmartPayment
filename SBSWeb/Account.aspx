<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="SBSWeb.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form2" runat="server">
  <div class="text-center">
  <asp:LoginStatus ID="LoginStatus1"  runat="server" />
      <br />
      <br />
      <asp:Label ID="lblbalncetxr" runat="server" Text="Wallat Balance"></asp:Label>
      <br />
      <asp:Label ID="lblbalance" runat="server" Text='<%# Eval("ID")%>' CssClass="auto-style1"></asp:Label>
      <br />
      <br />
      <asp:Image ID="Image1" runat="server"  src="images/trans.jpg"  />
    </div>

    </form>


</asp:Content>
