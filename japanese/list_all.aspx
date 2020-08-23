<%@ Register TagPrefix="uc1" TagName="Right" Src="include/Right.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="include/Top.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="list_all.aspx.vb" Inherits="KPPress.list_all_jpn" %>
<HTML>
	<HEAD>
		<title>KPM - 조선언론 정보기지</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/japanese/include/main.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bgColor="#ffffff" leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="963" bgColor="#ffffff" border="0" height="100%">
				<tr>
					<td colSpan="5">
						<!-- 상단메뉴 --><uc1:top id="TOP1" runat="server"></uc1:top></td>
					<td width="1" rowspan="4" bgcolor="#929292"></td>
				</tr>
				<tr>
					<td vAlign="top" align="center" width="148" height="100%">
						<!-- 왼쪽메뉴 --><uc1:left id="Left1" runat="server"></uc1:left></td>
					<td width="1" rowspan="3" bgcolor="#929292"></td>
					<td vAlign="top" align="center" width="584">
						<!-- 메인 시작 -->
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="170" bgColor="#e2e2e2" height="26">&nbsp;&nbsp;
									<asp:label id="lbl_bar" runat="server" ForeColor="Black" Font-Bold="True">すべての記事</asp:label></td>
								<td align="right" width="398" bgColor="#e2e2e2">最近一週間のニュ&#12540;スリストです。&nbsp;</td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
							<tr>
								<td align="center" width="568" colSpan="2" height="40"><asp:dropdownlist id="ddlMedia" runat="server"></asp:dropdownlist>&nbsp;<asp:textbox id="txtKeyword" runat="server" Height="20px" Width="200px"></asp:textbox>&nbsp;<asp:imagebutton id="imgbtnSearch" runat="server" ImageUrl="/images/btn_search.gif" align="absmiddle"></asp:imagebutton></td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
							<tr>
								<td align="center" width="568" colSpan="2"><asp:datagrid id="DataGrid1" runat="server" Width="558px" GridLines="None" CellPadding="1" BackColor="White"
										BorderStyle="None" OnPageIndexChanged="doPaging" AllowPaging="True" AutoGenerateColumns="False" PageSize="20" Font-Size="9pt" ShowHeader="False"
										ItemStyle-Height="20">
										<Columns>
											<asp:TemplateColumn>
												<ItemTemplate>
													ㆍ <a href='/japanese/view_article.aspx?ArticleID=<%# Container.DataItem("ArticleID") %>'>
														<%# Container.DataItem("Title") %>
													</a>
													<%# Img_photo(Container.DataItem("chkPhoto")) %>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Left"></ItemStyle>
											</asp:TemplateColumn>
											<asp:BoundColumn DataField="JunsongDateTime" DataFormatString="{0:MM-dd HH:mm}">
												<ItemStyle HorizontalAlign="Right" Width="80" VerticalAlign="Top"></ItemStyle>
											</asp:BoundColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#003296" Mode="NumericPages" Height="30" VerticalAlign="Bottom"></PagerStyle>
									</asp:datagrid></td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<A class="branch_a" href="javascript:history.back();">← Back</A></td>
								<td align="right"><A class="branch_a" href="#t">↑ Top</A>&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
						</table>
						<!-- 메인 끝 --></td>
					<td width="1" rowspan="3" bgcolor="#929292"></td>
					<td vAlign="top" align="center" width="228">
						<!-- 오늘쪽 메뉴 --><uc1:right id="Right1" runat="server"></uc1:right></td>
				</tr>
				<tr>
					<td width="960" colSpan="5" height="8"></td>
				</tr>
				<tr>
					<td colSpan="5">
						<!-- 하단 --><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
