<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="../static/css/style.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../static/js/public.js"></script>
		<script language="javascript" src="../static/js/check.js"></script>
		<!-- 日期插件，使用jquery -->
		<script type="text/javascript" src="../static/jquery/jquery-1.4.2.js"></script>
		<link rel="stylesheet" href="../static/jquery/jquery.datepick.css" type="text/css">
		<script type="text/javascript" src="../static/jquery/jquery.datepick.js"></script>
		<script type="text/javascript" src="../static/jquery/jquery.datepick-zh-CN.js"></script>
	</HEAD>
	<script type="text/javascript">
		$(document).ready(function(){
			//使用class属性处理  'yy-mm-dd' 设置格式"yyyy/mm/dd"
			$('#birthday').datepick({dateFormat: 'yy-mm-dd'}); 
		});
	</script>
	<body>
		<form id="userAction_save_do" name="myform" action="addUser.do" method="post">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加用户</STRONG>
						</strong>
					</td>
				</tr>
				
				<tr>
					
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						登录名：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="username"  id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						 密码：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="password"  id="logonPwd"/>
					</td>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						用户姓名：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="name" id="userAction_save_do_userName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						性别：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="radio" name="sex" id="sex男" value="男"/><label for="sex男">男</label>
						<input type="radio" name="sex" id="sex女" value="女"/><label for="sex女">女</label>

					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						出生日期：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="birthday" size="20"  readonly="readonly" id="birthday"/>
					</td>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						手机号码：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="mobile"  id="mobile"/>
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						身份证号
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="identity_code" id="identity_code"/>
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						地址
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="address"  id="address"/>
					</td>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						身份：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="role"  id="role"/>
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						邮件
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="email"  id="email"/>
					</td>
				</tr>
				<TR>
					<td align="center" colSpan="4" class="sep1">
						<img src="../static/images/shim.gif">
					</td>
				</TR>


				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" onclick="myform.submit()" name="submit" value="&#30830;&#23450;" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="&#37325;&#32622;" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>