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
    public partial class AttendanceForm : UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                txtFullName.TextMode = TextBoxMode.MultiLine;

                txtFullName.Rows = 4;
                txtFullName.Columns = 50;
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text;
            string acceptanceStatus = string.Empty;

            if (RadioButton1.Checked)
            {
                acceptanceStatus = "Happily accepts";
            }
            else if (RadioButton2.Checked)
            {
                acceptanceStatus = "Regretfully declines";
            }
            //string info = txtInfo.Text;

            string recipientEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderPassword = "Assassinblood7!";

            string subject = "Guest Attendance Form Submission";
            string body = $"Full Name(s): {fullName}\nAcceptance Status: {acceptanceStatus}";

            try
            {
                MailMessage message = new MailMessage(senderEmail, recipientEmail, subject, body);

                SmtpClient smtpClient = new SmtpClient("smtp.ionos.co.uk");
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);
                smtpClient.Send(message);

                string successMessage = $"Thank you for submitting the guest attendance form! An email has been sent to Alex & Mel.";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{successMessage}');", true);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "hideFormAndShowThankYou", "hideFormAndShowThankYou();", true);
            }
            catch (Exception ex)
            {
                string errorMessage = "An error occurred while processing your request. Please try again later.";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{errorMessage}');", true);


            }


            txtFullName.Text = string.Empty;

        }


    }
}