using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Net.Mail;
using System.Net;

namespace Project1
{
    public partial class Site1 : MasterPage
    {
        private const string V = "V";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session[V].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button
                    LinkButton4.Visible = true; //Gallery
                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button
                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = true; // author management link button
                    LinkButton12.Visible = true; // publisher management link button
                    LinkButton10.Visible = false; // member management link button

                }
                else if (Session[V].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton4.Visible = true; //Gallery
                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();
                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // author management link button
                    LinkButton12.Visible = true; // publisher management link button
                    LinkButton10.Visible = false; // member management link button
                    LinkButton10.Visible = false; // member management link button
                }
                else if (Session[V].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton4.Visible = true; //Gallery
                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin";
                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // author management link button
                    LinkButton12.Visible = true; // publisher management link button
                    LinkButton10.Visible = true; // member management link button
                }
            }
            catch (Exception)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            //logout button
            try
            {
                if (Session[V].Equals(""))
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("Homepage.aspx");

                }
                else if (Session[V].Equals("user"))
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("Homepage.aspx");
                }
                else if (Session[V].Equals("admin"))
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("Homepage.aspx");
                }
            }
            catch (Exception)
            {

            }

            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button
            LinkButton4.Visible = true; //Gallery
            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = true; // author management link button
            LinkButton12.Visible = true; // publisher management link button
            LinkButton10.Visible = false; // member management link button
            
            
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
        protected void LinkButton4_click(object sender,EventArgs e)
        {
            Response.Redirect("Gallery.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            try
            {
                //Create the msg object to be sent
                MailMessage msg = new MailMessage();
                //Add your email address to the recipients
                msg.To.Add("varunbhosale2468@gmail.com");
                //Configure the address we are sending the mail from **- NOT SURE IF I NEED THIS OR NOT?**
                MailAddress address = new MailAddress("anibhonde@gmail.com");
                msg.From = address;
                //Append their name in the beginning of the subject
                msg.Subject =  " I am interested to buy home  " ;
                msg.Body = Button20.Text;


                //Configure an SmtpClient to send the mail.
                SmtpClient client = new SmtpClient("smtp.live.com", 465);
                client.EnableSsl = true; //only enable this if your provider requires it
                                         //Setup credentials to login to our sender email address ("UserName", "Password")
                NetworkCredential credentials = new NetworkCredential("anibhonde@gmail.com", "Ytie346@gh");
                client.Credentials = credentials;

                //Send the msg
                client.Send(msg);

                //Display some feedback to the user to let them know it was sent
                

                //Clear the form
                Button20.Text = "";
                
            }
            catch
            {
                //If the message failed at some point, let the user know
               
            }
        }
    }
 }