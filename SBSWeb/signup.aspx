<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="SBSWeb.signup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: 3px;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <form id="mainform" runat="server">
<body class="stretched">

		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="tabs divcenter nobottommargin clearfix" id="tab-login-register" style="max-width: 500px;">

						<ul class="tab-nav tab-nav2 center clearfix">
							<li class="inline-block"><a href="#tab-login">Login</a></li>
							<li class="inline-block"><a href="#tab-register">Register</a></li>
						</ul>

						<div class="tab-container">

							<div class="tab-content clearfix" id="tab-login">
								<div class="card nobottommargin">
									<div class="card-body" style="padding: 40px;">
								

											<h3>Login to your Account</h3>

								<div class="card-body" style="padding: 40px;">			
                       <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser" PasswordLabelText="Password" FailureText="error please try again" LoginButtonText="Login" Orientation="Horizontal" RememberMeText="remember username and password" TitleText="" UserNameLabelText="UserName" Width="1327px">
                                    <LayoutTemplate>
                                      
                                                                  <asp:TextBox ID="UserName" runat="server"  placeholder="UserName" Width="30%" CssClass="form-control"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                             
                                            <caption>
                                                <br />
                                                <caption>
                                   
                                                 
                                                            <asp:TextBox ID="Password" runat="server" placeholder="PassWord" Width="30%" CssClass="form-control" TextMode="Password" ></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            <br />
                                                            &nbsp;
                                                      <asp:CheckBox ID="CheckBox1" runat="server" Text="reminder me" OnCheckedChanged="CheckBox1_CheckedChanged" ForeColor="Black" />
                                                        
                                                            <br />
                                                        
                                                        <asp:Button ID="LoginButton" runat="server" CssClass="button button-3d button-black nomargin" CommandName="Login" Text="Login" ValidationGroup="Login1" Width="20%" />
                                                  </div>
                                                </caption>
                                            </caption>
                                      
                                           
                                       
                                    </LayoutTemplate>
                                    </asp:Login>
       </div>
                                               

									
									</div>
								</div>
							</div>

							<div class="tab-content clearfix" id="tab-register">
								<div class="card nobottommargin">
									<div class="card-body" style="padding: 40px;">
										<h3>Register for an Account</h3>

						

											<div class="col_full">
												
                                                <asp:TextBox ID="txtnamer" runat="server" placeholder="Nmae" Width="100%" CssClass="form-control"></asp:TextBox>
											</div>

											<div class="col_full">
									
                                                  <asp:TextBox ID="txtEmailr" runat="server" placeholder="Email" Width="100%" CssClass="form-control" TextMode="Email"></asp:TextBox>
											</div>

											<div class="col_full">

                                                          <asp:TextBox ID="txtusernamer" runat="server" placeholder="Choose a Username" Width="100%" CssClass="form-control"></asp:TextBox>
											</div>

											<div class="col_full">
			
                                                
                                                          <asp:TextBox ID="txtphoner" runat="server" placeholder="Phone" Width="100%" CssClass="form-control"></asp:TextBox>
											</div>
                                            <div>
                                            
                                                        		
                                                </div>

											<div class="col_full">
												
                                                      <asp:TextBox ID="txtPassWordr" runat="server" placeholder="Password" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
											</div>

											<div class="col_full">
										
                                                 <asp:TextBox ID="txtPassWordrr" runat="server" placeholder="Re-enter Password" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
											</div>
                                               <div>
                                             <asp:TextBox ID="txtpaport" runat="server" placeholder="Passport Number"  Width="100%" CssClass="form-control" MaxLength="10"></asp:TextBox>
   
                                                  </div>
											<div class="col_full nobottommargin" style="text-align: center">
												<br />
                                                <br />
												<asp:Button runat="server" CssClass="button button-3d button-black nomargin" ID="bntsumbt" Text="Register Now"  OnClick="RegisterUser_Click" />
                                                   
                                              
                                                      
											    <br />
                                                <br />
                                                      
											    <br />
                                                 <asp:Label ID="lblerr" runat="server"></asp:Label>
											</div>

					
									</div>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>

		</section><!-- #content end -->

</body>

          </form>

</asp:Content>
