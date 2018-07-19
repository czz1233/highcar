<!doctype html>
<html lang="zh-CN">
<head>
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
  <title>欢迎来到Low版12306高铁订票系统</title>
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
             欢迎您
            </div>
          </div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置：</div>
      </div>
    </div>
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
          <h3>购票</h3>
          <ul>
            <li><a href="" target="right">查看车次</li>
          </ul>
          <h3>个人中心</h3>
          <ul>
            <li><a href="" target="right">个人信息</li>
            <li><a href="" target="right">历史订单</li>
            <li><a href="" target="right">退票</li>
         </ul>
          <h3>新闻管理</h3>
          <ul>
            <li  class="on">查看新闻</li>
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

</html>
   
 