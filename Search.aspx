<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Search.aspx.vb" Inherits="KPPress.Search"%>
<%@ Register TagPrefix="uc1" TagName="Right" Src="include/Right.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="include/Top.ascx" %>
<HTML>
	<HEAD>
		<title>KPM - 조선언론 정보기지</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/include/main.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="/include/admin.js"></script>
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
								<td width="170" bgColor="#e2e2e2" height="26">&nbsp;&nbsp;<b>검색</b></td>
								<td align="right" width="398" bgColor="#e2e2e2"></td>
							</tr>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
						</table>
						<table cellSpacing="0" cellPadding="0" width="558" bgColor="#ffffff" border="0">
							<tr>
								<td align="center" height="40"><asp:dropdownlist id="ddlWhere" runat="server">
										<asp:ListItem Value="news">뉴스</asp:ListItem>
										<asp:ListItem Value="journal">저널</asp:ListItem>
										<asp:ListItem Value="photo">사진</asp:ListItem>
									</asp:dropdownlist>&nbsp;<asp:textbox id="txtKeyword" runat="server" Width="268px" Height="20px"></asp:textbox>&nbsp;<asp:imagebutton id="imgbtnSearch" runat="server" ImageUrl="/images/btn_search.gif" align="absmiddle"></asp:imagebutton></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><asp:panel id="msg_result" runat="server" Visible="False">※ 검색결과 : 총 <FONT color="#cc0000">
											<asp:Label id="lblCount" Runat="server"></asp:Label></FONT>건의 
            기사를 찾았습니다.</asp:panel></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<asp:panel id="pnlNews" runat="server" Visible="False">
								<TR>
									<TD bgColor="#c6c6c6" height="1"></TD>
								</TR>
								<TR>
									<TD height="7"></TD>
								</TR>
								<TR>
									<TD><B>뉴스</B><BR>
										<BR>
										<asp:datagrid id="dgNews" Width="100%" Runat="server" ShowHeader="False" OnPageIndexChanged="doPaging"
											AutoGenerateColumns="False" PageSize="20" GridLines="None" AllowPaging="True" CssClass="box">
											<Columns>
												<asp:TemplateColumn>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<ItemTemplate>
														<a href='/view_article.aspx?ArticleID=<%# DataBinder.Eval(Container.DataItem, "ArticleID") %>'>
															[<%# DataBinder.Eval(Container.DataItem, "MediaName") %>]
															<%# DataBinder.Eval(Container.DataItem, "Title") %>
														</a>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:BoundColumn DataField="JunsongDateTime" DataFormatString="{0:yyyy-MM-dd HH:mm}">
													<ItemStyle HorizontalAlign="Right" Width="150px" VerticalAlign="Top"></ItemStyle>
												</asp:BoundColumn>
											</Columns>
											<PagerStyle VerticalAlign="Bottom" Height="30px" HorizontalAlign="Center" ForeColor="#003296"
												Mode="NumericPages" Visible="False"></PagerStyle>
										</asp:datagrid></TD>
								</TR>
								<asp:panel id="pnlNewsMore" runat="server" Visible="False">
									<TR>
										<TD vAlign="middle" align="right" height="40"><A 
            href='search.aspx?media=news&amp;keyword=<%=HttpUtility.UrlEncodeUnicode(request("keyword"))%>'><IMG src="/images/icon_searchMore.gif" border="0"></A>
										</TD>
									</TR>
								</asp:panel>
							</asp:panel><asp:panel id="pnlJournal" runat="server" Visible="False">
								<TR>
									<TD bgColor="#c6c6c6" height="1"></TD>
								</TR>
								<TR>
									<TD height="7"></TD>
								</TR>
								<TR>
									<TD><B>저널</B><BR>
										<BR>
										<asp:datagrid id="dgJournal" Width="100%" Runat="server" ShowHeader="False" OnPageIndexChanged="doPaging2"
											AutoGenerateColumns="False" PageSize="20" GridLines="None" AllowPaging="True" CssClass="box">
											<Columns>
												<asp:TemplateColumn>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<ItemTemplate>
														<a href='/view_journal.aspx?JArticleID=<%# DataBinder.Eval(Container.DataItem, "JArticleID") %>'>
															[<%# DataBinder.Eval(Container.DataItem, "MediaName") %>]
															<%# DataBinder.Eval(Container.DataItem, "Title") %>
														</a>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:BoundColumn DataField="BalHeng">
													<ItemStyle HorizontalAlign="left" Width="90px" VerticalAlign="Top"></ItemStyle>
												</asp:BoundColumn>
											</Columns>
											<PagerStyle VerticalAlign="Bottom" Visible="False" Height="30px" HorizontalAlign="Center" ForeColor="#003296"
												Mode="NumericPages"></PagerStyle>
										</asp:datagrid></TD>
								</TR>
								<asp:panel id="pnlJournalMore" runat="server" Visible="False">
									<TR>
										<TD vAlign="middle" align="right" height="40"><A 
            href='search.aspx?media=journal&amp;keyword=<%=HttpUtility.UrlEncodeUnicode(request("keyword"))%>'><IMG src="/images/icon_searchMore.gif" border="0"></A>
										</TD>
									</TR>
								</asp:panel>
							</asp:panel><asp:panel id="pnlPhoto" runat="server" Visible="False">
								<TR>
									<TD bgColor="#c6c6c6" height="1"></TD>
								</TR>
								<TR>
									<TD height="7"></TD>
								</TR>
								<TR>
									<TD><B>사진</B><BR>
										<asp:datalist id="dlPhoto" runat="server"  DESIGNTIMEDRAGDROP="124" RepeatColumns="2"
											CellPadding="10">
											<ItemTemplate>
												<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100" align="center" border="0">
													<TR>
														<TD style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"
															vAlign="middle" align="center" width="100" height="100"><a href='javascript:MMPhotoView(<%# Container.DataItem("mmFileID")%>);'><img src='<%# Container.DataItem("Location_Thumb")%>' border=0></TD>
													</TR>
													<tr>
														<TD>
															<%# Container.DataItem("title")%>
															</a>
														</TD>
													</tr>
												</TABLE>
											</ItemTemplate>
										</asp:datalist></TD>
								</TR>
								<asp:panel id="pnlPhotoMore" runat="server" Visible="False">
									<TR>
										<TD vAlign="middle" align="right" height="40"><A 
            href='search.aspx?media=photo&amp;keyword=<%=HttpUtility.UrlEncodeUnicode(request("keyword"))%>'><IMG src="/images/icon_searchMore.gif" border="0"></A>
										</TD>
									</TR>
								</asp:panel>
							</asp:panel><asp:panel id="pnlVideo" runat="server" >
								<TR>
									<TD bgColor="#c6c6c6" height="1"></TD>
								</TR>
								<TR>
									<TD height="7"></TD>
								</TR>
								<TR>
									<TD><B>동영상</B><BR>
										<asp:datalist id="dlVideo" runat="server" Visible="False" RepeatColumns="2" CellPadding="10">
											<ItemTemplate>
												<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100" align="center" border="0">
													<TR>
														<TD style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"
															vAlign="middle" align="center" width="100" height="100"><a href='javascript:MMVideoView(<%# Container.DataItem("mmFileID")%>);'><img src='<%# Container.DataItem("Location_Thumb")%>' border=0></TD>
													</TR>
													<tr>
														<TD>
															<%# Container.DataItem("title")%>
															</a>
														</TD>
													</tr>
												</TABLE>
											</ItemTemplate>
										</asp:datalist></TD>
								</TR>
								<asp:panel id="pnlVideoMore" runat="server" Visible="False">
									<TR>
										<TD vAlign="middle" align="right" height="40"><A 
            href='search.aspx?media=video&amp;keyword=<%=HttpUtility.UrlEncodeUnicode(request("keyword"))%>'><IMG src="/images/icon_searchMore.gif" border="0"></A>
										</TD>
									</TR>
								</asp:panel>
							</asp:panel>
							<asp:panel id="pnlNone" runat="server" Visible="False">
								<TR>
									<TD vAlign="middle" align="center" height="100"><B>'<%=request("keyword")%>'</B>에 
										대한 검색결과가 없습니다.
									</TD>
								</TR>
							</asp:panel>
							<tr>
								<td width="568" colSpan="2" height="15"></td>
							</tr>
							<tr>
								<td align="right" colSpan="2"><A class="branch_a" href="#t">↑ 화면 우로</A>&nbsp;&nbsp;</td>
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
