<%@ Page Title="Wedding | Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WeddingInvitationWebsite._Default" %>

<%@ Register Src="~/AttendanceForm.ascx" TagName="AttendanceForm" TagPrefix="uc" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--  <div id="envelope" class="envelope-container">
    <div class="envelope">
        <div class="flip">

        </div>
    </div>
</div>--%>
    <section class="main-banner grid-x fade fadeOut" id="home">
        <div class="cell large-6 small-12">
            <div class="grid-container flex-container align-bottom max-height">
                <div class="main-banner__text">
                    <h3>The wedding of</h3>
                    <h1>Mel & Alex</h1>
                </div>
            </div>
        </div>
        <div class="cell large-6 small-12 tint">
        </div>
    </section>

    <div id="discoBallLight"></div>
    <div id="discoBall">
        <div id="discoBallMiddle"></div>
    </div>


    <section class="info-block " id="info">
        <div class="info-block__top-section">
            <div class="grid-container__large max-height">
                <div class="grid-x max-height align-middle">
                    <div class="cell large-auto small-6 text-center">
                        <%--  <h2>When</h2>
                        <h4>06.09.2024</h4>--%>
                    </div>
                    <div class="cell large-9 info-block__image-containter small-12">
                        <div class="grid-x max-height align-middle">
                            <div class="cell small-4 image-1"></div>
                            <div class="cell small-4 image-2"></div>
                            <div class="cell small-4 image-3"></div>
                        </div>
                    </div>
                    <div class="cell large-auto small-6 text-center">
                        <%--    <h2>Where</h2>
                        <a href="https://www.google.com/maps/place/New+Lodge+Vineyard/@52.271547,-0.760172,16z/data=!4m6!3m5!1s0x4877a74c8b92e009:0x3de1d7309a0a8b36!8m2!3d52.2715468!4d-0.7601722!16s%2Fg%2F12hq8k3j0?hl=en&entry=ttu">
                            <h4>New Lodge Vineyards</h4>
                        </a>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="accent-background fade fadeOut">
        <div class="grid-container max-height">
            <div class="grid-x align-bottom max-height">
                <div class="cell small-4 text-center">
                    <h2>Ceromony</h2>
                    <h4>12pm</h4>
                </div>
                <div class="cell small-4 text-center">
                    <h2>When</h2>
                    <h4>06.09.2024</h4>
                </div>
                <div class="cell small-4 text-center">
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
    <section class="map-block  fade fadeOut" id="location">
        <div class="basic-banner flex-container flex-dir-column">
            <h1>Location</h1>
            <a href="https://www.google.com/maps/place/New+Lodge+Vineyard/@52.271547,-0.760172,16z/data=!4m6!3m5!1s0x4877a74c8b92e009:0x3de1d7309a0a8b36!8m2!3d52.2715468!4d-0.7601722!16s%2Fg%2F12hq8k3j0?hl=en&entry=ttu">
                <p>
                    New Lodge Vineyards,
                <br />
                    Northampton Rd,<br />
                    Earls Barton,
                <br />
                    Northampton,
                <br />
                    NN6 0HF
                </p>
            </a>
        </div>
        <div class="basic-banner__map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4882.898337188832!2d-0.760172!3d52.271547!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4877a74c8b92e009%3A0x3de1d7309a0a8b36!2sNew%20Lodge%20Vineyard!5e0!3m2!1sen!2suk!4v1699910352914!5m2!1sen!2suk" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <div class="basic-banner__map__bg">
                <div class=" max-height">
                </div>
            </div>
        </div>
    </section>





    <%--      <section class="spotify-block" id="spotify">
        <div class="grid-container">
            <div class="flex-container align-center">
                 <h2>Add sonsg to our spotify </h2>
            </div>
            <div class="grid-x">
              
                <div class="cell small-12 large-6 flex-container align-center">
                    <div class="image-text-block__img-container">

                    </div>
                </div>
                  <div class="cell small-12 large-6 flex-container align-center flex-dir-column">
                    <h4>Please add some spice to our wedding</h4>
                    <a href="https://open.spotify.com/playlist/6iDqSTbkLVt3TyF6Z3T1f3?si=0045c21c644f4e48&pt=7e1b589ef695381e355428ff1eed3c1d">Clck here</a>
                </div>
            </div>
        </div>
    </section>--%>

    <section class="accomadation-block" id="lodging">
        <div class="grid-container">
            <div class="flex-container align-center">
                <h2>Places to stay nearby</h2>
            </div>
            <div class="grid-x align-justify">
                <div class="cell small-12 large-5 flex-container align-center flex-dir-column">
                    <div class="content-cont fade fadeOut">
                        <h4>Here are a few of many local places to stay that are relatively close to the venue:</h4>
                        <ul>
                            <li class=" "><a href="https://www.theworldsend.org/">The Worlds End</a></li>
                            <li class=" "><a href="https://www.travelodge.co.uk/hotels/704/Wellingborough-hotel?utm_source=google&utm_medium=GHA_Organic&utm_campaign=GHA_Wellingborough">Travelodge Wellingborough</a></li>
                            <li class=" "><a href="https://www.ihg.com/holidayinn/hotels/gb/en/northampton/ormuk/hoteldetail?cm_mmc=GoogleMaps-_-HI-_-GB-_-ORMUK">Holiday Inn Northampton</a></li>
                            <li class=" "><a href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.travelodge.co.uk%2Fhotels%2F471%2Fnorthampton-round-spinney-hotel%3Futm_source%3Dgoogle%26utm_medium%3DGHA_Organic%26utm_campaign%3DGHA_Northampton%2520Round%2520Spinney%26WT.tsrc%3DGHA_Organic&psig=AOvVaw0OefeY5oBm1EZ0C64e9qUb&ust=1700404339170000&rct=j&opi=77145416">Travelodge Northampton Round Spinney</a></li>
                            <li class=" "><a href="https://www.premierinn.com/gb/en/hotels/england/northamptonshire/wellingborough/wellingborough.html?cid=GLBC_WELDOG">Premier Inn Wellingborough hotel</a></li>
                            <li class=" "><a href="https://www.booking.com/hotel/gb/the-stables-at-the-george.en-gb.html?aid=356930&label=metagha-link-LUGB-hotel-2456323_dev-desktop_los-1_bw-9_dow-Monday_defdate-0_room-0_gstadt-2_rateid-public_aud-0_gacid-6623578758_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20231127_ppt-_lp-2826_r-13586103425543951163&sid=84d14bf43c0c2a19e5e50404aa964368&all_sr_blocks=245632301_102377709_2_0_0;checkin=2023-11-27;checkout=2023-11-28;dest_id=-2611091;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=245632301_102377709_2_0_0;hpos=1;matching_block_id=245632301_102377709_2_0_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=245632301_102377709_2_0_0__7000;srepoch=1700318966;srpvid=b7696837946f00d2;type=total;ucfs=1&#hotelTmpl">The Stables @ The George</a></l>
                        <li class=" "><a href="https://www.premierinn.com/gb/en/hotels/england/northamptonshire/wellingborough/wellingborough.html?cid=GLBC_WELDOG">Premier Inn Wellingborough hotel</a></li>
                        </ul>
                    </div>
                </div>
                <div class="cell small-12 large-6 flex-container align-center  fade fadeOut">
                    <div class="accomadation-block__img-container">
                        <img src="images/pisa.png" />
                        <div class="accomadation-block__img-container__shadow"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="media-block " id="media">
        <div class="grid-container">
            <div class="flex-container align-center fade fadeOut">
                <h2>Additional Information</h2>
            </div>
            <div class="grid-x align-justify">
                <a target="_blank" href="https://www.facebook.com/profile.php?id=61554419912586" class="cell small-12 large-6 flex-container align-center flex-dir-column fade fadeOut">
                    <div class="polaroid-cont">
                        <div class="img-cont">
                            <img src="images/kooks.jpg" />
                        </div>
                        <h3>Upload the photos and videos</h3>
                        <h5>Add photos from videos from the wedding by clicking here</h5>
                    </div>
                </a>
                <a target="_blank" href="https://open.spotify.com/playlist/6iDqSTbkLVt3TyF6Z3T1f3?si=0045c21c644f4e48&pt=7e1b589ef695381e355428ff1eed3c1d" class="cell small-12 large-5 flex-container align-center flex-dir-column fade fadeOut">
                    <div class="spotify-cont">
                        <h3>Add songs to our wedding spotify playlist</h3>

                        <h5>Please click here to add some juicy music</h5>
                        <img src="images/music.png" />

                    </div>
                </a>

            </div>
        </div>
    </section>
    <section class="more-info-block fade fadeOut">
        <div class="grid-container">
            <p>
                We are thrilled to have you join us for our wedding. Your presence is a gift in itself. If you're considering a gift, a monetary contribution toward our future would be truly appreciated.

