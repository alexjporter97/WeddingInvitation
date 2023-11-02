<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WeddingInvitationWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="main-banner grid-x">
        <div class="cell large-6 small-12">
            <div class="grid-container flex-container align-bottom max-height">
                <div class="main-banner__text">
                    <h3>The wedding of</h3>
                    <h1>Mel &
                        <br />
                        Alex</h1>
                </div>
            </div>
        </div>
        <div class="cell large-6 small-12 tint">
        </div>
    </section>
    <div class="rsvp">rsvp</div>

    <section class="info-block">
        <div class="info-block__top-section">
            <div class="grid-container__large max-height">
                <div class="grid-x max-height align-middle">
                    <div class="cell large-2 small-6 text-center">
                        <h2>When</h2>
                        <h4>06.09.2024</h4>

                    </div>
                    <div class="cell large-8 small-12"></div>
                    <div class="cell large-2 small-6 text-center">
                        <h2>Where</h2>
                        <a href="https://www.google.com/maps?ll=52.271547,-0.760172&z=16&t=m&hl=en&gl=GB&mapclient=embed&cid=4459081709816286006">
                            <h4>New Lodge Vineyards
                                <br />
                                Earls Barton<br />
                                NN6 OHF</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="accent-background">
        <div class="grid-container max-height">
            <div class="grid-x align-bottom max-height">
                <div class="cell large-6 small-6 text-center">
                    <h2>Ceromony</h2>
                    <h4>12pm</h4>
                </div>
                <div class="cell large-6 small-6 text-center">
                    <h2>Reception</h2>
                    <h4>6pm</h4>
                </div>
            </div>
        </div>
    </div>

    <section class="countdown-block">
        <div class="grid-container max-height">
            <div class="grid-x align-center-middle max-height">
                <div class="cell small-12 flex-container align-middle flex-dir-column">
                    <h2>Wedding countdown</h2>
                    <h1 id="timer"></h1>
                </div>
            </div>
        </div>
    </section>

    <section class="contact" id="guestform">
        <div class="flex-container align-center-middle flex-dir-column">
            <h2>Guest attendance form</h2>
            <p id="pso">Please select one</p>
        </div>
        <div class="btn-container">
            <div class="grid-container">
                <div class="grid-x align-middle grid-margin-x">
                    <div class="cell small-6">
                        <div class="flex-container align-center-middle">
                            <button id="yesbutton" type="button">Yes! Ill be there</button>
                            <button id="yesbutton2" type="button">Actaully Yes! Ill be there</button>
                        </div>
                    </div>
                    <div class="cell small-6">
                        <div class="flex-container align-center-middle">
                            <button id="nobutton" type="button">No Sorry :(</button>
                            <button id="nobutton2" type="button">Actually No Sorry :(</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="attendence-accepted attendance-form">
            <div class="flex-container align-center-middle flex-dir-column">
                <p>
                    Yay!
                    <br />
                    Please fill out the form below.
                </p>
            </div>
            <div class="grid-container__small contact__wrapper">
                <div class="grid-x align-middle grid-margin-x">
                    <div class="cell small-12 flex-container align-center-middle flex-dir-column">
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="Full Name(s) is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <label for="txtFullName">Full Name(s):</label>
                        <asp:TextBox ID="txtFullName" runat="server" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>

                    </div>
                    <div class="cell small-12">
                        <div class="cell small-12 flex-container align-center-middle flex-dir-column">
                            <label for="txtInfo">Any special requirements:</label>
                            <asp:TextBox ID="txtInfo" runat="server"></asp:TextBox>

                        </div>
                        <div class="cell small-12 flex-container align-center-middle">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Meat" />
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Vegan" />
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Vegetarian" />
                        </div>
                    </div>
                    <div class="cell small-12">
                        <div class="flex-container align-center-middle">
                            <asp:Button ID="btnSubmit" CssClass="sbt-btn" runat="server" Text="Submit" OnClick="BtnSubmitAccepted_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="attendence-declined attendance-form">
            <div class="flex-container align-center-middle flex-dir-column">
                <p>
                    We are sorry to hear you won't be attending.
                    <br />
                    Please fill out the form below.
                </p>
            </div>

            <div class="grid-container__small contact__wrapper">
                <div class="grid-x align-middle grid-margin-x">
                    <div class="cell small-12 flex-container align-center-middle flex-dir-column">

                        <label for="txtFullName">Full Name(s):</label>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>
                    </div>

                    <div class="cell small-12">
                        <div class="flex-container align-center-middle">
                            <asp:Button ID="Button1" CssClass="sbt-btn" runat="server" Text="Submit" OnClick="BtnSubmitDeclined_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Initially hide both attendance forms
            $('.attendance-form').hide();
            $('#yesbutton2').hide();
            $('#nobutton2').hide();

            // Handle the click event for the "No" button
            $('#nobutton, #nobutton2').click(function (event) {
                event.preventDefault();
                $('.attendence-declined').show();
                $('#yesbutton2').show();
                $('#nobutton2').hide();
                $('#nobutton').hide();
                $('.attendence-accepted').hide();
                $('#pso').hide();
            });

            // Handle the click event for the "Yes" button
            $('#yesbutton, #yesbutton2').click(function (event) {
                event.preventDefault();
                $('.attendence-accepted').show();
                $('#nobutton2').show();
                $('#nobutton').hide();
                $('#yesbutton').hide();
                $('#yesbutton2').hide();
                $('.attendence-declined').hide();
                $('#pso').hide();
            });

            // Scroll event for changing navbar style
            var scroll_pos = 0;
            $(document).scroll(function () {
                scroll_pos = $(this).scrollTop();
                if (scroll_pos > 50) {
                    $('.navbar').addClass('small');
                } else {
                    $('.navbar').removeClass('small');
                }
            });

            // Countdown timer
            var countDownDate = new Date("Sep 6, 2024 12:00:00").getTime();
            var x = setInterval(function () {
                var now = new Date().getTime();
                var distance = countDownDate - now;
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                document.getElementById("timer").innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("demo").innerHTML = "EXPIRED";
                }
            }, 1000);

            // Function to hide form and show thank you message
            function hideFormAndShowThankYou() {
                document.getElementById('guestform').style.display = 'none';
                document.getElementById('thankYouMessage').style.display = 'block';
            }
        });
    </script>
</asp:Content>





