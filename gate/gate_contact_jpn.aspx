<%@ Page Language="vb" AutoEventWireup="false" Codebehind="gate_contact_jpn.aspx.vb" Inherits="KPPress.gate_contact_jpn"%>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="include/gate_top_jpn.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="include/gate_bottom.ascx" %>
<HTML>
	<HEAD>
		<title>KPM - Japanese</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="include/gate_jpn.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bgColor="#ffffff" leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="801" bgColor="#ffffff" border="0" height="100%">
				<tr>
					<td width="200" height="70"><a href="/gate/gate_main_jpn.aspx"><img src="/images/logo2_gate_jpn.gif" width="200" height="70" border="0"></a></td>
					<td width="600" colspan="2">
						<!-- 상단메뉴 --><uc1:top id="TOP1" runat="server"></uc1:top></td>
					<td width="1" rowspan="9" bgcolor="#C0C0C0"></td>
				</tr>
				<tr>
					<td width="200" height="142"><img src="/images/image_contact_gate.gif" width="200" height="142"></td>
					<td width="600" height="142" colspan="2"><img src="/images/image1_sub_gate.gif" width="600" height="142"></td>
				</tr>
				<tr>
					<td width="200" height="48" rowspan="2"><img src="/images/no_05_gate.gif" width="200" height="48"></td>
					<td width="1" bgcolor="#C0C0C0" rowspan="2"></td>
					<td width="599" height="20"><img src="/images/image2_sub_gate.gif" width="599" height="20"></td>
				</tr>
				<tr>
					<td width="599" height="28" align="right" valign="bottom">HOME &gt; 連絡場所&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td width="200" height="70" rowspan="3" valign="top"><img src="/images/title_contact_gate_j.gif" width="200" height="28"></td>
					<td width="1" bgcolor="#C0C0C0" rowspan="3"></td>
					<td width="599" height="10"></td>
				</tr>
				<tr>
					<td width="599" height="1" bgcolor="#C0C0C0"></td>
				</tr>
				<tr>
					<td width="599" height="59" align="center" valign="bottom"><img src="/images/bar_contact_gate_j.gif" width="580" height="48"></td>
				</tr>
				<tr>
					<td width="200" align="center" valign="top">
						<table cellSpacing="0" cellPadding="0" width="180" border="0">
							<tr>
								<td width="180" height="20"></td>
							</tr>
						</table>
					</td>
					<td width="1" bgcolor="#C0C0C0"></td>
					<td width="599" align="center">
									<table cellSpacing="0" cellPadding="0" width="538" bgColor="#ffffff" border="0">
										<tr>
											<td height="26"></td>
										</tr>
										<tr>
											<td class="text">
											
											<table cellSpacing="2" cellPadding="5" width="100%" bgColor="#ffffff" border="0">
											<tr bgcolor="#595959">
												<td align="center" colspan="2"><font color="#FFFFFF"><b>株式会社コリアメディア (<a href="http://www.korea-m.com" target="_new" Class="paper_a">www.korea-m.com</a>)</b></font></td>
											</tr>
											<tr bgcolor="#E6E6E6">
												<td align="center" width="20%">TEL/FAX</td>
												<td width="80%">TEL : 81-03-3814-4410 / FAX : 81-03-3814-4420</td>
											</tr>
											<tr bgcolor="#E6E6E6">
												<td align="center">E-mail</td>
												<td><a href="mailto:help@korea-m.com">help@korea-m.com</a></td>
											</tr>
											<tr bgcolor="#E6E6E6">
												<td align="center">住所</td>
												<td>〒112-8603 / 東京都文京区白山4-33-14</td>
											</tr>
											<tr bgcolor="#E6E6E6">
												<td align="center">略図</td>
												<td>
												都營地下鉄三田線 白山駅下車 A1出口 (小石川植物園口方面)<br>
												徒步3分白山通り沿い<br><br>
												<img src="/images/map_contact.gif" width="380" height="220">
												</td>
											</tr>
											</table><a id="p"></a><br>
											都營地下鉄三田線 白山駅下車 A1出口 (小石川植物園口方面)<br>
												徒步3分白山通り沿い<br><br>
											
											<table cellSpacing="0" cellPadding="0" width="100%" bgColor="#ffffff" border="0">
												<tr>
													<td>
														<iframe src='/Gate/ContactWrite_jpn.aspx?WritePage=KPMjpn/Gate' scrolling=no width="538" height="370" frameborder=0></iframe>
													</td>
												</tr>
											</table><br>
											
											</td>
										</tr>
										<tr>
											<td height="26"></td>
										</tr>
									</table>
					</td>
				</tr>
				<tr>
					<td width="800" colSpan="3" height="100%" bgcolor="#C0C0C0" valign="top" align="right">
						<!-- 하단 --><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
