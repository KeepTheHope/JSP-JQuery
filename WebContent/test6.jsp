<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery动画滑动效果</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<p style="background-color: green;width: 100px;height: 200px;border: solid 1px #666;">jQuery</p>
	<button id="btn1">向上滑动</button>
	<button id="btn2">向下滑动</button>
	<button id="btn3">滑入滑出</button>



</body>
<script type="text/javascript">
	$(function(){
		
		$("#btn1").click(function(){
			$("p").slideUp("slow");
		});
		$("#btn2").click(function(){
			$("p").slideDown("fast");
		});
		$("#btn3").click(function(){
			$("p").slideToggle(2000);
		});
		
	});
	 
</script>
</html>