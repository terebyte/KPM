<%@ Page Language="vb" AutoEventWireup="false" Codebehind="bbs_view.aspx.vb" Inherits="KPPress.bbs_view" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>bbs_view</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<LINK href="<%=strStyle%>" type="text/css" rel="stylesheet">
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellpadding="0" cellspacing="0" border="0" width="100%" height="90%">
				<tr valign="middle">
					<td align="right">
						<table height="350" cellSpacing="0" cellPadding="0" width="560" bgColor="#f0f0f0" border="0">
							<tr height="1" bgcolor="#b2b2b2">
								<td align="center" colSpan="4" height="1"></td>
							</tr>
							<tr height="30" bgcolor="#e2e2e2">
								<td align="center" colSpan="4"><b><asp:label id="lblSubject" runat="server" Width="100%"></asp:label></b></td>
							</tr>
							<tr height="1" bgcolor="#b2b2b2">
								<td align="center" colSpan="4"></td>
							</tr>
							<tr>
								<td align="center" width="80" height="30">번호 :
									<asp:label id="lblNo" runat="server"></asp:label></td>
								<td>글쓴이 :
									<asp:label id="lblWriter" runat="server"></asp:label></td>
								<td>조회 :
									<asp:label id="lblHit" runat="server"></asp:label></td>
								<td>날짜 :
									<asp:label id="lblRegDate" runat="server"></asp:label></td>
							</tr>
							<tr height="1" bgcolor="#b2b2b2">
								<td align="center" colSpan="4"></td>
							</tr>
							<tr>
								<td vAlign="top" bgColor="#ffffff" colSpan="4" height="300"><br>
									&nbsp;<asp:label id="lblText" runat="server" Width="540px" height="10"></asp:label>
								</td>
							</tr>
							<tr height="5" bgcolor="#ffffff">
								<td colspan="4">
									<asp:Label id="lblFileName" runat="server"></asp:Label></td>
							</tr>
							<tr height="1" bgcolor="#b2b2b2">
								<td colspan="4"></td>
							</tr>
						</table>
						<table cellSpacing="0" cellPadding="0" width="560" border="0">
							<tr height="30" valign="middle">
								<td width="150"><A href='bbs_list.aspx?bbsid=<%=request("bbsid")%>&amp;pg=<%=request("pg")%>&amp;keyword=<%=Request("keyword")%>&amp;keywordkind=<%=request("keywordkind")%>' >
										<img src="/images/btn_list.gif" border="0" align="absMiddle"></A>
								</td>
								<td align="right">
									<asp:ImageButton id="Imagebutton2" runat="server" ImageUrl="/images/btn_delete.gif" align="absmiddle"
										Visible="False"></asp:ImageButton>
									<asp:Label id="lblAdmin" runat="server"><A href='bbs_write.aspx?mode=update&amp;bbsid=<%=request("bbsid")%>&amp;pg=<%=request("pg")%>&amp;keyword=<%=Request("keyword")%>&amp;keywordkind=<%=request("keywordkind")%>&amp;no=<%=request("no")%>'>
											<img src="/images/btn_update.gif" border="0" align="absMiddle"></A>&nbsp;|&nbsp;
									<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="/images/btn_delete.gif" align="absmiddle"></asp:ImageButton>
									&nbsp;|&nbsp;
									<A href='bbs_write.aspx?bbsid=<%=request("bbsid")%>&amp;pg=<%=request("pg")%>&amp;keyword=<%=Request("keyword")%>&amp;keywordkind=<%=request("keywordkind")%>'>
											<img src="/images/btn_write.gif" border="0" align="absMiddle"></A></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
