<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Articles3_main.ascx.vb" Inherits="KPPress.Articles3_main" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<asp:datalist id="DataList1" runat="server" GridLines="None" CellPadding="1" BackColor="White"
	BorderStyle="None" Width="558px" Font-Size="9pt" ShowHeader="False" DataKeyField="ArticleID"
	ItemStyle-VerticalAlign="Middle">
	<ItemStyle HorizontalAlign="Left" Height="20px" ForeColor="#330099" VerticalAlign="Middle"
		BackColor="White"></ItemStyle>
	<ItemTemplate>
		<TABLE cellSpacing="0" cellPadding="0" width="558" bgColor="#ffffff" border="0">
			<TR>
				<TD width="5"></TD>
				<TD><A href='/view_article.aspx?ArticleID=<%# Container.DataItem("ArticleID")%>'>[<%# Container.DataItem("MediaName")%>]
						<%# Container.DataItem("Title") %>
					</A>
					<%# Img_photo(Container.DataItem("chkPhoto")) %>
				</TD>
				<TD width="80" align="right"><%# format(Container.DataItem("JunsongDateTime"), "MM-dd HH:mm")%></TD>
			</TR>
		</TABLE>
		<asp:Label id="Label2" runat="server"></asp:Label>
	</ItemTemplate>
</asp:datalist>
<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
	<tr>
		<td width="568" height="7"></td>
	</tr>
</table>
