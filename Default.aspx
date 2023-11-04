<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WeddingInvitationWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="main-banner grid-x fade fadeOut" id="home">
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
    <%-- <div class="rsvp">rsvp</div>--%>
    <div id="discoBallLight"></div>
    <div id="discoBall">
        <div id="discoBallMiddle"></div>
    </div>

    <section class="info-block fade" id="info">
        <div class="info-block__top-section">
            <div class="grid-container__large max-height">
                <div class="grid-x max-height align-middle">
                    <div class="cell large-auto small-6 text-center fade fadeOut">
                        <h2>When</h2>
                        <h4>06.09.2024</h4>

                    </div>

                    <div class="cell large-9 info-block__image-containter small-12 fade fadeOut">
                        <div class="grid-x max-height align-middle">
                            <div class="cell small-4 image-1"></div>
                            <div class="cell small-4 image-2"></div>
                            <div class="cell small-4 image-3"></div>
                        </div>
                    </div>


                    <div class="cell large-auto small-6 text-center fade  fadeOut">
                        <h2>Where</h2>
                        <a href="https://www.google.com/maps/place/New+Lodge+Vineyard/@52.271547,-0.760172,16z/data=!4m6!3m5!1s0x4877a74c8b92e009:0x3de1d7309a0a8b36!8m2!3d52.2715468!4d-0.7601722!16s%2Fg%2F12hq8k3j0?hl=en&entry=ttu">
                            <h4>New Lodge Vineyards</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="accent-background fade fadeOut">
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

    <section class="countdown-block fade fadeOut" id="countdown">
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
        <div class="flex-container align-center-middle flex-dir-column fade fadeOut">
            <h2>Guest attendance form</h2>
            <%-- <p id="pso">Please select one</p>--%>
        </div>
        <%--    <div class="btn-container fade fadeOut">
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
        </div>--%>
        <div class="attendance-form">

            <div class="flex-container align-center-middle flex-dir-column">
            </div>
            <div class="grid-container__small contact__wrapper">
                <div class="grid-x align-center-middle grid-margin-x">

                    <h3>RSVP</h3>

                    <div class="cell small-12 flex-container align-center-middle flex-dir-row">
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="Full Name(s) is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <label class="full-name-label" for="txtFullName">Full Name(s):</label>
                        <asp:TextBox ID="txtFullName" runat="server" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>

                    </div>
                    <div class="cell small-12">
                        <%--  <div class="cell small-12 flex-container align-center-middle flex-dir-column">
                            <label for="txtInfo">Any special requirements:</label>
                            <asp:TextBox ID="txtInfo" runat="server"></asp:TextBox>
                        </div>--%>
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

        <%-- <div class="attendence-declined attendance-form">
            <div class="flex-container align-center-middle flex-dir-column">
                <p>
                    We are sorry to hear you won't be attending.
                    <br />
                    Please fill out the form below.
                </p>
            </div>

            <div class="grid-container__small contact__wrapper">
                <div class="grid-x align-center-middle grid-margin-x">
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
        </div>--%>
    </section>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {


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
            const observerOptions = {
                root: null,
                rootMargin: "0px",
                threshold: 0.5
            };

            function observerCallback(entries, observer) {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        // fade in observed elements that are in view
                        entry.target.classList.replace('fadeOut', 'fadeIn');
                    } else {
                        // fade out observed elements that are not in view
                        entry.target.classList.replace('fadeIn', 'fadeOut');
                    }
                });
            }

            const observer = new IntersectionObserver(observerCallback, observerOptions);

            const fadeElms = document.querySelectorAll('.fade');
            fadeElms.forEach(el => observer.observe(el));
            var t = 1;
            var radius = 80;
            var squareSize = 10.5;
            var prec = 19.55;
            var fuzzy = 0.001;
            var inc = (Math.PI - fuzzy) / prec;
            var discoBall = document.getElementById("discoBall");

            for (var t = fuzzy; t < Math.PI; t += inc) {
                var z = radius * Math.cos(t);
                var currentRadius = Math.abs((radius * Math.cos(0) * Math.sin(t)) - (radius * Math.cos(Math.PI) * Math.sin(t))) / 2.5;
                var circumference = Math.abs(2 * Math.PI * currentRadius);
                var squaresThatFit = Math.floor(circumference / squareSize);
                var angleInc = (Math.PI * 2 - fuzzy) / squaresThatFit;
                for (var i = angleInc / 2 + fuzzy; i < (Math.PI * 2); i += angleInc) {
                    var square = document.createElement("div");
                    var squareTile = document.createElement("div");
                    squareTile.style.width = squareSize + "px";
                    squareTile.style.height = squareSize + "px";
                    squareTile.style.transformOrigin = "0 0 0";
                    squareTile.style.webkitTransformOrigin = "0 0 0";
                    squareTile.style.webkitTransform = "rotate(" + i + "rad) rotateY(" + t + "rad)";
                    squareTile.style.transform = "rotate(" + i + "rad) rotateY(" + t + "rad)";
                    if ((t > 1.3 && t < 1.9) || (t < -1.3 && t > -1.9)) {
                        squareTile.style.backgroundColor = randomColor("bright");
                    } else {
                        squareTile.style.backgroundColor = randomColor("any");
                    }
                    square.appendChild(squareTile);
                    square.className = "square";
                    squareTile.style.webkitAnimation = "reflect 2s linear infinite";
                    squareTile.style.webkitAnimationDelay = String(randomNumber(0, 20) / 10) + "s";
                    squareTile.style.animation = "reflect 2s linear infinite";
                    squareTile.style.animationDelay = String(randomNumber(0, 20) / 10) + "s";
                    squareTile.style.backfaceVisibility = "hidden";
                    var x = radius * Math.cos(i) * Math.sin(t);
                    var y = radius * Math.sin(i) * Math.sin(t);
                    square.style.webkitTransform = "translateX(" + Math.ceil(x) + "px) translateY(" + y + "px) translateZ(" + z + "px)";
                    square.style.transform = "translateX(" + x + "px) translateY(" + y + "px) translateZ(" + z + "px)";
                    discoBall.appendChild(square);
                }
            }

            function randomColor(type) {
                var c;
                if (type == "bright") {
                    c = randomNumber(130, 255);
                } else {
                    c = randomNumber(110, 190);
                }
                return "rgb(" + c + "," + c + "," + c + ")";
            }

            function randomNumber(min, max) {
                return Math.floor(Math.random() * (max - min + 1)) + min;
            }
        });
    </script>
</asp:Content>





