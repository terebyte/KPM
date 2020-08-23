<%@ Register TagPrefix="uc1" TagName="Bottom" Src="../include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Top" Src="../include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="AdminLeft" Src="AdminLeft.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdminMessage.aspx.vb" Inherits="KPPress.AdminMessage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>조선신보사관리자</title>
		<link rel="stylesheet" href="../include/style.css">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<table width="780" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<uc1:Top id="Top1" runat="server"></uc1:Top></td>
				</tr>
				<tr>
					<td background="../img/bg_table_big.gif"><table width="779" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="155" valign="top" background="../img/bg_table_small.gif">
									<uc1:AdminLeft id="AdminLeft1" runat="server"></uc1:AdminLeft>
								</td>
								<td valign="top"><table width="604" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td><img src="../img/00.gif" width="1" height="9"></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td><table width="415" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#b3b3b3">
													<tr>
														<td bgcolor="#ffffff"><img src="/images/admin/info_top.gif" width="413" height="59"></td>
													</tr>
													<tr>
														<td bgcolor="#ffffff">
															<table width="100%" border="0" cellspacing="0" cellpadding="0">
																<TR>
																	<td width="151" rowspan="3"><img src="/images/admin/info_pic.gif" width="151" height="187"></td>
																	<TD height="20"></TD>
																</TR>
																<tr>
																	<td><table width="95%" border="0" cellpadding="0" cellspacing="0">
																			<tr>
																				<td>&nbsp;</td>
																			</tr>
																			<tr>
																				<td>
																					<asp:Literal id="Literal1" runat="server"></asp:Literal>
																				</td>
																			</tr>
																			<tr>
																				<td style="HEIGHT: 1px">&nbsp;</td>
																			</tr>
																			<tr>
																				<td><div align="center"><FONT class="text">
																							<asp:Button id="btnYes" runat="server" Width="74px" Text="예"></asp:Button>&nbsp;&nbsp;
																							<input type="button" id="btnCancel" runat="server" value="취소" onClick="history.back()">
																						</FONT>
																					</div>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="20" align="right"><img src="/images/admin/info_bottom.gif">
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td background="../img/bg_table_big.gif"><uc1:Bottom id="Bottom1" runat="server"></uc1:Bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
