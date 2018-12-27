<%@ Page Title="About" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Samruddhi.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row"></div>
   <div id="mainContent">
      
        <table class="auto-style2">
            <tr>
                <td style="width: 418px">
                    <asp:Button ID="btnChallan" runat="server" PostBackUrl="~/ChallanForm.aspx" Text="Challan Form" Width="259px" />
                </td>
                <td style="width: 654px">
                    <asp:Button ID="btnAnnexure" runat="server" PostBackUrl="~/Annexure.aspx" Text="Annexure" Width="259px" />
                </td>
            </tr>
            <tr>
                <td style="width: 418px">
                    <asp:Button ID="BntUnmatched" runat="server" PostBackUrl="~/UnmatchedData.aspx" Text="UnMatched Data" Width="259px" />
                </td>
                <td style="width: 654px">
                    <asp:Button ID="btnEditChallan" runat="server" PostBackUrl="~/ChallanForm.aspx" Text="Edit Challan" Width="259px" />
                </td>
            </tr>
        </table>
      
  </div>
    <div class="row"></div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 198px;
        }
        .auto-style2 {
            width: 1078px;
            height: 154px;
        }
    </style>
</asp:Content>

