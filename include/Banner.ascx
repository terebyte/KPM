<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Banner.ascx.vb" Inherits="KPPress.Banner" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<asp:Panel ID="pnlThis" Runat="server">
	<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
		<TR>
			<TD align="center">
				<asp:DataList id="DataList1" runat="server">
					<ItemTemplate>
						<table border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td><a href='<%# Container.DataItem("LinkURL")%>' target=_blank ><img src='<%# Container.DataItem("ImageURL")%>' border=0 ></a></td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:DataList></TD>
		<TR>
			<TD>&nbsp;</TD>
		</TR>
		</TR></TABLE>
</asp:Panel>
