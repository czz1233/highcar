<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="../css/Style.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="../js/public.js"></script>
		<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
	</HEAD>

	<body>
		<br>
		<form id="Form1" name="Form1" action="quaryUser.do" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>用 户 列 表</strong>
						</TD>
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 0px solid;  BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: separate ; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style=" FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="5%">
										ID
									</td>
									<td align="center" width="5%">
										姓名
									</td>
									<td align="center" width="5%">
										用户名
									</td>
									<td align="center" width="5%">
										密码
									</td>
									<td width="5%" align="center">
										性别
									</td>
									<td width="5%" align="center">
										出生日期
									</td>
									<td width="5%" align="center">
										地址
									</td>
									<td width="5%" align="center">
										身份证号
									</td>
									<td width="5%" align="center">
										手机号码
									</td>
									<td width="5%" align="center">
										电子邮箱
									</td>
									<td width="5%" align="center">
										身份
									</td>
									<td width="5%" align="center">
										修改
									</td>
									<td width="5%" align="center">
										查看
									</td>
									<td width="5%" align="center">
										删除
									</td>
								</tr>
									<#list userList as u>


								<tr>
								  <td>${u.getUser_id()}</td>
								  <td>${u.getName()}</td>
								  <td>${u.getUsername()}</td>
								  <td>${u.getPassword()}</td>
								  <td>${u.getSex()}</td>
								  <td>${u.getBirthday()}</td>
								  <td>${u.getAddress()}</td>
								  <td>${u.getIdentity_code()}</td>
								  <td>${u.getMobile()}</td>
								  <td>${u.getEmail()}</td>
								  <td>${u.getRole()}</td>
								  <td align="center" style="HEIGHT: 22px">
									<a href="updateUser.do?userId=${u.getUser_id()}">
										<img src="../images/i_edit.gif" border="0" style="CURSOR: hand">
									</a>
								</td>
								<td align="center" style="HEIGHT: 22px">
									<a href="viewUser.do?userId=${u.getUser_id()}">
										<img src="../images/button_view.gif" border="0" style="CURSOR: hand">
									</a>
								</td>
								<td align="center" style="HEIGHT: 22px">
									<a href="deleteUser.do?userId=${u.getUser_id()}">
										<img src="../images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
									</a>
								</td>
							 </tr>
									</#list>
							</table>
						</td>
					</tr>
					
					
					
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>查 询 条 件</strong>
						</td>
					</tr>
					<tr>
						<td>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
								<tr>
									<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
										用户名
									</td>
									<td class="ta_01" bgColor="#ffffff">
										<input type="text" name="userName" value="" size="15"  id="Form1_userName" class="bg"/>
									</td>
									<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
										性别：
									</td>
									<td class="ta_01" bgColor="#ffffff">
										
										<select name="sex" id="sex">
										    <option value="">--选择性别--</option>
										    <option value="男">男</option>
										    <option value="女">女</option>
										</select>

									</td>
								</tr>
								<tr>
									<td width="100" height="22" align="center" bgColor="#f5fafe"
										class="ta_01">
									</td>
									<td class="ta_01" bgColor="#ffffff">
										<font face="宋体" color="red"> &nbsp;</font>
									</td>
									<td align="right" bgColor="#ffffff" class="ta_01"><br><br></td>
									<td align="right" bgColor="#ffffff" class="ta_01">
										<button type="submit" id="search" onclick="Form1.submit()" name="search" value="&#26597;&#35810;" class="button_view">
&#26597;&#35810;
</button>

										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="reset" name="reset" value="&#37325;&#32622;" class="button_view"/>

									</td>
								</tr>
							</table>
						</td>

					</tr>
				</TBODY>
			</table>
		</form>
	</body>
</HTML>

