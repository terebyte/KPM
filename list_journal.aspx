<%@ Page Language="vb" AutoEventWireup="false" Codebehind="list_journal.aspx.vb" Inherits="KPPress.list_journal"%>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Right" Src="include/Right.ascx" %>
<HTML>
	<HEAD>
		<title>KPM - 조선언론 정보기지</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/include/main.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bgColor="#ffffff" leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table height="100%" cellSpacing="0" cellPadding="0" width="963" bgColor="#ffffff" border="0">
				<tr>
					<td colSpan="5">
						<!-- 상단메뉴 --><uc1:top id="TOP1" runat="server"></uc1:top></td>
					<td width="1" bgColor="#929292" rowSpan="4"></td>
				</tr>
				<tr>
					<td vAlign="top" align="center" width="148" height="100%">
						<!-- 왼쪽메뉴 --><uc1:left id="Left1" runat="server"></uc1:left></td>
					<td width="1" bgColor="#929292" rowSpan="3"></td>
					<td vAlign="top" align="center" width="584">
						<!-- 메인 시작 -->
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="170" bgColor="#c8d0dc" height="26">&nbsp;&nbsp;
									<asp:label id="lbl_bar" runat="server" Font-Bold="True" ForeColor="Black"></asp:label></td>
								<td vAlign="middle" align="right" width="398" bgColor="#c8d0dc">저널 이동
									<asp:listbox id="lbx_Journals" runat="server" DataValueField="MediaID" DataTextField="MediaName"
										Font-Size="8" AutoPostBack="True" Rows="1" Width="130px"></asp:listbox>&nbsp;
								</td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
							<tr>
								<td colSpan="2" height="17" align="right">년도
									<asp:dropdownlist id="ddlYear" runat="server" AutoPostBack="True"></asp:dropdownlist>&nbsp;&nbsp; 
									호수
									<asp:dropdownlist id="ddlGwonho" runat="server" AutoPostBack="True">
										<asp:ListItem Value="전체">전체</asp:ListItem>
									</asp:dropdownlist>&nbsp;</td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="20"></td>
							</tr>
							<tr>
								<td align="center" width="568" colSpan="2"><asp:datagrid id="DataGrid1" runat="server" Font-Size="9pt" Width="558px" ItemStyle-Height="20"
										ShowHeader="False" PageSize="20" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanged="doPaging" BorderStyle="None"
										BackColor="White" CellPadding="1" GridLines="None">
										<Columns>
											<asp:TemplateColumn>
												<ItemTemplate>
													ㆍ
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Right" Width="10" VerticalAlign="Top"></ItemStyle>
											</asp:TemplateColumn>
											<asp:TemplateColumn>
												<ItemTemplate>
													<a href='/view_journal.aspx?JArticleID=<%# Container.DataItem("JArticleID") %>'>
														<%# Container.DataItem("Title") %>
														<%# Name_Writers(Container.DataItem("Writers")) %>
													</a>
													<%# Img_pdf(Container.DataItem("FileName")) %>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Left"></ItemStyle>
											</asp:TemplateColumn>
											<asp:TemplateColumn>
												<ItemTemplate>
													<%# Container.DataItem("BalHengYear") %>
													년
													<%# Container.DataItem("GwonHo") %>
													호
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="75"></ItemStyle>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#003296" Mode="NumericPages" Height="30" VerticalAlign="Bottom"></PagerStyle>
									</asp:datagrid></td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<A class="branch_a" href="javascript:history.back();">← 이전 페지</A></td>
								<td align="right"><A class="branch_a" href="#t">↑ 화면 우로</A>&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
						</table>
						<!-- 메인 끝 --></td>
					<td width="1" bgColor="#929292" rowSpan="3"></td>
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
