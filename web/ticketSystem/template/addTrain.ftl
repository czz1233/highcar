<!DOCTYPE html>
<html lang="en">
<HTML>
<meta charset="UTF-8">
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="../static/css/Style.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../static/js/public.js"></script>
		<script language="javascript" src="../static/js/check.js"></script>
		<!-- 日期插件，使用jquery -->
		<script type="text/javascript" src="../static/jquery/jquery-1.4.2.js"></script>
		<link rel="stylesheet" href="../static/jquery/jquery.datepick.css" type="text/css">
		<script type="text/javascript" src="../static/jquery/jquery.datepick.js"></script>
		<script type="text/javascript" src="../static/jquery/jquery.datepick-zh-CN.js"></script>
		<link href="../static/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../static/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	</HEAD>
	
	<!-- <script type="text/javascript">
		$(document).ready(function(){
			//使用class属性处理  'yy-mm-dd' 设置格式"yyyy/mm/dd"
			$('#birthday').datepick({dateFormat: 'yy-mm-dd'}); 
			$('#birthday1').datepick({dateFormat: 'yy-mm-dd'}); 
			
		});
	</script> -->
	<body>
		<form id="userAction_save_do" name="Form1" action="addTrain.do" method="post" >
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加列车信息</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						列车号
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="train_tno" value="" id="train_tno" class="bg"/>
					</td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						始发地
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="start" value="" id="start"/>
					</td>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						目的地
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="end" value="" id="end" class="bg"/>
					</td>
				</tr>
                <tr>
                    <td align="center" bgColor="#f5fafe" class="ta_01">
                        列车总票数
                    </td>
                    <td class="ta_01" bgColor="#ffffff">
                        <input type="text" name="totle" value="" id="totle"/>
                    </td>

                </tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						出发时间
					</td>
					<td class="ta_01" bgColor="#ffffff">
						                <div class="controls input-append date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
						                   	<input type="text" style="margin-top:24px;width:250px;" value="" name="startTime" class="bg"/>
						                   	<span class="add-on" style="margin-top:24px;"><i class="icon-remove"></i></span>
						                   	<span class="add-on" style="margin-top:24px;"><i class="icon-th"></i></span>
						                </div>


    <script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../static/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="../static/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
	
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						到达时间
					</td>
					<td class="ta_01" bgColor="#ffffff">
							
						                <div class="controls input-append date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
						                    <input type="text" style="margin-top:24px;width:250px;" value="" class="bg" name="endTime"/>
						                   	<span class="add-on" style="margin-top:24px"><i class="icon-remove"></i></span>
						                   	<span class="add-on" style="margin-top:24px"><i class="icon-th"></i></span>
						                </div>

   							 
    <script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../static/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="../static/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
				</tr>
				
				

				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" name="submit" value="&#30830;&#23450;" class="button_ok">
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