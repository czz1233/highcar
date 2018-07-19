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
		<form id="Form1" name="Form1" action="quaryTrain.do" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>车次列表</strong>
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
										列车号
									</td>
									<td align="center" width="5%">
										始发地
									</td>
									<td align="center" width="5%">
										目的地
									</td>
									<td align="center" width="5%">
										出发时间
									</td>
									<td width="5%" align="center">
										到达时间
									</td>
									<td width="5%" align="center">
										查看
									</td>
                                    <td width="5%" align="center">
									    修改
                                    </td>
									<td width="5%" align="center">
										删除
									</td>
								</tr>
							<#list trainList as t>
								<tr>
								  <td>${t.getTrain_tno()}</td>
								  <td>${t.getStart()}</td>
								  <td>${t.getEnd()}</td>
								  <td>${t.getStartTime()}</td>
								  <td>${t.getEndTime()}</td>
								<td align="center" style="HEIGHT: 22px">
									<a href="viewTrain.do?id=${t.getId()}">
										<img src="../static/images/button_view.gif" border="0" style="CURSOR: hand">
									</a>
								</td>
                                  <td align="center" style="HEIGHT: 22px">
                                    <a href="jumpEditTrain.do?id=${t.getId()}">
                                      <img src="../static/images/i_edit.gif" border="0" style="CURSOR: hand">
                                    </a>
                                  </td>
								<td align="center" style="HEIGHT: 22px">
									<a href="deleteTrain.do?id=${t.getId()}">
										<img src="../static/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
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
										列车号
									</td>
									<td class="ta_01" bgColor="#ffffff">
										<input type="text" name="train_tno" size="15" value="" id="train_tno" class="bg"/>
									</td>
									<tr>
									<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
										始发地
									</td>
									<td class="ta_01" bgColor="#ffffff">
										<input type="text" name="start" size="15" value="" id="start" class="bg"/>
									</td>
									<tr>
									<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
										目的地
									</td>
									<td class="ta_01" bgColor="#ffffff">
										<input type="text" name="end" size="15" value="" id="end" class="bg"/>
									</td>
									<tr>
									<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
										出发时间
									</td>
									<td class="ta_01" bgColor="#ffffff">
										<input type="text" name="startTime" size="15" value="" id="startTime" class="bg"/>
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
										<button type="submit" id="search" name="search" onclick="Form1.submit()" value="&#26597;&#35810;" class="button_view">
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

