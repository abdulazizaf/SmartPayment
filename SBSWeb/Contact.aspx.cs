﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace SBSWeb
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(rplyemltxt.Text);
                msg.To.Add("Email id here");
                msg.Subject = msubtxt.Text;
                msg.Body = "Name:" + rplynmetxt.Text + "<br/> Email : " + rplyemltxt.Text + "<br/>Subject :" + msubtxt.Text + "<br/>Contents :" + bdytxt.Text;
                msg.IsBodyHtml = true;
                SmtpClient smt = new SmtpClient("smtp.gmail.com", 587);
                smt.EnableSsl = true;
                smt.Credentials = new System.Net.NetworkCredential("Email id here", "your account password ");
                smt.Send(msg);
                ResultLabel.Text = "Send Message";
            }
            catch (Exception ex)
            {
                ResultLabel.Text = ex.Message;
            }



        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            msubtxt.Text = "";
            bdytxt.Text = "";
            rplyemltxt.Text = "";
            rplynmetxt.Text = "";

        }


}

}