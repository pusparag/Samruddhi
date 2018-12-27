<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="ChallanForm.aspx.cs" Inherits="Samruddhi.ChallanForm" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Monitor HTML CSS Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2071 Monitor
http://www.tooplate.com/view/2071-monitor
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script type="text/JavaScript" src="js/jquery-1.6.3.js"></script> 

<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

    <style type="text/css">
        .auto-style1 {
            width: 727px;
        }
        .auto-style2 {
            width: 358px;
        }
        .auto-style3 {
            width: 325px;
        }
        .auto-style4 {
            width: 325px;
            height: 22px;
        }
        .auto-style5 {
            width: 358px;
            height: 22px;
        }
        .auto-style6 {
            width: 609px;
        }
        .auto-style7 {
            width: 609px;
            height: 22px;
        }
    </style>

</head>
<body> 

<div id="tooplate_header_wrapper">
	<div id="tooplate_header" class="wrapper">
    	<br />
    	<div id="top_menu">
            <ul class="header_menu">
                <li><a href="Landing.html">Home</a></li>
                <!--<li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>-->
            </ul>
		</div>
        <div class="clear"></div>
        <a href="Landing.html" class="sitetitle">Free CSS Templates</a>
        <div id="tooplate_menu">
            <ul class="header_menu">
                <!--<li><a href="services.html">Services</a></li>
                <li><a href="gallery.html">Galllery</a></li>
                <li><a href="news.html">News</a></li>-->
            </ul>
		</div>
        <div id="tooplate_slider">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="images/slider/01.jpg" alt="" title="" />
                    <img src="images/slider/02.jpg" alt="" title="" />
                     <img src="images/slider/01.jpg" alt="" title="" />
                    <img src="images/slider/03.jpg" alt="" title="" />                
                </div>
            </div>
            <script type="text/javascript" src="js/jquery-1.6.3.min.js"></script>
            <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
          
            <%-- <script type="text/javascript">
            $(window).load(function() {
                $('#slider').nivoSlider({
                effect: 'random',
                controlNav: true, // 1,2,3... navigation
                directionNav: false,
                animSpeed: 800, // Slide transition speed
                pauseTime: 4000, // How long each slide will show
                });
            });--%>           <%-- </script>--%>	
        </div> <!-- END of slider -->
    </div> <!-- END of header -->
</div> <!-- END of tooplate_header_wrapper -->
    <form id="frm1" runat="server">
     <div id="tooplate_main">
    	<div class="content_wrapper">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Font-Underline="True" Height="22px" Text="Challan Form" Width="204px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">District</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlChallanDistrict" runat="server" Height="21px" Width="152px">
                            <asp:ListItem>MYSORE</asp:ListItem>
                            <asp:ListItem>MANDAYA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Department Name</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblDepartmentName" runat="server" Text="lblDepartmentName"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">Category</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblCategory" runat="server" Text="Government"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage7"  runat="server" >Challan number</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtChallanNumber" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage0"  runat="server" >Challan Reference Number</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtChallanRefNumber" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtChallanRefNumber" ErrorMessage="Challan reference number is mandatory." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage1"  runat="server" >Challan Remittance Date</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Calendar ID="ChallanRemittDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="Dotted" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="117px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage2"  runat="server" >Challan Remittance Name</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtChallanRemittName" runat="server" Width="156px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtChallanRemittName" ErrorMessage="Please enter remittance name " ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage3"  runat="server" >Head of Account</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlHeadOfAccount" runat="server" Height="16px" Width="166px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblerrorMessage4"  runat="server" >Challan Expiry Date</asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Calendar ID="calChallExpDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="Dotted" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="104px" Width="194px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage5"  runat="server" >Bank Name</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlBankName" runat="server" Height="16px" Width="170px">
                            <asp:ListItem>Axis Bank</asp:ListItem>
                            <asp:ListItem>ICICI</asp:ListItem>
                            <asp:ListItem>Bank of Baroda</asp:ListItem>
                            <asp:ListItem>SBI</asp:ListItem>
                            <asp:ListItem>BOI</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblerrorMessage6"  runat="server" >Bank City</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlBankCity" runat="server">
                            <asp:ListItem>MYSORE</asp:ListItem>
                            <asp:ListItem>MANDYA</asp:ListItem>
                            <asp:ListItem>SRIRANGAPATNA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1"  runat="server" >Bank Address</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtBankAddress" runat="server" Width="161px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3"  runat="server" >Challan Amount</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtChallanAmt" runat="server" Width="162px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtChallanAmt" ErrorMessage="Challan Amount is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtChallanAmt" ErrorMessage="Challan Amount is invalid" MaximumValue="9999" MinimumValue="0" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5"  runat="server" >Payment Status</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlPaymentStatus" runat="server">
                            <asp:ListItem>Completed</asp:ListItem>
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>In Process</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7"  runat="server" >Challan Document Number</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtChallanDocNum" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        	<asp:button class="login100-form-btn" OnClick="Unnamed_Click1" runat="server" Text="Save Challan"/>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="Clear" CausesValidation="False" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <%--  <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click"  />--%>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" />
                    </td>
                </tr>
            </table>
         <div class="clear"></div>
    </div> <!-- END of tooplate_footer -->
</div> <!-- END of tooplate_footer_wrapper -->
        </form>
<div id="tooplate_copyright_wrapper">
    <div id="tooplate_copyright" class="wrapper">
      Copyright © 2018 Samruddhi Goverenment Organization
   </div>
</div>

<script src="js/scroll-startstop.events.jquery.js" type="text/javascript"></script>
<script type="text/javascript">
	//$(function() {
	//	var $elem = $('#content');
		
	//	$('#nav_up').fadeIn('slow');
		
	//	$(window).bind('scrollstart', function(){
	//		$('#nav_up,#nav_down').stop().animate({'opacity':'0.2'});
	//	});
	//	$(window).bind('scrollstop', function(){
	//		$('#nav_up,#nav_down').stop().animate({'opacity':'1'});
	//	});
		
	//	$('#nav_up').click(
	//		function (e) {
	//			$('html, body').animate({scrollTop: '0px'}, 800);
	//		}
	//	);
	//});
</script>


</body>
</html>