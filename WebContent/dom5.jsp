<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>动态创建节点元素</title>
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
	<p id="p1" style="background-color: yellow;width: 30px;">点我创建DIV</p>
</body>
<script type="text/javascript">
	$(function(){
		$("#p1").click(function(){
			var mydiv= $("<div id='d' title='mydiv' onclick=addInput();>hi my div</div>");
			$("body").append(mydiv);
		});
	});
	function addInput(){
		$("body").append("<input value=111>")
	}


</script>
</html>