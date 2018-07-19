<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">

    <link rel="stylesheet" href="../static/css/login.css">
    <script type="text/javascript" src="../static/js/jquery-1.8.3.js"></script>
	<title>后台登陆</title>
</head>
<body>
	<div id="login_top">
		<div id="welcome">
			欢迎使用Low版12306高铁订票系统
		</div>
		<div id="back">
			<a href="#">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp;
			<a href="#">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<form id="form" name="myform" action="" method="post">
					<div id="login_tip">
						用户登录
					</div>
					<div><input type="text" class="id" name="username" id="inp_id"></div>
					<div><input type="password" class="pwd" name="password" id="inp_pwd"></div>
					<div id="btn_area">
						<input type="button" name="regist" class="sub_btn" value="注&nbsp;&nbsp;册" onclick="registUser()">&nbsp;&nbsp;
						<input type="submit" name="submit" class="sub_btn" value="登&nbsp;&nbsp;录" onclick="loginUser()">&nbsp;&nbsp;
						<input type="text" class="verify" name="verify">
						<img id="imgVer" src="image.jsp" alt="" width="80" height="40" onclick="document.getElementById('imgVer').src='ticketSystem/image.ftl?t='+Math.random();">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="login_bottom">
		版权所有
	</div>
	<script type="text/javascript">
		function registUser(){
            /* 	var id = document.getElementById("inp_id").value;
    var pwd = document.getElementById("inp_pwd").value; */
       location.href = "register.html"
		}
		function loginUser() {
		    var myform =  document.getElementById("form");
				myform.action = "/ticketSystem/template/login.do";
    }
	</script>
</body>
</html>