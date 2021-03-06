<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Left.ascx.vb" Inherits="KPPress.Left" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<table cellSpacing="0" cellPadding="0" width="132" bgColor="#ffffff" border="0">
	<tr>
		<td>
			<asp:Panel id="pnlLogout" runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="132" bgColor="#ffffff" border="0">
					<TR>
						<TD height="26">
							<asp:ImageButton id="btn_logout" AlternateText="회원 로그아웃" ImageUrl="/images/btn_logout.gif" runat="server"></asp:ImageButton></TD>
					</TR>
					<TR>
						<TD height="3"></TD>
					</TR>
				</TABLE>
			</asp:Panel>
		</td>
	</tr>
	<tr>
		<td height="26"><IMG height="29" src="/images/bar_left_news.gif" width="132"></td>
	</tr>
	<tr>
		<td height="7" bgcolor="#ededed"></td>
	</tr>
	<tr>
		<td class="branch1" bgcolor="#ededed">
			<asp:HyperLink id="hl_key" runat="server" NavigateUrl="/list_all.aspx?lvl=1">주요기사</asp:HyperLink><br>
			<asp:HyperLink id="hl_all" runat="server" NavigateUrl="/list_all.aspx?lvl=0">전체기사</asp:HyperLink><br>
			<asp:HyperLink id="hl_past" runat="server" NavigateUrl="/search_past.aspx">지난기사</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_101" runat="server" NavigateUrl="/list_etc.aspx?ID=101&amp;chk_etc=section">정치</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_102" runat="server" NavigateUrl="/list_etc.aspx?ID=102&amp;chk_etc=section">외교</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_103" runat="server" NavigateUrl="/list_etc.aspx?ID=103&amp;chk_etc=section">경제</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_104" runat="server" NavigateUrl="/list_etc.aspx?ID=104&amp;chk_etc=section">사회</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_105" runat="server" NavigateUrl="/list_etc.aspx?ID=105&amp;chk_etc=section">문화</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_106" runat="server" NavigateUrl="/list_etc.aspx?ID=106&amp;chk_etc=section">정보과학</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_107" runat="server" NavigateUrl="/list_etc.aspx?ID=107&amp;chk_etc=section">스포츠</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_108" runat="server" NavigateUrl="/list_etc.aspx?ID=108&amp;chk_etc=section">사설/론평</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_109" runat="server" NavigateUrl="/list_etc.aspx?ID=109&amp;chk_etc=section">인터뷰</asp:HyperLink><br>
		</td>
	</tr>
	<tr>
		<td height="7"></td>
	</tr>
	<tr>
		<td height="19" bgcolor="#c6c6c6" align="left" valign="bottom">&nbsp;&nbsp;<font style="FONT-WEIGHT:bold;FONT-SIZE:8pt">지역별 
				기사</font></td>
	</tr>
	<tr>
		<td height="2"></td>
	</tr>
	<tr>
		<td class="branch2" bgcolor="#ededed" height="56">
			<asp:HyperLink id="hl_l_101" runat="server" NavigateUrl="/list_etc.aspx?ID=101&amp;chk_etc=local">평양</asp:HyperLink>
			<asp:HyperLink id="hl_l_102" runat="server" NavigateUrl="/list_etc.aspx?ID=102&amp;chk_etc=local">개성</asp:HyperLink>
			<asp:HyperLink id="hl_l_103" runat="server" NavigateUrl="/list_etc.aspx?ID=103&amp;chk_etc=local">남포</asp:HyperLink>
			<asp:HyperLink id="hl_l_104" runat="server" NavigateUrl="/list_etc.aspx?ID=104&amp;chk_etc=local">라선</asp:HyperLink><br>
			<asp:HyperLink id="hl_l_105" runat="server" NavigateUrl="/list_etc.aspx?ID=105&amp;chk_etc=local">평안도</asp:HyperLink>
			<asp:HyperLink id="hl_l_106" runat="server" NavigateUrl="/list_etc.aspx?ID=106&amp;chk_etc=local">자강도</asp:HyperLink>
			<asp:HyperLink id="hl_l_107" runat="server" NavigateUrl="/list_etc.aspx?ID=107&amp;chk_etc=local">량강도</asp:HyperLink><br>
			<asp:HyperLink id="hl_l_108" runat="server" NavigateUrl="/list_etc.aspx?ID=108&amp;chk_etc=local">함경도</asp:HyperLink>
			<asp:HyperLink id="hl_l_109" runat="server" NavigateUrl="/list_etc.aspx?ID=109&amp;chk_etc=local">황해도</asp:HyperLink>
			<asp:HyperLink id="hl_l_110" runat="server" NavigateUrl="/list_etc.aspx?ID=110&amp;chk_etc=local">강원도</asp:HyperLink><br>
		</td>
	</tr>
	<tr>
		<td height="10"></td>
	</tr>
	<tr>
		<td height="26"><IMG height="29" src="/images/bar_left_journal.gif" width="132"></td>
	</tr>
	<tr>
		<td height="5"></td>
	</tr>
	<tr>
		<td valign="middle" align="center">
			<asp:ListBox id="lbx_l_Journals" runat="server" Width="130px" Rows="12" AutoPostBack="True" DataTextField="MediaName"
				DataValueField="MediaID"></asp:ListBox>
		</td>
	</tr>
	<tr>
		<td height="15"></td>
	</tr>
	<tr>
		<td>
			<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#c6c6c6">
				<tr>
					<td width="132" bgcolor="#ffffff">
						<table cellSpacing="0" cellPadding="0" width="130" border="0">
							<tr>
								<td width="130"><IMG src="/images/bar_left_information.gif" width="130" height="24" border="0"></td>
							</tr>
							<tr>
								<td width="130" height="5"></td>
							</tr>
							<tr>
								<td width="130" class="branch3">
									<asp:HyperLink id="hl_about" runat="server" NavigateUrl="/about/introduction.aspx">KPM 소개</asp:HyperLink><br>
									<asp:HyperLink id="hl_usage" runat="server" NavigateUrl="/about/guide.aspx">리용 안내</asp:HyperLink><br>
									<asp:HyperLink id="hl_media" runat="server" NavigateUrl="/about/media.aspx">기사제공매체</asp:HyperLink><br>
									<asp:HyperLink id="hl_qna" runat="server" NavigateUrl="/about/qna.aspx">질문과 답</asp:HyperLink><br>
									<asp:HyperLink id="hl_ad" runat="server" NavigateUrl="/about/advertisement.aspx">광고 안내</asp:HyperLink><br>
									<asp:HyperLink id="hl_copyright" runat="server" NavigateUrl="/about/copyright.aspx">저작권 공지</asp:HyperLink><br>
									<asp:HyperLink id="hl_contact" runat="server" NavigateUrl="/about/contact.aspx">련락처</asp:HyperLink><br>
									<asp:HyperLink id="hl_terms" runat="server" NavigateUrl="/about/terms.aspx">리용약관</asp:HyperLink>
								</td>
							</tr>
							<tr>
								<td width="130" height="5"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="15"></td>
	</tr>
</table>
