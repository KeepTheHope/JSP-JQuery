<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>hover事件机制</title>
<style type="text/css">
.red {
	color: red;
}

.green {
	color: green;
}
</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<input id="in" value="123">
	<a id="aa">www.baidu.com</a>
	<div id="d1" style="width: 200px;height: 100px;border: solid 1px #eee;">jQuery的hover事件</div>

</body>
<script type="text/javascript">
	$(function(){
		$("#d1").hover(function(){
			$(this).hide();
		},
		function(){
			$(this).show();
		});
	}); 
	
	 $(function(){
		$("#aa").hover(function(){
			$(this).removeClass("green");
			$(this).addClass("red");
		},
		function(){
			$(this).addClass("green");
		});
	}); 
	$(function(){
		$("#in").bind("click",function(){
			console.log($(this).val())
		});
	});
	 
	 
</script>
</html>