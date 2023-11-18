<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AttendanceForm.ascx.cs" Inherits="WeddingInvitationWebsite.AttendanceForm" %>


     <section class="contact fade fadeOut" id="attendance">
        <div class="flex-container align-center-middle flex-dir-column">
            <h2>Guest attendance form</h2>
            <div class="attendance-form">

                <div class="flex-container align-center-middle flex-dir-column">
                </div>
                <div class="grid-container__small contact__wrapper">
                    <div class="grid-x align-center-middle grid-margin-x">

                        <h3>RSVP</h3>

                        <div class="cell small-12 flex-container align-center-middle flex-dir-row">
                            <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="Full Name(s) is required." ForeColor="Red"></asp:RequiredFieldValidator>
                            <label class="full-name-label" for="txtFullName">Full Name(s):</label>
                           <asp:TextBox ID="txtFullName" runat="server" TextMode="MultiLine" Rows="4" Columns="50" style="resize: none;"></asp:TextBox>

                        </div>
                        <div class="cell small-12">
                            <div class="cell small-12 flex-container align-center-middle flex-dir-column">
                                <div class="checkbox-container">

                                    <div class="radio-wrapper">
                                        <input type="radio" id="RadioButton1" name="acceptance" runat="server" />
                                        <label for="RadioButton1">Happily accepts</label>
                                    </div>

                                    <div class="radio-wrapper">
                                        <input type="radio" id="RadioButton2" name="acceptance" runat="server" />
                                        <label for="RadioButton2">Regretfully declines</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cell small-12">
                            <h5>please respond by September 6th 2024</h5>
                            <div class="flex-container align-center-middle">
                                <asp:Button ID="btnSubmit" CssClass="sbt-btn" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>







