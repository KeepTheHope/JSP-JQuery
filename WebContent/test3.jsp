<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery事件机制</title>
<style type="text/css">
.btn {
	border: solid 1px #444;
	padding: 2px;
	width: 60px;
}
.cls{
	border: solid 1px #666;
	width: 200px;
	display: none;
}
</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<div style="border: solid 1px #666;">
		<input id="btnShow" type="button" value="点击" class="btn">
	</div>
	<div id="d1" class="cls">
	</div>
</body>
<script type="text/javascript">
	$(function(){
		
		var i = 0;//累计执行次数
		$("body,div,#btnShow").click(function(event){
			i++;
			$(".cls").html("你好，欢迎来到jQuery世界").append("执行次数:<b>"+i+"</b>次").show(1000);
			event.stopPropagation();//阻止冒泡事件继续响应
			// return false; //最土的冒泡事件继续响应方式
		});
	});
</script>
</html>