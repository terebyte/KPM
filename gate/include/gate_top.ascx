<%@ Control Language="vb" AutoEventWireup="false" Codebehind="gate_top.ascx.vb" Inherits="KPPress.gate_top" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="/include/main.js"></script>
<table cellSpacing="0" cellPadding="0" width="600" bgColor="#ffffff" border="0">
	<tr>
		<td width="48" height="70" bgcolor="#093744"></td>
		<td width="84" height="70"><a href="/gate/gate_intro.aspx" onmouseover="MM_swapImage('m1','','/images/menu_intro02_gate.gif',1)"
				onfocus="this.blur()" onmouseout="MM_swapImgRestore()"><img src="/images/menu_intro01_gate.gif" width="84" height="70" border="0" name="m1"></a></td>
		<td width="74" height="70"><a href="/gate/gate_guide.aspx" onmouseover="MM_swapImage('m2','','/images/menu_guide02_gate.gif',1)"
				onfocus="this.blur()" onmouseout="MM_swapImgRestore()"><img src="/images/menu_guide01_gate.gif" width="74" height="70" border="0" name="m2"></a></td>
		<td width="100" height="70"><a href="/gate/gate_media.aspx" onmouseover="MM_swapImage('m3','','/images/menu_media02_gate.gif',1)"
				onfocus="this.blur()" onmouseout="MM_swapImgRestore()"><img src="/images/menu_media01_gate.gif" width="100" height="70" border="0" name="m3"></a></td>
		<td width="78" height="70"><a href="/gate/gate_qna.aspx" onmouseover="MM_swapImage('m4','','/images/menu_qna02_gate.gif',1)"
				onfocus="this.blur()" onmouseout="MM_swapImgRestore()"><img src="/images/menu_qna01_gate.gif" width="78" height="70" border="0" name="m4"></a></td>
		<td width="66" height="70"><a href="/gate/gate_contact.aspx" onmouseover="MM_swapImage('m5','','/images/menu_contact02_gate.gif',1)"
				onfocus="this.blur()" onmouseout="MM_swapImgRestore()"><img src="/images/menu_contact01_gate.gif" width="66" height="70" border="0" name="m5"></a></td>
		<td width="150" height="70" bgcolor="#093744" align="center">
			<select onchange="javascript:document.location =this.value" name="lang">
				<option value="/gate/gate_main.aspx" selected>조선어/朝鮮語</option>
				<option value="/gate/gate_main_jpn.aspx">日本語/일본어</option>
			</select>
		</td>
	</tr>
</table>
