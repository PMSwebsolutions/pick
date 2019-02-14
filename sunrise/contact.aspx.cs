using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace sunrise
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Services.WebMethod]
        public static string sendMail(string name, string email,string subject, string message)
        {
            string msg = name + "   " + email + "   " + subject + "   " + message;
            System.Diagnostics.Debug.WriteLine(msg);
            using (MailMessage m = new MailMessage("pranav1503@gmail.com", "pranav1503@gmail.com"))
            {
                m.Subject = "Enquiry recieved";
                m.Body = email + " " + message + " " + name;
                m.IsBodyHtml = false;
                SmtpClient ss = new SmtpClient();
                ss.Host = "smtp.gmail.com";
                ss.Port = 587;
                ss.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential("pranav1503@gmail.com", "test");
                ss.UseDefaultCredentials = true;
                ss.Credentials = nc;
                ss.Send(m);
            }
            return "success";
        }
    }
}
