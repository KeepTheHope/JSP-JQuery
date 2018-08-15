<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>插入元素</title>
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
	<p id="p1">pppppp</p>
	<div id="d1" style="border: solid 1px #666;">jQuery</div>
</body>
<script type="text/javascript">
	$(function(){
		//内部插入
		//append追加内容到其中
		//$("#d1").append(relHtml);
		
		//appendTo被追加到其中
		//$("<span>Span</span>").appendTo("#d1");
		
		//外部插入
		
		//$("#d1").before(relHtml);
		//$("#d1").after(relHtml);
		
		
		$(relHtml()).insertBefore("#p1");
		$(relHtml()).insertAfter("#p1");
		
	});
	
	function relHtml(){
		var str = "<p>Write Less Do More</p>"
		return str;
	}


</script>
</html>