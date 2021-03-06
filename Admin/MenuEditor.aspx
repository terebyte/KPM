<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MenuEditor.aspx.vb" Inherits="KPPress.MenuEditor"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>KPM-메뉴변경</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="/include/style.css" rel="stylesheet">
		<SCRIPT language="JavaScript" src="/script/common.js"></SCRIPT>
		<script>
<!--
			function init(){
				document.Form1.lstRight.style.width=200;
			}

			function PopupOpen(page,name,width,height){
				var features = 'width=' + width + ',height=' + height + '';
				features    += 'diretories=no,location=no,menubar=no,scrollbars=no,toolbar=no,resizable=no,';
				features    += 'status=no,';
				window_handle= window.open(page,name,features);
			}
// -->
		</script>
	</HEAD>
	<BODY leftMargin="0" topMargin="0" onload="init();">
		<form id="Form1" runat="server">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%">
				<tr>
					<td vAlign="top">
						<table cellSpacing="0" cellPadding="0">
							<tr>
								<td><FONT face="굴림"></FONT></td>
							</tr>
							<tr>
								<td align="center">
									<table cellSpacing="0" cellPadding="3">
										<tr height="20">
											<td width="10"></td>
											<td width="690"></td>
										</tr>
										<tr>
											<td><FONT face="굴림"></FONT></td>
											<td vAlign="middle">
												<table cellSpacing="0" cellPadding="0">
													<tr>
														<td colSpan="2"><strong><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">
																	메뉴변경</FONT></strong> </B></td>
													</tr>
													<tr>
														<td><asp:listbox id="lstRight" runat="server" Rows="10" Width="200px" AutoPostBack="True"></asp:listbox></td>
														<td vAlign="middle" align="center"><asp:button id="btnUp" runat="server" Width="50" Text="위로"></asp:button><br>
															<br>
															<asp:button id="btnDown" runat="server" Width="50" Text="아래로"></asp:button><br>
															<br>
															<br>
															<br>
															<asp:button id="btnDelete" runat="server" Width="50" Text="삭제"></asp:button></td>
													</tr>
													<tr>
														<td colSpan="2"><br>
															<asp:textbox id="txtCategoryName" runat="server" Width="200px"></asp:textbox><asp:button id="btnEditCategory" runat="server" Width="50" Text="변경"></asp:button></td>
													</tr>
													<tr>
														<td colSpan="2"><asp:label id="lblCategoryCount" runat="server" Visible="false">1</asp:label><asp:textbox id="txtCategory" runat="server" Width="200px"></asp:textbox><asp:button id="btnInsCategory" runat="server" Width="50" Text="추가"></asp:button></td>
													</tr>
													<tr>
														<td align="center" colSpan="2"><asp:label id="lblTemp" runat="server"></asp:label><br>
															<asp:button id="btnClose" runat="server" Width="50" Text="닫기"></asp:button></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</BODY>
</HTML>
