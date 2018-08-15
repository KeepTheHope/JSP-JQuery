<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>css样式切换</title>
<style type="text/css">
.cls1{
	font-style: italic;
	font-weight: bold;
	}
.cls2{
	border: solid 1px #666;
	font-size: 40px;
	}
</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<p>Write Less Do More</p>
</body>
<script type="text/javascript">
	//css(name,value)增加样式
	/* $(function(){
		$("p").click(function(){
			$(this).css("font-size","30px").css("font-weight","bold").css("background-color","#eee");
		});
	}); */
	
	//addClss增加类别
	/* $(function(){
		$("p").click(function(){
			$(this).addClass("cls1 cls2");
		});
	});  */
	
	//toggleClass切换类别
	/*  $(function(){
		$("p").click(function(){
			$(this).toggleClass("cls1");
		});
	});  */
	
	//removeClss删除类别
	 $("p").addClass("cls1 cls2");
		$("p").click(function(){
		$(this).removeClass("cls2");
		
	}); 


	/* $(function(){
		var mydiv=$("<div id=dd style=background-color:red onclick=alert("123");>我是div内容</div>")
		$("body").append("<div id=dd style=background-color:red onclick=alert("123");>我是div内容</div>")
	}); */
</script>
</html>