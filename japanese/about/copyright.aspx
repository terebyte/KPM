<%@ Page Language="vb" AutoEventWireup="false" Codebehind="copyright.aspx.vb" Inherits="KPPress.copyright_jpn" %>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="/japanese/include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="/japanese/include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="/japanese/include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Right" Src="/japanese/include/Right.ascx" %>
<HTML>
	<HEAD>
		<title>KPM - Japanese</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/japanese/include/main.css" type="text/css" rel="stylesheet">
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
								<td colSpan="2" height="26" bgColor="#d2e2d4">&nbsp;&nbsp;<b>著作権公示</b></td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="35"></td>
							</tr>
							<tr>
								<td colSpan="2" width="568" align="center">
									<table cellSpacing="0" cellPadding="0" width="538" bgColor="#ffffff" border="0">
										<tr>
											<td class="text">
1.コリアメディアがＫＰＭを通じて提供する記事、写真、動画などのすべての情報はコリアメディアの事前承認なしに複製、配布、送信、展示、引用、転載することはできません。<br><br>

2.コリアメディアがＫＰＭを通じて提供する記事、写真、動画などの情報を歪曲、変造すること、契約書に記載された目的以外の用途に利用することで発生した問題については該当機関にその責任があります。<br><br>

3.コリアメディアがＫＰＭを通じて提供する記事、写真、動画などの情報をＣＤなどの電子媒体を利用して保存するとか、有料または無料で配布することはできません。<br><br>

4.コリアメディアの事前承認なしにＫＰＭを通じて提供する記事、写真、動画などの情報の中から一つの記事を超過した随意の記事をリンクして羅列することはできません。リンクを許容する一つの記事だとしても記事本文の一部または全部を掲示することはできません。<br><br>

5.コリアメディアがＫＰＭを通じて提供する記事、写真、動画などの情報を引用、転載する場合にはその出処を「原文報道した媒体/ＫＰＭ」と必ず銘記しなければなりません。<br><br>
											</td>
										</tr>
										<tr>
											<td height="26"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="15"></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<A class="branch_a" href="javascript:history.back();">← Back</A></td>
								<td align="right"><A class="branch_a" href="#t">↑ Top</A>&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="15"></td>
							</tr>
						</table>
						<!-- 메인 끝 -->
					</td>
					<td width="1" rowspan="3" bgcolor="#929292"></td>
					<td vAlign="top" align="center" width="228">
						<!-- 오늘쪽 메뉴 --><uc1:right id="Right1" runat="server"></uc1:right></td>
				</tr>
				<tr>
					<td colSpan="5" height="8"></td>
				</tr>
				<tr>
					<td colSpan="5">
						<!-- 하단 --><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>