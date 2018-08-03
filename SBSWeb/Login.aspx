<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SBSWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 98%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="login" runat="server">
      <table class="auto-style1">
                       <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser" PasswordLabelText="Password" FailureText="error please try again" LoginButtonText="Login" Orientation="Horizontal" RememberMeText="remember username and password" TitleText="" UserNameLabelText="UserName" Width="1327px">
                                    <LayoutTemplate>
                                      
                                            <tr>
                                                <td>
                                                    <table  style="width:50%" align="center" >
                                                        <tr>
                                                          
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td aria-orientation="vertical" class="w3-center">
                                                                &nbsp;&nbsp;&nbsp;
                                                                  <asp:TextBox ID="UserName" runat="server" CssClass="auto-style3"  Width="50%" ></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                                &nbsp;&nbsp;&nbsp;
                                                            </td>
                                            </tr>
                                            <caption>
                                                <br />
                                                <caption>
                                   
                                                    <tr>
                                                        <td aria-orientation="vertical" class="w3-center">&nbsp;
                                                            <i class="fa fa-key">&nbsp; </i> 
                                                            <asp:TextBox ID="Password" runat="server" Width="50%" TextMode="Password" ></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            <br />
                                                            &nbsp;&nbsp;&nbsp;
                                                      <asp:CheckBox ID="CheckBox1" runat="server" Text="reminder me" OnCheckedChanged="CheckBox1_CheckedChanged" ForeColor="Black" />
                                                        </td>
                                             
                                                                                                            </tr>
                                                    <tr>
                                                        <td aria-orientation="vertical" style="color:Red;">
                                                            &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Login" ValidationGroup="Login1" Width="50%" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                            &nbsp;</td>
                                                    </tr>
                                                </caption>
                                            </caption>
                                                        <caption>
                                                        </caption>
                                                    </table>
                                                </td>
                                            </tr>
                                       
                                    </LayoutTemplate>
                                    </asp:Login>
           </table>
       <div style="text-align: center">
           <asp:Label ID="lblerr" runat="server"></asp:Label>  
         </div>
    </form>
</asp:Content>
