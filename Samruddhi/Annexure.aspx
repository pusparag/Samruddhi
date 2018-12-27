<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Annexure.aspx.cs" Inherits="Samruddhi.Annexure" %>


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
            width: 947px;
            height: 506px;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 472px;
        }
        .auto-style6 {
            width: 609px;
        }
        .auto-style7 {
            overflow: hidden;
            width: 111%
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
       <%-- <a href="Landing.html" class="sitetitle">Free CSS Templates</a>--%>
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
    	<div class="auto-style7">
            <table class="auto-style1">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label8"  runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Font-Underline="True" Height="22px" Text="Annexure Head Account" Width="374px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Head of Account</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="197px" AutoPostBack="True">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Export to Excel" />

<asp:Repeater ID="Repeater0" runat="server" >
<HeaderTemplate>
    <table border="0" width="600px" cellpadding="2" cellspacing="1" style="border: 1px solid maroon;">
<tr bgcolor="maroon">
<th>Challan Number</th>
<th>Challan Ref Number</th>
<th>Challan Remittance Date</th>
<th>Challan Remittance Name</th>
<th>Head of Account</th>
<th>Challan Expiry Date</th>
<th>Challan District</th>
<th>Department Name</th>
<th>Bank Name</th>
<th>Bank Address</th>
<th>Challan Amount</th>
<th>Challan Document Number</th>
<th>Payment Status</th>
</tr>
</HeaderTemplate>
<ItemTemplate>
<tr>
<td width="100">
<%# DataBinder.Eval(Container, "DataItem.Challan_No")%>
</td>
<td>
<%# DataBinder.Eval(Container, "DataItem.Challan_Ref")%>
</td>
<td width="150">
<%# DataBinder.Eval(Container, "DataItem.Challan_Remit_Date")%>
</td>
<td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Challan_Remitt_Name")%>
</td>
    <td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Head_of_Account")%>
</td>
    <td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Challan_Expire_Date")%>
</td><td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Challan_District")%>
</td>
    <td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.DeptName")%>
</td>
    <td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.BankName")%>
</td>
    <td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.BankAddress")%>
</td><td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Challan_Amount")%>
</td><td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Challan_Document_No")%>
</td>
    <td width="100" align="center">
<%# DataBinder.Eval(Container, "DataItem.Payment_Status")%>
</td>
</tr>
</ItemTemplate>
</asp:Repeater>
                            
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" Visible="false">
 <ItemTemplate>
  <asp:LinkButton ID="btnPage"
   style="padding:8px;margin:2px;background:#ffa100;border:solid 1px #666;font:8pt tahoma;"
   CommandName="Page" CommandArgument="<%# Container.DataItem %>"
   runat="server" ForeColor="White" Font-Bold="True">
    <%# Container.DataItem %>
  </asp:LinkButton>
 </ItemTemplate>
</asp:Repeater>
<div style="font-size:14px; color:black">Total count for selected Head of account:
<asp:Label ID= "totalcount" runat="server"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style6"> 
                        &nbsp;</td>
                </tr>
                </table>
         <div class="clear">
            </div>
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