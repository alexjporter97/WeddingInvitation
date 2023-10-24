using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace WeddingInvitationWebsite
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set TextBoxMode to MultiLine for the desired TextBox controls
                txtFullName.TextMode = TextBoxMode.MultiLine;
                txtInfo.TextMode = TextBoxMode.MultiLine;

                // Set the number of rows and columns for the multiline text boxes
                txtFullName.Rows = 4;
                txtFullName.Columns = 50;
                txtInfo.Rows = 4;
                txtInfo.Columns = 50;
            }
        }

        protected void BtnSubmitAccepted_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text;
            string info = txtInfo.Text;

            string recipientEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderPassword = "Assassinblood7!"; // Use a secure method to store and retrieve this password

            string subject = "Guest Attendance Form Submission Accepted";
            string body = $"Full Name(s): {fullName}\nAny special requirements: {info}";

            try
            {
                MailMessage message = new MailMessage(senderEmail, recipientEmail, subject, body);

                SmtpClient smtpClient = new SmtpClient("smtp.ionos.co.uk"); // Update with your SMTP server address
                smtpClient.Port = 587; // Use the appropriate port number (587 is commonly used for secure email submission)
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);
                smtpClient.Send(message);

                string successMessage = $"Thank you for submitting the guest attendance form! An email has been sent to Alex & Mel.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{successMessage}');", true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "hideFormAndShowThankYou", "hideFormAndShowThankYou();", true);
            }
            catch (Exception ex)
            {
                string errorMessage = "An error occurred while processing your request. Please try again later.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{errorMessage}');", true);
            
            }

            // Clear the form after submission
            txtFullName.Text = string.Empty;
            txtInfo.Text = string.Empty;
        }

        protected void BtnSubmitDeclined_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text;
    

            string recipientEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderPassword = "Assassinblood7!"; // Use a secure method to store and retrieve this password

            string subject = "Guest Attendance Form Submission Declined";
            string body = $"Full Name(s): {fullName}\n";

            try
            {
                MailMessage message = new MailMessage(senderEmail, recipientEmail, subject, body);

                SmtpClient smtpClient = new SmtpClient("smtp.ionos.co.uk"); // Update with your SMTP server address
                smtpClient.Port = 587; // Use the appropriate port number (587 is commonly used for secure email submission)
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);
                smtpClient.Send(message);

                string successMessage = $"Thank you for submitting the guest attendance form! An email has been sent to Alex & Mel.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{successMessage}');", true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "hideFormAndShowThankYou", "hideFormAndShowThankYou();", true);
            }
            catch (Exception ex)
            {
                string errorMessage = "An error occurred while processing your request. Please try again later.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{errorMessage}');", true);
         
            }

            // Clear the form after submission
            txtFullName.Text = string.Empty;
          
        }
    }
}