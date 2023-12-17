using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Collections;
using System.Web.UI.HtmlControls;

namespace WeddingInvitationWebsite
{
    public partial class AttendanceForm : UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                txtDietaryRequirement.Text = "Enter your dietary requirements here...";

                txtDietaryRequirement.Rows = 4;
                txtDietaryRequirement.Columns = 50;
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string dietaryrequirement = txtDietaryRequirement.Text;
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
            List<string> selectedItems = GetSelectedItems();
            string recipientEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderEmail = "alexandmelissa@vineyardweddinginvitation.co.uk";
            string senderPassword = "Assassinblood7!";

            string subject = "Guest Attendance Form Submission";
            string itemsList = string.Join(", ", selectedItems);
            string body = $"Guest(s) Attending: {itemsList}<br><br>Dietary Requirements: {dietaryrequirement}<br><br>Acceptance Status: {acceptanceStatus}<br>";


            try
            {
                MailMessage message = new MailMessage(senderEmail, recipientEmail, subject, body);
                message.IsBodyHtml = true;

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


            //dietaryrequirement.Text = string.Empty;

        }
        private List<string> GetSelectedItems()
        {
            List<string> selectedItems = new List<string>();

            // Get the posted form values for checkboxes
            var formValues = Request.Form.AllKeys.ToDictionary(key => key, key => Request.Form[key]);

            // Output form values to debug or console
            foreach (var key in formValues.Keys)
            {
                var value = formValues[key]?.ToString();
                System.Diagnostics.Debug.WriteLine($"Key: {key}, Value: {value}");

                // Use the exact name of the checkboxes as they appear in the form
                if (key.StartsWith("ctl00$MainContent$ctl00$chkName") && !string.IsNullOrEmpty(formValues[key]))
                {
                    // Directly get the checkbox label value
                    string labelText = formValues[key];
                    //System.Diagnostics.Debug.WriteLine($"Checkbox Label: {labelText}");
                    selectedItems.Add(labelText);
                }
            }

            //System.Diagnostics.Debug.WriteLine($"Selected Items: {string.Join(", ", selectedItems)}");
            return selectedItems;
        }





    }
}