<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Reconciler._Default" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" > </cc1:ToolkitScriptManager>
    <h2>
       Reoconciler
    </h2>
   <table width="100%">
   <tr>
   <td colspan="6" align="right">
   <asp:Button ID="btnRefresh" runat="server" Text="Refresh" 
           onclick="btnRefresh_Click" />
   <asp:Button ID="btnDefault" runat="server" Text="Set Default" 
           onclick="btnDefault_Click" />
   <asp:Button ID="btnClose" runat="server" Text="Close" onclick="btnClose_Click" />
   </td>
 
   </tr>

   <tr>
   <td></td>
   <td></td>
   <td colspan="2">
   <asp:RadioButton ID="rdoRecieveable" Checked="true" Text="Recieveable" GroupName="head" runat="server" />
   <asp:RadioButton ID="rdoRefunds" Checked="false" Text="Refunds" GroupName="head" runat="server" />
   </td>
   
   <td></td>
   <td></td>
   </tr>
   <tr>
   <td></td>
   <td colspan="4">
    <asp:RadioButton ID="rdoAll" Checked="true" Text="All" GroupName="head1" runat="server" />
   <asp:RadioButton ID="rdoOPD" Checked="false" Text="OPD" GroupName="head1" runat="server" />
   <asp:RadioButton ID="rdoCard" Checked="false" Text="Cardiology" GroupName="head1" runat="server" />
    <asp:RadioButton ID="rdoLab" Checked="false" GroupName="head1" Text="Laboratory" runat="server" />
   <asp:RadioButton ID="rdoRadiology" Checked="false" GroupName="head1" Text="Radiology" runat="server" />
   <asp:RadioButton ID="rdoGeneral" Checked="false" GroupName="head1" Text="General" runat="server" />
   <asp:RadioButton ID="rdoIPD" Checked="false" Text="IPD" GroupName="head1" runat="server" />
   <asp:RadioButton ID="rdoPharmacy" Checked="false" Text="Pharmacy" GroupName="head1" runat="server" />
   <%--<asp:RadioButton ID="RadioButton4" Checked="false" Text="Radiology" runat="server" />--%>
   </td>
  
   <td></td>
   </tr>
   <tr>
   <td>From:</td>
   <td>
   <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
   <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFromDate"
                        Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                    <cc1:MaskedEditExtender TargetControlID="txtFromDate" ID="MaskedEditExtender2" runat="server"
                        Mask="99/99/9999" MaskType="Date">
                    </cc1:MaskedEditExtender>
  
   </td>
   <td>To:</td>
   <td>
   <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
   <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtToDate"
                        Format="dd/MM/yyyy">
                    </cc1:CalendarExtender>
                    <cc1:MaskedEditExtender TargetControlID="txtToDate" ID="MaskedEditExtender1" runat="server"
                        Mask="99/99/9999" MaskType="Date">
                    </cc1:MaskedEditExtender></td>
   <td></td>
   <td></td>
   </tr>
   <tr>
   <td>
   <asp:Label ID="lblCount" runat="server" Text=""></asp:Label>
   </td>

   
   
   </tr>
   <tr>
  <td colspan="6">
   <asp:GridView ID="gridDataDisplay" runat="server" HorizontalAlign="Left" 
           AllowPaging="True" PageSize="20" CellPadding="4" ForeColor="#333333" 
           GridLines="None" AutoGenerateColumns="false" 
          onpageindexchanging="gridDataDisplay_PageIndexChanging">
       <AlternatingRowStyle BackColor="White" />
   <Columns>
   <asp:TemplateField HeaderText="S#">
   <ItemTemplate>
   <%#Container.DataItemIndex+1 %>
   </ItemTemplate>
   </asp:TemplateField>
   <asp:BoundField DataField="Department" HeaderText="Department" />
   <asp:BoundField DataField="PR_No" HeaderText="PRNO" />
   <asp:BoundField DataField="ExpanseHead" HeaderText="Expense Head" />
   <asp:BoundField DataField="panel" HeaderText="Panel" />
   <asp:BoundField DataField="price" HeaderText="Price" />
   <asp:BoundField DataField="cost" HeaderText="Cost" />
   <asp:BoundField DataField="Insurance_Amount" HeaderText="Insurance Amount" />
   <asp:BoundField DataField="CostHead" HeaderText="Cost Head" />
   <asp:BoundField DataField="ReferenceNo" HeaderText="Reference No" />
   <%--<asp:BoundField DataField="refundtype" HeaderText="Refund Type" />--%>
   <asp:BoundField DataField="enteredOn" HeaderText="Entered On" />
   
   

   </Columns>
       <EditRowStyle BackColor="#2461BF" />
       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#EFF3FB" />
       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#F5F7FB" />
       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
       <SortedDescendingCellStyle BackColor="#E9EBEF" />
       <SortedDescendingHeaderStyle BackColor="#4870BE" />
   </asp:GridView>
      
      </td>
   </tr>
   <tr>
   <td width="20%"></td>
   <td width="15%"></td>
   <td width="15%"></td>
   <td width="15%"></td>
   <td width="15%"></td>
   <td width="20%"></td>
   </tr>

   </table>
</asp:Content>
