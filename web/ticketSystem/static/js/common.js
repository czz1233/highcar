$(function(){
	/* 通过全局变量传递${pageContext.request.contextPath} */
	var PageContext = $("#PageContext").val();
	console.log(PageContext);
	
	var username = $("#username").text();
	if(username!="欢迎用户："){
		$("#log").css('display','none');
		$("#reg").css('display','none');
		$("#username").css('display','block');
	}
	
	
	/* 页面一开始加载 一级分类 */
	$.ajax({    
		 type: "POST",
		 url: "ProductCategoryAction_query",
		 success: function(objs){
			for(var i=0;i<objs.length;i++){
				$(".box dl").append("<dt id='"+objs[i].epcid+"'>"+objs[i].epcname+"</dt>");
			}
		 }
	})
	
	/* 页面加载，初始化所有商品 */
	$.ajax({    
		type: "POST",
		url: "ProductAction_queryAll",
		success: function(objs){
			allLists = objs.length;
			for(var i=0;i<objs.length;i++){
				//console.log("${pageContext.request.contextPath}/upload/"+objs[i].epfilename);
				$("#proClear").append("<li><dl><dt><a href='ProductAction_selectByEpid?epid="+objs[i].epid+"' target='_blank'><img src='"+PageContext+"/upload/"+objs[i].epfilename+"' /></a></dt><dd class='title'><a href='ProductAction_selectByEpid?epid="+objs[i].epid+"' target='_blank'>"+objs[i].epname+"</a></dd><dd class='price'>"+objs[i].epprice+"</dd></dl></li>");
				//$("#proClear li dl dd").css('display','block');
			}
	 	}
	})
	
	/* 分类的鼠标悬停样式 */
	$(".box dl dd").live('mouseover',function(){
		$(this).css("background-color","#ccc");
	}).live('mouseout',function(){
		$(this).css("background-color","white");
	})
	

	$(".box dl dt").live('click',function(){
		var ss = $(this).find("dd");
		if(ss.length==0){
			
			/* 显示二级分类 */
			var epcid = $(this).attr("id");
			var index = $(this).index();
			$.ajax({    
				 type: "POST",
				 url: "ProductCategoryAction_queryByPid",
				 data:{
					 key:epcid
			     }, 
			     dataType:"json",
				 success: function(objs){
					for(var i=0;i<objs.length;i++){
						$(".box dl dt:eq("+index+")").append("<dd id='"+objs[i].epcchildid+"'>"+objs[i].epcchildname+"</dd>");
					}
					//ss.css('display','block');
					//console.log("刷新时二级菜单："+ss.css('display'));
				 }
			})
		}else{
			ss.toggle();
			
		}
	})
	
	var allPages;//总页数
	var listByEpcidEpchildid = null;//根据一二级分类查询出的数据
	var indexPage = 1;//控制下标
	$(".box dl dt dd").live('mouseover',function(){
		$(this).parent().parent().parent().parent().next().find("#proClear").find("li").parent().html("");
		var epcid = $(this).parent().attr("id");
		var epcchildid = $(this).attr("id");
		$.ajax({    
			type: "POST",
			url: "ProductAction_queryByEpcidEpcchildid",
			data:{
				"epcid":epcid,
				"epcchildid":epcchildid
			},
			dataType:"json", 
			success: function(objs){
				allPages = Math.floor((objs.length-1)/2)+1;
				console.log(objs);
				listByEpcidEpchildid = objs;
				var currentCount = indexPage*2-1;//当前起始记录数
				if(indexPage < allPages){//如果当前页码小于等于总页数
					for(var i=currentCount-1;i<(currentCount-1)+2;i++){
						$("#proClear").append("<li><dl><dt><a href='ProductAction_selectByEpid?epid="+objs[i].epid+"' target='_blank'><img src='"+PageContext+"/upload/"+objs[i].epfilename+"' /></a></dt><dd class='title'><a href='ProductAction_selectByEpid?epid="+objs[i].epid+"' target='_blank'>"+objs[i].epname+"</a></dd><dd class='price'>"+objs[i].epprice+"</dd></dl></li>");
					}
				}else{
					for(var i=currentCount-1;i<objs.length;i++){
						$("#proClear").append("<li><dl><dt><a href='ProductAction_selectByEpid?epid="+objs[i].epid+"' target='_blank'><img src='"+PageContext+"/upload/"+objs[i].epfilename+"' /></a></dt><dd class='title'><a href='ProductAction_selectByEpid?epid="+objs[i].epid+"' target='_blank'>"+objs[i].epname+"</a></dd><dd class='price'>"+objs[i].epprice+"</dd></dl></li>");
					}
				}
		 	}
		})
		
		/* 根据总页数生成页码 */

		$(".clearfix li").css('display','block');//显示上下页
		
		console.log("indexPage:   "+indexPage);
		$(".clearfix li #forwardPage").live('click',function(){
			if(indexPage == 1){
				$(this).css("cursor", "default");
	            $(this).attr('href', '#'); 
			}else{
				indexPage--;
				var currentCount = indexPage*2-1;
				$("#proClear").html("");
				for(var i=currentCount-1;i<(currentCount-1)+2;i++){
					$("#proClear").append("<li><dl><dt><a href='ProductAction_selectByEpid?epid="+listByEpcidEpchildid[i].epid+"' target='_blank'><img src='"+PageContext+"/upload/"+listByEpcidEpchildid[i].epfilename+"' /></a></dt><dd class='title'><a href='ProductAction_selectByEpid?epid="+listByEpcidEpchildid[i].epid+"' target='_blank'>"+listByEpcidEpchildid[i].epname+"</a></dd><dd class='price'>"+listByEpcidEpchildid[i].epprice+"</dd></dl></li>");
				}
			}
			
		});
		$(".clearfix li #nextPage").live('click',function(){
			if(indexPage == allPages){
				$(this).css("cursor", "default");
	            $(this).attr('href', '#'); 
			}else{
				indexPage++;
				var currentCount = indexPage*2-1;
				$("#proClear").html("");
				if(indexPage < allPages){//如果当前页码小于等于总页数
					for(var i=currentCount-1;i<(currentCount-1)+2;i++){
						$("#proClear").append("<li><dl><dt><a href='ProductAction_selectByEpid?epid="+listByEpcidEpchildid[i].epid+"' target='_blank'><img src='"+PageContext+"/upload/"+listByEpcidEpchildid[i].epfilename+"' /></a></dt><dd class='title'><a href='ProductAction_selectByEpid?epid="+listByEpcidEpchildid[i].epid+"' target='_blank'>"+listByEpcidEpchildid[i].epname+"</a></dd><dd class='price'>"+listByEpcidEpchildid[i].epprice+"</dd></dl></li>");
					}
				}else{
					for(var i=currentCount-1;i<listByEpcidEpchildid.length;i++){
						$("#proClear").append("<li><dl><dt><a href='ProductAction_selectByEpid?epid="+listByEpcidEpchildid[i].epid+"' target='_blank'><img src='"+PageContext+"/upload/"+listByEpcidEpchildid[i].epfilename+"' /></a></dt><dd class='title'><a href='ProductAction_selectByEpid?epid="+listByEpcidEpchildid[i].epid+"' target='_blank'>"+listByEpcidEpchildid[i].epname+"</a></dd><dd class='price'>"+listByEpcidEpchildid[i].epprice+"</dd></dl></li>");
					}
				}
			}
		});
	})
	
	
})