<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AttendanceForm.ascx.cs" Inherits="WeddingInvitationWebsite.AttendanceForm" %>


<section class="contact" id="guestform">
    <div class="flex-container align-center-middle flex-dir-column">
        <h2>Guest attendance form</h2>
        <div class="attendance-form">

            <div class="flex-container align-center-middle flex-dir-column">
            </div>
            <div class="grid-container__small contact__wrapper">
                <div class="grid-x align-center-middle grid-margin-x">

                    <h3>RSVP</h3>



                    <div class="cell small-12">
                        <div id="list1" class="dropdown-check-list max-width" runat="server" tabindex="100">
                            <label class="anchor max-width">Select Full Name(s)</label>
                            <ul id="ulItems" class="items" runat="server">
                                <li>
                                    <p>Guest List</p>
                                </li>
                                <li id="liName1">
                                    <input type="checkbox" id="chkName1" name="chkName1" runat="server" value="Alex Worley" />Alex Worley
                                </li>
                                <li id="liName2">
                                    <input type="checkbox" id="chkName2" name="chkName2" runat="server" value="Katie Holeman" />Katie Holeman
                                </li>
                                <li id="liName3">
                                    <input type="checkbox" id="chkName3" name="chkName3" runat="server" value="David Millet-Spicer 1+" />David Millet-Spicer 1+
                                </li>
                                <li id="liName4">
                                    <input type="checkbox" id="chkName4" name="chkName4" runat="server" value="Amanada Ratcliffe" />Amanada Ratcliffe
                                </li>
                                <li id="liName5">
                                    <input type="checkbox" id="chkName5" name="chkName5" runat="server" value="Adam Catlin +1" />Adam Catlin +1
                                </li>
                                <li id="liName6">
                                    <input type="checkbox" id="chkName6" name="chkName6" runat="server" value="Daniel Byth +1" />Daniel Byth +1
                                </li>
                                <li id="liName7">
                                    <input type="checkbox" id="chkName7" name="chkName7" runat="server" value="Cameran Lockhart" />Cameran Lockhart
                                </li>
                                <li id="liName8">
                                    <input type="checkbox" id="chkName8" name="chkName8" runat="server" value="Joanna Plater" />Joanna Plater
                                </li>
                                <li id="liName9">
                                    <input type="checkbox" id="chkName9" name="chkName9" runat="server" value="Chantelle Mcdaid" />Chantelle Mcdaid
                                </li>
                                <li id="liName10">
                                    <input type="checkbox" id="chkName10" name="chkName10" runat="server" value="Tiffany Walance" />Tiffany Walance
                                </li>
                                <li id="liName11">
                                    <input type="checkbox" id="chkName11" name="chkName11" runat="server" value="Amy Doran" />Amy Doran
                                </li>
                                <li id="liName12">
                                    <input type="checkbox" id="chkName12" name="chkName12" runat="server" value="Emily Crichton" />Emily Crichton
                                </li>
                                <li id="liName13">
                                    <input type="checkbox" id="chkName13" name="chkName13" runat="server" value="Jade Ward" />Jade Ward
                                </li>
                                <li id="liName14">
                                    <input type="checkbox" id="chkName14" name="chkName14" runat="server" value="Daniel Porter" />Daniel Porter
                                </li>
                                <li id="liName15">
                                    <input type="checkbox" id="chkName15" name="chkName15" runat="server" value="Sue Porter" />Sue Porter
                                </li>
                                <li id="liName16">
                                    <input type="checkbox" id="chkName16" name="chkName16" runat="server" value="Liam Porter" />Liam Porter
                                </li>
                                <li id="liName17">
                                    <input type="checkbox" id="chkName17" name="chkName17" runat="server" value="Paul Brett" />Paul Brett
                                </li>
                                <li id="liName18">
                                    <input type="checkbox" id="chkName18" name="chkName18" runat="server" value="Em Brett" />Em Brett
                                </li>
                                <li id="liName19">
                                    <input type="checkbox" id="chkName19" name="chkName19" runat="server" value="Sheneen Knibb" />Sheneen Knibb
                                </li>
                                <li id="liName20">
                                    <input type="checkbox" id="chkName20" name="chkName20" runat="server" value="Thomas Brett" />Thomas Brett
                                </li>
                                <li id="liName21">
                                    <input type="checkbox" id="chkName21" name="chkName21" runat="server" value="Leanne Knibb" />Leanne Knibb
                                </li>
                                <li id="liName22">
                                    <input type="checkbox" id="chkName22" name="chkName22" runat="server" value="Mathew Robson" />Mathew Robson
                                </li>
                                <li id="liName23">
                                    <input type="checkbox" id="chkName23" name="chkName23" runat="server" value="Ashley Knibb" />Ashley Knibb
                                </li>
                                <li id="liName24">
                                    <input type="checkbox" id="chkName24" name="chkName24" runat="server" value="Jenny Dear" />Jenny Dear
                                </li>
                                <li id="liName25">
                                    <input type="checkbox" id="chkName25" name="chkName25" runat="server" value="Harley Hickling" />Harley Hickling
                                </li>
                                <li id="liName26">
                                    <input type="checkbox" id="chkName26" name="chkName26" runat="server" value="Summer Hickling" />Summer Hickling
                                </li>
                                <li id="liName27">
                                    <input type="checkbox" id="chkName27" name="chkName27" runat="server" value="Savanah Hickling" />Savanah Hickling
                                </li>
                                <li id="liName28">
                                    <input type="checkbox" id="chkName28" name="chkName28" runat="server" value="Robert Brett" />Robert Brett
                                </li>
                                <li id="liName29">
                                    <input type="checkbox" id="chkName29" name="chkName29" runat="server" value="Richard Brett" />Richard Brett
                                </li>
                                <li id="liName30">
                                    <input type="checkbox" id="chkName30" name="chkName30" runat="server" value="Glen Brett" />Glen Brett
                                </li>
                                <li id="liName31">
                                    <input type="checkbox" id="chkName31" name="chkName31" runat="server" value="Nicky Brett" />Nicky Brett
                                </li>
                                <li id="liName32">
                                    <input type="checkbox" id="chkName32" name="chkName32" runat="server" value="Ocean Brett" />Ocean Brett
                                </li>
                                <li id="liName33">
                                    <input type="checkbox" id="chkName33" name="chkName33" runat="server" value="Peggy Brett" />Peggy Brett
                                </li>
                                <li id="liName34">
                                    <input type="checkbox" id="chkName34" name="chkName34" runat="server" value="Kirstie Stewart" />Kirstie Stewart
                                </li>
                                <li id="liName35">
                                    <input type="checkbox" id="chkName35" name="chkName35" runat="server" value="James Stewart" />James Stewart
                                </li>
                                <li id="liName36">
                                    <input type="checkbox" id="chkName36" name="chkName36" runat="server" value="Paul Stewart" />Paul Stewart
                                </li>
                                <li id="liName37">
                                    <input type="checkbox" id="chkName37" name="chkName37" runat="server" value="Rosie Stewart" />Rosie Stewart
                                </li>
                                <li id="liName38">
                                    <input type="checkbox" id="chkName38" name="chkName38" runat="server" value="Steve" />Steve
                                </li>
                                <li id="liName39">
                                    <input type="checkbox" id="chkName39" name="chkName39" runat="server" value="Luke +1" />Luke +1
                                </li>
                                <li id="liName40">
                                    <input type="checkbox" id="chkName40" name="chkName40" runat="server" value="Bianca +1" />Bianca +1
                                </li>
                                <li id="liName41">
                                    <input type="checkbox" id="chkName41" name="chkName41" runat="server" value="Ramona Willet" />Ramona Willet
                                </li>
                                <li id="liName42">
                                    <input type="checkbox" id="chkName42" name="chkName42" runat="server" value="Jez Willet" />Jez Willet
                                </li>
                                <li id="liName43">
                                    <input type="checkbox" id="chkName43" name="chkName43" runat="server" value="Lindsey Harrison" />Lindsey Harrison
                                </li>
                                <li id="liName44">
                                    <input type="checkbox" id="chkName44" name="chkName44" runat="server" value="Gloria Davis" />Gloria Davis
                                </li>
                                <li id="liName45">
                                    <input type="checkbox" id="chkName45" name="chkName45" runat="server" value="Steve Davis" />Steve Davis
                                </li>
                                <li id="liName46">
                                    <input type="checkbox" id="chkName46" name="chkName46" runat="server" value="Nadia Webb" />Nadia Webb
                                </li>
                                <li id="liName47">
                                    <input type="checkbox" id="chkName47" name="chkName47" runat="server" value="Carne Webb" />Carne Webb
                                </li>
                                <li id="liName48">
                                    <input type="checkbox" id="chkName48" name="chkName48" runat="server" value="Lauren Walker +1" />Lauren Walker +1
                                </li>
                                <li id="liName49">
                                    <input type="checkbox" id="chkName49" name="chkName49" runat="server" value="Rose Kerdouda" />Rose Kerdouda
                                </li>
                                <li id="liName50">
                                    <input type="checkbox" id="chkName50" name="chkName50" runat="server" value="Touria Kerdouda" />Touria Kerdouda
                                </li>
                                <li id="liName51">
                                    <input type="checkbox" id="chkName51" name="chkName51" runat="server" value="Oliver Brett" />Oliver Brett
                                </li>
                                <li id="liName52">
                                    <input type="checkbox" id="chkName52" name="chkName52" runat="server" value="Tilly" />Tilly
                                </li>
                                <li id="liName53">
                                    <input type="checkbox" id="chkName53" name="chkName53" runat="server" value="Sebastion Stewart" />Sebastion Stewart
                                </li>
                                <li id="liName54">
                                    <input type="checkbox" id="chkName54" name="chkName54" runat="server" value="Sofia Mcdaid" />Sofia Mcdaid
                                </li>
                                <li id="liName55">
                                    <input type="checkbox" id="chkName55" name="chkName55" runat="server" value="Lily Mcdaid" />Lily Mcdaid
                                </li>
                                <li id="liName56">
                                    <input type="checkbox" id="chkName56" name="chkName56" runat="server" value="Carter Webb" />Carter Webb
                                </li>
                                <li id="liName57">
                                    <input type="checkbox" id="chkName57" name="chkName57" runat="server" value="Riley Webb" />Riley Webb
                                </li>
                                <li id="liName58">
                                    <input type="checkbox" id="chkName58" name="chkName58" runat="server" value="Amira Kerdouda" />Amira Kerdouda
                                </li>
                                <li id="liName59">
                                    <input type="checkbox" id="chkName59" name="chkName59" runat="server" value="James Mcdaid" />James Mcdaid
                                </li>
                                <li id="liName60">
                                    <input type="checkbox" id="chkName60" name="chkName60" runat="server" value="Tyran" />Tyran
                                </li>
                                <li id="liName61">
                                    <input type="checkbox" id="chkName61" name="chkName61" runat="server" value="Jordan Milnes" />Jordan Milnes
                                </li>
                                <li id="liName62">
                                    <input type="checkbox" id="chkName62" name="chkName62" runat="server" value="Jordan Asher" />Jordan Asher
                                </li>
                                <li id="liName63">
                                    <input type="checkbox" id="chkName63" name="chkName63" runat="server" value="Tom" />Tom
                                </li>
                                <li id="liName64">
                                    <input type="checkbox" id="chkName64" name="chkName64" runat="server" value="Chris" />Chris
                                </li>

                            </ul>


                        </div>
                        <div class="cell small-12 flex-container align-center-middle flex-dir-row diet-req">
                            <%--        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="Full Name(s) is required." ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <asp:TextBox ID="txtDietaryRequirement" runat="server" TextMode="MultiLine" Rows="4" Columns="50" Style="resize: none;" onfocus="if(this.value=='Enter your dietary requirements here...')this.value='';" onblur="if(this.value=='')this.value='Enter your dietary requirements here...';"></asp:TextBox>


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
    </div>
