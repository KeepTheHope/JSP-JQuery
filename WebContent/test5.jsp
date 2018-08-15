<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery动画淡入淡出效果</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<div id="d1" style="background-color: green;width: 100px;height: 100px;border: solid 1px #666;">jQuery</div>
	<button id="btn1">点击消失</button>
	<button id="btn2">点击出现</button>
	<button id="btn3">点击调整</button>



</body>
<script type="text/javascript">
	$(function(){
		
		$("#btn1").click(function(){
			$("#d1").fadeOut(2000);
		});
		$("#btn2").click(function(){
			$("#d1").fadeIn(2000);
		});
		$("#btn3").click(function(){
			$("#d1").fadeTo(1000,0.10);
		});
		
	});
	 
</script>
</html>