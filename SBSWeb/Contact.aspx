<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SBSWeb.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="conus" runat="server">
        	<section id="content">

<br />

<div style="text-align :center ;" >
        <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>

    </div>

<div>
        <table style="width: 100%;">
                        <tr>
                <td class="style1" valign="top">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="rplynmetxt" ForeColor="Maroon" ValidationGroup="c1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reply name:</td>
                <td>
                    <asp:TextBox ID="rplynmetxt" runat="server" TabIndex="3" ValidationGroup="c1"
                        Width="222px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" valign="top">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="rplyemltxt" ForeColor="Maroon" ValidationGroup="c1">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="rplyemltxt" ForeColor="Maroon"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="c1">*</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reply Email:</td>
                <td>
                    <asp:TextBox ID="rplyemltxt" runat="server" TabIndex="4" ValidationGroup="c1"
                        Width="222px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
          

            <tr>
                <td class="style1">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="msubtxt" ForeColor="Maroon" ValidationGroup="c1">*</asp:RequiredFieldValidator>
                    &nbsp;Message Subject :
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="msubtxt" runat="server" TabIndex="1"
                        ValidationGroup="c1" Width="222px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1" valign="top">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="bdytxt" ForeColor="Maroon" ValidationGroup="c1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Body:</td>
                <td>
                    &nbsp;<asp:TextBox ID="bdytxt" runat="server" Height="87px"
                         TabIndex="2" TextMode="MultiLine"
                        ValidationGroup="c1" Width="223px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>


              <tr>
                <td class="style1" valign="top">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send" ValidationGroup="c1"
                        onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" ValidationGroup="c1" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>


                    </table>
   
   

    </div>
                </section>
        </form>

</asp:Content>
 
