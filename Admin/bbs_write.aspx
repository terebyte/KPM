<%@ Page Language="vb" AutoEventWireup="false" Codebehind="bbs_write.aspx.vb" Inherits="KPPress.bbs_write" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>bbs_write</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="<%=strStyle%>" type=text/css rel=stylesheet>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table height="90%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr vAlign="middle">
					<td align="right">
						<table height="350" cellSpacing="0" cellPadding="0" width="560" bgColor="#f0f0f0">
							<tr bgColor="#b2b2b2" height="1">
								<td align="center" colSpan="2"></td>
							</tr>
							<tr>
								<td align="center" colSpan="2" height="30">글쓰기
								</td>
							</tr>
							<tr bgColor="#b2b2b2" height="1">
								<td align="center" colSpan="2"></td>
							</tr>
							<tr>
								<td align="center" width="80" height="30">제목
								</td>
								<td>&nbsp;<asp:textbox id="txtSubject" runat="server" Width="250" BorderStyle="Solid" BorderColor="#B2B2B2"
										BorderWidth="1px"></asp:textbox>
								</td>
							</tr>
							<tr bgColor="#b2b2b2" height="1">
								<td align="center" colSpan="2"></td>
							</tr>
							<tr>
								<td align="center">내용
								</td>
								<td height="310">&nbsp;<asp:textbox id="txtText" runat="server" Width="500" BorderStyle="Solid" BorderColor="#B2B2B2"
										BorderWidth="1px" Height="300" TextMode="MultiLine"></asp:textbox>
								</td>
							</tr>
							<tr bgColor="#b2b2b2" height="1">
								<td align="center" colSpan="2"></td>
							</tr>
							<asp:panel id="pnlFile" runat="server">
								<TR>
									<TD align="center" width="80" height="30">파일첨부
									</TD>
									<TD>&nbsp;<INPUT id="txtFile" style="WIDTH: 300px; HEIGHT: 20px" type="file" name="File1" runat="server">
										<BR>
									</TD>
								</TR>
							</asp:panel>
							<asp:panel id="pnlFileLink" runat="server">
								<TR>
									<TD align="center" width="80" height="30">첨부파일
									</TD>
									<TD>&nbsp;
										<asp:Label id="lblfile" runat="server"></asp:Label>&nbsp;&nbsp;
										<asp:Button id="btnDeleteFile" runat="server" Text="파일삭제"></asp:Button></TD>
								</TR>
							</asp:panel>
							<tr bgColor="#b2b2b2" height="1">
								<td align="center" colSpan="2"></td>
							</tr>
						</table>
						<TABLE cellSpacing="0" cellPadding="0" width="560" border="0">
							<tr height="5">
								<td align="center" colSpan="2"></td>
							</tr>
							<TR>
								<TD><A href='bbs_list.aspx?bbsid=<%=request("bbsid")%>&amp;pg=<%=request("pg")%>&amp;keyword=<%=Request("keyword")%>&amp;keywordkind=<%=request("keywordkind")%>' ><IMG src="/images/btn_list.gif" align="absMiddle" border="0"></A>
									<asp:label id="lblScript" runat="server"></asp:label></TD>
								<TD align="right"><asp:imagebutton id="ImageButton1" runat="server" ImageUrl="/images/btn_ok.gif"></asp:imagebutton></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
