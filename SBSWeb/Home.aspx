<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SBSWeb.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="mainform" runat="server">
         </br></br>

        <asp:Label ID="Label1" runat="server" Text="Find Vendor By:"></asp:Label>
          <asp:DropDownList ID="ddlsp" runat="server"  Width="50%" >
                        <asp:ListItem Text=""></asp:ListItem>
                     <asp:ListItem Text="location"></asp:ListItem>
                     <asp:ListItem Text="Rating"></asp:ListItem>
                     <asp:ListItem Text="personalized"></asp:ListItem>
                     
                    </asp:DropDownList>
        </br></br>
        <div class="text-left">
       <asp:DataList ID="Datalistuser" runat="server" Height="100%" Width="100%" CssClass="auto-style1"  >
               <ItemTemplate>
                    
                        <table border="0" style="width: 50%">
                            <tr>
                                
                                <td class="auto-style2" style="text-align:left">
                               
                                    <asp:Image ID="imagepost" runat="server" ImageUrl='<%#Eval("img") %>' Height="15%" Width="15%" />  <br /> 
                                        
                                    <asp:Label ID="lablepost" runat="server" ></asp:Label>
                                    <b> Description: </b> <%# Eval("description") %><br />
                                    <%--<b> Rating: </b> <%# Eval("description") %><br />--%>
                              
                                    </td>
                        </table>
                    <br /> 
                    </ItemTemplate>
                </asp:DataList>
   
   
   


        </div>
   
   
   


    </form>
</asp:Content>

