<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../static/css/common.css">
  <link rel="stylesheet" href="../static/css/style1.css">
  <script type="text/javascript" src="../static/js/jquery.min.js"></script>
  <script type="text/javascript" src="../static/js/jquery.SuperSlide.js"></script>
  <script type="text/javascript">
  $(function(){
      $(".sideMenu").slide({
         titCell:"h3", 
         targetCell:"ul",
         defaultIndex:0, 
         effect:'slideDown', 
         delayTime:'500' , 
         trigger:'click', 
         triggerTime:'150', 
         defaultPlay:true, 
         returnDefault:false,
         easing:'easeInQuint',
         endFun:function(){
              scrollWW();
         }
       });
      $(window).resize(function() {
          scrollWW();
      });
  });
  function scrollWW(){
    if($(".side").height()<$(".sideMenu").height()){
       $(".scroll").show();
       var pos = $(".sideMenu ul:visible").position().top-38;
       $('.sideMenu').animate({top:-pos});
    }else{
       $(".scroll").hide();
       $('.sideMenu').animate({top:0});
       n=1;
    }
  } 

var n=1;
function menuScroll(num){
  var Scroll = $('.sideMenu');
  var ScrollP = $('.sideMenu').position();
  /*alert(n);
  alert(ScrollP.top);*/
  if(num==1){
     Scroll.animate({top:ScrollP.top-38});
     n = n+1;
  }else{
    if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
    if (ScrollP.top<0) {
      Scroll.animate({top:38+ScrollP.top});
    }else{
      n=1;
    }
    if(n>1){
      n = n-1;
    }
  }
}
  </script>
  <title>后台首页</title>
</head>
<body>
    <div class="top">
      <div id="top_t">
        <div id="logo" class="fl"></div>
        <div id="photo_info" class="fr">
          <div id="photo" class="fl">
            <a href="#"><img src="../static/images/a.png" alt="" width="60" height="60"></a>
          </div>
          <div id="base_info" class="fr">
            <div class="help_info">
              <a href="1" id="hp">&nbsp;</a>
              <a href="2" id="gy">&nbsp;</a>
              <a href="../../login.html" id="out">&nbsp;</a>
            </div>
            <div class="info_center">
              管理员，欢迎您
            </div>
          </div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置：</div>
      </div>
    </div>
    <form id="form" name="myform" action="">
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
          <h3>用户管理</h3>
          <ul>
            <li><a href="/ticketSystem/template/checkUsers.do" target="right">查看用户</li>
             <li><a href="add.ftl" target="right">添加用户</li>
          </ul>
          <h3> 车次管理</h3>
          <ul>
            <li><a href="addTrain.ftl" target="right">增加车次</li>
            <li><a href="/ticketSystem/template/checkTrains.do" target="right">查看车次</li>
          </ul>
          <h3>订票管理</h3>
          <ul>
            <li><a href="addSeat.ftl" target="right">增加订单</li>
            <li><a href="/ticketSystem/template/checkSeats.do" target="right">查看订票</li>
            <li><a href="/ticketSystem/template/orderSeat.do" target="right">查询订票</li>
            <li><a href="myOrder.ftl" target="right">我的订单</li>
          </ul>
          <h3>新闻管理</h3>
          <ul>
            <li></li>
            <li>增加新闻</li>
            <li>删除新闻</li>
            <li>修改新闻</li>
            <li  class="on">查询新闻</li>
          </ul>
          <h3> 导航菜单</h3>
          <ul>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
          </ul>
          <h3> 导航菜单</h3>
          <ul>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
            <li>导航菜单</li>
          </ul>
 
 
 

       </div>
    </div>
    </form>
    <div class="main">
       <iframe name="right" id="rightMain" src="main.ftl" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
    </div>
    <div class="bottom">
      <div id="bottom_bg">版权</div>
    </div>
    <div class="scroll">
          <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
          <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
    </div>
</body>
<script>
/*  function checkUsers() {
    var myform = document.getElementById("form");
    myform.action = "checkUsers.do";
    myform.submit();
  }
  function checkTrains() {
    var myform = document.getElementById("form");
    myform.action = "checkTrains.do";
    myform.submit();
  }*/
</script>
</html>
   
 