</section>
<script>
    var checkList = document.getElementById('<%= list1.ClientID %>');

    if (checkList) {
        var anchor = checkList.getElementsByClassName('anchor')[0];
        var checkboxes = checkList.querySelectorAll('input[type="checkbox"]');

        anchor.onclick = function (evt) {
            if (checkList.classList.contains('visible')) {
                checkList.classList.remove('visible');
            } else {
                checkList.classList.add('visible');
            }
            evt.stopPropagation(); // Prevent the click event from propagating to the document body
        };

        checkboxes.forEach(function (checkbox) {
            checkbox.addEventListener('change', updateLabel);
        });

        function updateLabel() {
            var selectedItems = [];
            checkboxes.forEach(function (checkbox) {
                if (checkbox.checked) {
                    selectedItems.push(checkbox.parentElement.textContent.trim());
                }
            });

            if (selectedItems.length > 0) {
                anchor.textContent = selectedItems.join(', ');
            } else {
                anchor.textContent = 'Select Full Name(s)';
            }
        }

        // Add event listener to close the list when clicking away
        document.body.addEventListener('click', function (evt) {
            if (!checkList.contains(evt.target)) {
                checkList.classList.remove('visible');
            }
        });
    } else {
        console.error('Element with ID "<%= list1.ClientID %>" not found.');
    }

</script>






