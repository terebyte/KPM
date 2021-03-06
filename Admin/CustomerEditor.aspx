<%@ Register TagPrefix="uc1" TagName="Top" Src="../include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="../include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="AdminLeft" Src="AdminLeft.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CustomerEditor.aspx.vb" Inherits="KPPress.CustomerEditor" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>조선신보사관리자</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/include/style.css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript">
<!--
function LinkAdd()
{
	var LinkArticleNo =  document.Form1.txtLinkArticleID.value ;
	var LinkDescription = document.Form1.txtLinkDescription.value ;
	if (LinkArticleNo.length == 0) {
		alert('기사번호를 입력해주세요.');
		return false;
	}
	if (LinkDescription.length == 0) {
		alert('기사설명을 입력해주세요.');
		return false;
	}
	document.Form1.txtNayong.value += "<a href='/view_article.aspx?ArticleID=" + LinkArticleNo + "'>" + LinkDescription + "</a><br>"	;
}
function PopupOpen(page,name,width,height){
	var features = 'width=' + width + ',height=' + height + '';
    features    += 'diretories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,';
    features    += 'status=yes,';
    window_handle= window.open(page,name,features);
}
// -->
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="780" border="0">
				<tr>
					<td><uc1:top id="Top1" runat="server"></uc1:top></td>
				</tr>
				<tr>
					<td background="../images/bg_table_big.gif">
						<table cellSpacing="0" cellPadding="0" width="779" border="0">
							<tr>
								<td vAlign="top" width="155" background="../images/bg_table_small.gif"><uc1:adminleft id="AdminLeft1" runat="server"></uc1:adminleft></td>
								<td vAlign="top">
									<table cellSpacing="0" cellPadding="0" width="604" align="center" border="0">
										<tr>
											<td><IMG height="9" src="../images/00.gif" width="1"></td>
										</tr>
										<tr>
											<td>
												<table cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td bgColor="#c6c6c6"><IMG height="1" src="../images/00.gif" width="1"></td>
													</tr>
													<tr>
														<td vAlign="bottom" height="20">
															<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
																<tr>
																	<td><IMG height="11" src="../images/icon_arrow_blue.gif" width="10">&nbsp; <strong><font style="FONT-SIZE: 12pt" color="#003399">
																				<asp:label id="lblAdminMenuName" runat="server"></asp:label></font></strong></td>
																	<td class="icon" vAlign="bottom">
																		<div align="right">&nbsp;</div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td bgColor="#c6c6c6"><IMG height="1" src="../images/00.gif" width="1"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td style="HEIGHT: 9px"><IMG height="9" src="../images/00.gif" width="1"></td>
										</tr>
										<TR>
											<td><asp:checkbox id="chkSeeSelector" runat="server" Checked="true" AutoPostBack="True" Font-Size="9pt"
													Font-Bold="True" Text="목록 보기"></asp:checkbox>&nbsp;&nbsp;
												<asp:button id="btnNew" runat="server" Text="새로입력"></asp:button><asp:panel id="pnlSelector" Runat="server">
													<TABLE cellSpacing="0" cellPadding="0" width="604" align="center" border="0">
														<TR>
															<TD>
																<TABLE width="100%">
																	<TR>
																		<TD class="text" style="WIDTH: 280px">검색어(기관/개인명)
																			<asp:textbox id="txtSearchWord" runat="server" Font-Size="9pt" Width="140px"></asp:textbox></TD>
																		<TD class="text">
																			<asp:Button id="btnSearch" Text="찾기" Font-Size="8pt" Runat="server"></asp:Button></TD>
																	</TR>
																</TABLE>
															</TD>
														<TR>
															<TD>
																<asp:datagrid id="DataGrid1" runat="server" Font-Size="9pt" Width="100%" GridLines="None" CellPadding="3"
																	BackColor="White" BorderWidth="2px" CellSpacing="1" BorderStyle="Ridge" BorderColor="White"
																	OnPageIndexChanged="doPaging" AllowPaging="True" AutoGenerateColumns="False" DataKeyField="CustomerID"
																	PageSize="15">
																	<FooterStyle ForeColor="Black" BackColor="#C6C3C6"></FooterStyle>
																	<SelectedItemStyle Font-Bold="True" ForeColor="MidnightBlue" BackColor="Lavender"></SelectedItemStyle>
																	<ItemStyle HorizontalAlign="Center" ForeColor="Black" BackColor="WhiteSmoke"></ItemStyle>
																	<HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="GhostWhite" BackColor="DimGray"></HeaderStyle>
																	<Columns>
																		<asp:BoundColumn DataField="CustomerID" HeaderText="No.">
																			<HeaderStyle Width="10%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:ButtonColumn DataTextField="CustomerName" HeaderText="기관/개인명" CommandName="Select">
																			<ItemStyle HorizontalAlign="Left"></ItemStyle>
																		</asp:ButtonColumn>
																		<asp:BoundColumn DataField="CustomerLoginID" HeaderText="아이디">
																			<HeaderStyle Width="10%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:BoundColumn DataField="License" HeaderText="동시접속수">
																			<HeaderStyle Width="12%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:BoundColumn DataField="ipCount" HeaderText="IP">
																			<HeaderStyle Width="10%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:BoundColumn DataField="regDate" HeaderText="등록일" DataFormatString="{0:yyyy/MM/dd}">
																			<HeaderStyle Width="15%"></HeaderStyle>
																		</asp:BoundColumn>
																	</Columns>
																	<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#C6C3C6" Mode="NumericPages"></PagerStyle>
																</asp:datagrid></TD>
														</TR>
														<TR height="20">
															<TD></TD>
														</TR>
													</TABLE>
												</asp:panel><asp:label id="lblCustomerID" runat="server" Visible="False"></asp:label></td>
										</TR>
										<tr>
											<td><asp:panel id="pnlEntries" Runat="server" Visible="False" DESIGNTIMEDRAGDROP="3716">
													<TABLE cellSpacing="1" cellPadding="3" border="0">
														<TR>
															<TD class="text" width="15%" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;기관/개인명</FONT></STRONG></DIV>
															</TD>
															<TD width="85%">
																<asp:textbox id="txtCustomerName" runat="server" Font-Size="9pt" Width="300px"></asp:textbox>
														<TR>
															<TD class="text" width="15%" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">
																			아이디</FONT></STRONG></DIV>
															</TD>
															<TD width="85%">
																<asp:textbox id="txtCustomerLoginID" runat="server" Font-Size="9pt" Width="100px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="text" width="15%" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;패스워드</FONT></STRONG></DIV>
															</TD>
															<TD width="85%">
																<asp:textbox id="txtCustomerLoginPWD" runat="server" Font-Size="9pt" Width="100px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="text" width="15%" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;동시접속수</FONT></STRONG></DIV>
															</TD>
															<TD width="85%">
																<asp:DropDownList id="ddlLicense" runat="server">
																	<asp:ListItem Value="0">무제한</asp:ListItem>
																</asp:DropDownList></TD>
														</TR>
														<TR>
															<TD align="center" colSpan="2">
																<asp:button id="btnSave" runat="server" Text="저장" Font-Size="8pt"></asp:button>&nbsp;&nbsp;
																<asp:button id="btnDelete" runat="server" Text="삭제" Font-Size="8pt"></asp:button></TD>
														</TR>
														<TR height="20">
															<TD colSpan="2"></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;허용IP범위
																		</FONT></STRONG>
																</DIV>
															</TD>
															<TD>
																<TABLE cellSpacing="0" cellPadding="0">
																	<TR>
																		<TD></TD>
																		<TD>
																			<asp:datagrid id="dgIPRange" runat="server" Width="500px" BorderStyle="Solid" AutoGenerateColumns="False"
																				CssClass="e3" OnItemCommand="IPRangeDelete" OnUpdateCommand="updateDataBase" OnCancelCommand="cancelEdit"
																				OnEditCommand="setEditMode">
																				<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
																				<Columns>
																					<asp:BoundColumn DataField="IPRangeBegin" HeaderText="범위시작">
																						<ItemStyle HorizontalAlign="Center"></ItemStyle>
																					</asp:BoundColumn>
																					<asp:BoundColumn DataField="IPRangeEnd" HeaderText="범위끝">
																						<ItemStyle HorizontalAlign="Center"></ItemStyle>
																					</asp:BoundColumn>
																					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="저장" HeaderText="메뉴" CancelText="취소" EditText="수정">
																						<ItemStyle HorizontalAlign="Center"></ItemStyle>
																					</asp:EditCommandColumn>
																					<asp:ButtonColumn Text="삭제" CommandName="IPRangeDelete">
																						<HeaderStyle Width="50px"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center"></ItemStyle>
																					</asp:ButtonColumn>
																				</Columns>
																			</asp:datagrid>
																			<asp:textbox id="IPRangeBegin" runat="server" Width="192px"></asp:textbox>
																			<asp:textbox id="IPRangeEnd" runat="server" Width="192px"></asp:textbox>
																			<asp:button id="btnIPRange" runat="server" Text="추가" Width="40px" BackColor="White" BorderWidth="1px"
																				BorderStyle="Solid" BorderColor="Gray" CssClass="e3" Height="18px"></asp:button></TD>
																	</TR>
																	<TR>
																		<TD></TD>
																		<TD><FONT color="olive">IP는 000.000.000.000 형태로 입력하시기 바랍니다.&nbsp;&nbsp; 예) 
																				192.168.001.023</FONT></TD>
																	</TR>
																</TABLE>
															</TD>
														</TR>
													</TABLE>
												</asp:panel></td>
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
					<td background="../images/bg_table_big.gif"><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
