// JavaScript Document
window.onload = function(){
	showChater();
	scrollChater();
}
window.onscroll = scrollChater;
window.onresize = scrollChater;

function FocusItem(obj)
{
	obj.parentNode.parentNode.className = "current";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	msgBox.innerHTML = "";
	msgBox.className = "";
}

function CheckItem(obj)
{		 //ID
		var reg=/^[a-zA-Z0-9_-]{4,16}$/;
		//name
    	var reg1=/^[\u4E00-\u9FA5A-Za-z0-9_]{4,16}$/;
    	//密码
    	var reg2=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
    	//电话号码
    	var reg5=/^((1[3-8][0-9])+\d{8})$/;
    	//电子邮箱
    	var reg4=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
    	//身份证
    	var reg3=/^\d{15}|\d{18}$/;
    	obj.parentNode.parentNode.className = "";
	    var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	switch(obj.name) {
		case "name":
			if(obj.value == "") {
			msgBox.innerHTML = "姓名不能为空";
			msgBox.className = "error";
			return false;
		}
		break;
		case "username":
			if(obj.value == "") {
				msgBox.innerHTML = "用户名不能为空";
				msgBox.className = "error";
				return false;
			}else if(!reg1.test(obj.value)){
				msgBox.innerHTML = "用户名格式必须4到16位（字母，数字，下划线，汉字）";
				msgBox.className = "error";
				return false;
			}
			break;
		case "password":
			if(obj.value == "") {
				msgBox.innerHTML = "密码不能为空";
				msgBox.className = "error";
				return false;
			}else if(!reg2.test(obj.value)){
				msgBox.innerHTML = "密码必须包含大小写字母和数字的组合，不能使用特殊字符，长度在6-10之间";
				msgBox.className = "error";
				return false;
			}
			break;
		case "rePassWord":
			if(obj.value == "") {
				msgBox.innerHTML = "确认密码不能为空";
				msgBox.className = "error";
				return false;
			} else if(obj.value != document.getElementById("password").value) {
				msgBox.innerHTML = "两次输入的密码不相同";
				msgBox.className = "error";
				return false;
			}
			break;
		case "sex":
			if(obj.value == "") {
				msgBox.innerHTML = "性别不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
		case "birthday":
			if(obj.value == "") {
				msgBox.innerHTML = "生日不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
		case "mobile":
			if(obj.value == "") {
				msgBox.innerHTML = "手机号码不能为空";
				msgBox.className = "error";
				return false;
			}else if(!reg5.test(obj.value)) {
				msgBox.innerHTML = "电话号码格式不正确";
				msgBox.className = "error";
				return false;
			}
			break;
		case "email":
			if(obj.value == "") {
				return true;
			}else if(!reg4.test(obj.value)) {
				msgBox.innerHTML = "邮箱格式不正确";
				msgBox.className = "error";
				return false;
			}
			break;
		case "identityCode":
		if(obj.value == "") {
			msgBox.innerHTML = "身份证号码不能为空";
			msgBox.className = "error";
			return false;
		}else if(!reg3.test(obj.value)) {
			msgBox.innerHTML = "身份证格式不正确";
			msgBox.className = "error";
			return false;
		}
		break;
	}
	return true;
}

function checkForm(frm)
{
	var els = frm.getElementsByTagName("input");
	for(var i=0; i<els.length; i++) {
		if(typeof(els[i].getAttribute("onblur")) == "function") {
			if(!CheckItem(els[i])) return false;
		}
	}
	return true;
}

function showChater()
{
	var _chater = document.createElement("div");
	_chater.setAttribute("id", "chater");
	var _dl = document.createElement("dl");
	var _dt = document.createElement("dt");
	var _dd = document.createElement("dd");
	var _a = document.createElement("a");
	_a.setAttribute("href", "#");
	_a.onclick = openRoom;
	_a.appendChild(document.createTextNode("在线聊天"));
	_dd.appendChild(_a);
	_dl.appendChild(_dt);
	_dl.appendChild(_dd);
	_chater.appendChild(_dl);
	document.body.appendChild(_chater);
}

function openRoom()
{
	window.open("chat-room.html","chater","status=0,scrollbars=0,menubar=0,location=0,width=600,height=400");
}

function scrollChater()
{
	var chater = document.getElementById("chater");
	var scrollTop = document.documentElement.scrollTop;
	var scrollLeft = document.documentElement.scrollLeft;
	chater.style.left = scrollLeft + document.documentElement.clientWidth - 92 + "px";
	chater.style.top = scrollTop + document.documentElement.clientHeight - 25 + "px";
}

function inArray(array, str)
{
	for(a in array) {
		if(array[a] == str) return true;
	}
	return false;
}

function setCookie(name,value)
{
  var Days = 30;
  var exp  = new Date();
  exp.setTime(exp.getTime() + Days*24*60*60*1000);
  document.cookie = name + "="+ escape(value) +";expires="+ exp.toGMTString();
}

function getCookie(name)
{
  var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
  if(arr != null) return unescape(arr[2]); return null;
}

function delCookie(name)
{
  var exp = new Date();
  exp.setTime(exp.getTime() - 1);
  var cval=getCookie(name);
  if(cval!=null) document.cookie=name +"="+cval+";expires="+exp.toGMTString();
}

function goBuy(id, price)
{
	var newCookie = "";
	var oldCookie = getCookie("product");
	if(oldCookie) {
		if(inArray(oldCookie.split(","), id)) {
			newCookie = oldCookie;
		} else {
			newCookie = id + "," + oldCookie;
		}
	} else {
		newCookie = id;
	}
	setCookie("product", newCookie);
	location.href = "shopping.html";
}

function delShopping(id)
{
	var tr = document.getElementById("product_id_"+ id);
	var oldCookie = getCookie("product");
	if(oldCookie) {
		var oldCookieArr = oldCookie.split(",");
		var newCookieArr = new Array();
		for(c in oldCookieArr) {
			var cookie = parseInt(oldCookieArr[c]);
			if(cookie != id) newCookieArr.push(cookie);
		}
		var newCookie = newCookieArr.join(",");
		setCookie("product", newCookie);
	}
	if(tr) tr.parentNode.removeChild(tr);
}

function reloadPrice(id, status)
{
	var price = document.getElementById("price_id_" + id).getElementsByTagName("input")[0].value;
	var priceBox = document.getElementById("price_id_" + id).getElementsByTagName("span")[0];
	var number = document.getElementById("number_id_" + id);
	if(status) {
		number.value++;
	} else {
		if(number.value == 1) {
			return false;
		} else {
			number.value--;
		}
	}
	priceBox.innerHTML = "￥" + price * number.value;
}