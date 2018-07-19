
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="../static/css/Style.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="../static/js/public.js"></script>
		<script type="text/javascript" src="../static/js/jquery-1.8.3.js"></script>
	</HEAD>
	<script type="text/javascript">
/* 	var userId=null;
	$(function(){
		$("#deleteV").live('click',function(){
			 userId = $(this).parent().parent().children("td:first-child").text();
			 	if(confirm("确认要删除吗？")){
			 		$.ajax({
						type:"post",
						url:"delete.do?userId="+userId,
					})
					$(this).parent().parent().remove();
			 	}
				
			})
			
		}); */
	</script>
	
	<body>
		<br>
		<form id="Form1" name="Form1" action="" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>座位列 表</strong>
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
										id
									</td>
									<td align="center" width="5%">
										车厢号
									</td>
									<td align="center" width="5%">
										座位类型
									</td>
									<td align="center" width="5%">
										座位数量
									</td>
									<td width="5%" align="center">
										座位价格
									</td>
									<td width="5%" align="center">
										修改
									</td>
									<td width="5%" align="center">
										查看
									</td>
								</tr>
									<#--<c:forEach items="${userList}" var="User">-->
								<tr>
								  <#--<td>${User.userId}</td>-->
								  <#--<td>${User.name}</td>-->
								  <#--<td>${User.username}</td>-->
								  <#--<td>${User.password}</td>-->
								  <#--<td>${User.sex}</td>-->
								  <#--<td>${User.birthday}</td>-->
								  <#--<td>${User.address}</td>-->
								  <#--<td>${User.identityCode}</td>-->
								  <#--<td>${User.mobile}</td>-->
								  <#--<td>${User.email}</td>-->
								  <#--<td>${User.role}</td>-->
								  <td align="center" style="HEIGHT: 22px">
									<a href="/update.do?userId=${User.userId}">
										<img src="../static/images/i_edit.gif" border="0" style="CURSOR: hand">
									</a>
								</td>
								<td align="center" style="HEIGHT: 22px">
									<a href="">
										<img src="../static/images/button_view.gif" border="0" style="CURSOR: hand">
									</a>
								</td>
								<td align="center" style="HEIGHT: 22px">
									<a href="/delete.do?userId=${User.userId}">
										<img src="../static/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
									</a>
								</td>
							 </tr>
						    <#--</c:forEach>-->
						
							</table>
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
										<button type="submit" id="search" name="search" value="&#26597;&#35810;" class="button_view">
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


