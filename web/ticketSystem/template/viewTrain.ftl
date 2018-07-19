<#--<%@ page import="com.buyticket.bean.po.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>-->
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="../static/css/Style.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../static/js/public.js"></script>
	</HEAD>
	<body>
		<form id="userAction_save_do" name="Form1" action="" method="post">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>查看列车信息</STRONG>
						</strong>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						列车号：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						${train.getTrain_tno()}
					</td>

				</tr>
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						始发地：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						${train.getStart()}
					</td>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						目的地：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						${train.getEnd()}
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						出发时间：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						${train.getStartTime()}
					</td>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						到站时间：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						${train.getEndTime()}
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						总票数：
					</td>
					<td class="ta_01" bgColor="#ffffff" colSpan="3">
						${train.getTotle()}
					</td>
				</tr>
				<TR>
					<td align="center" colSpan="4" class="sep1">
						<img src="../static/images/shim.gif">
					</td>
				</TR>
				<TR>
					<td class="ta_01" style="WIDTH: 100%" align="right" bgColor="#f5fafe" colSpan="4">
						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</TR>
			</table>
		</form>
	</body>
</HTML>