Looking forward to celebrating with you!
            </p>
        </div>
    </section>


    <uc:AttendanceForm runat="server" />
    <script>
        $(document).ready(function () {

            var scroll_pos = 0;
            $(document).scroll(function () {
                scroll_pos = $(this).scrollTop();
                if (scroll_pos > 20) {
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
                threshold: 0.2
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

            console.log('Starting disco ball generation');

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
                    var x = radius * Math.cos(i) * Math.sin(t);
                    var y = radius * Math.sin(i) * Math.sin(t);

                    squareTile.style.width = squareSize + "px";
                    squareTile.style.height = squareSize + "px";
                    squareTile.style.transformOrigin = "0 0 0";
                    squareTile.style.webkitTransformOrigin = "0 0 0"; // Added line for webkit
                    squareTile.style.transform = "rotate(" + i + "rad) rotateY(" + t + "rad)";
                    squareTile.style.backgroundColor = (t > 1.3 && t < 1.9) || (t < -1.3 && t > -1.9) ? randomColor("bright") : randomColor("any");
                    square.appendChild(squareTile);
                    square.className = "square";
                    squareTile.style.animation = "reflect 2s linear infinite";
                    squareTile.style.animationDelay = String(randomNumber(0, 20) / 10) + "s";
                    squareTile.style.backfaceVisibility = "hidden";
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
    <%--   <script>
        let flip = document.querySelector('.flip');
        let letter = document.querySelector('.letter');
        let envelopeContainer = document.querySelector('.envelope-container');

        // Function to open the envelope
        function openEnvelope() {
            flip.classList.add('open');
            letter.classList.add('letterOpen');
        }

        // Add event listener to detect animation end
        flip.addEventListener('animationend', function () {
            // After animation ends, hide the envelope container
            envelopeContainer.style.display = 'none';
        });

        // Add event listener to the envelope element
        document.getElementById('envelope').addEventListener('click', function () {
            openEnvelope();
        });
    </script>--%>
</asp:Content>






