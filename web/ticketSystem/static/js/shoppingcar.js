	function update(obj){
		alert("修改事件");
		var esc_number=$(".number"+obj+"").val();
		location.href="ShoppingcarAction_update?esc_id="+obj+"&esc_number="+esc_number;
	}
	function deletecar(obj){
		alert("删除时间")
		location.href="ShoppingcarAction_delete?esc_id="+obj
	}
	
		function paymoney() {
			alert("结算")
			var id=document.getElementsByName("ep_id")
			var arraylist=new Array();
			for(var i=0;i<id.length;i++){
				arraylist.push(id[i].value);
			}
			var p=document.getElementsByTagName("span");
			var num=document.getElementsByName("number");
			var arraynum=new Array();
			for(var i=0;i<num.length;i++){
				arraynum.push(num[i].value)
			}
			var money=0.0;
			for(var i=0;i<p.length;i++){
				//总金额
				money+=p[i].innerText.substring(1,p[i].innerText.length)*1;
			}
			location.href="ShoppingcarAction_order?money="+money+"&arraylist="+arraylist+"&arraynum="+arraynum
	}