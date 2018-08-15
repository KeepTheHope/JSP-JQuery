<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>克隆元素</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<div id="d1" style="border: solid 1px #666;"><img src="Image/hello.jpg"></div>
	<div id="d2"></div>
</body>
<script type="text/javascript">
	$(function(){
		$("img").click(function(){
			//clone(boolean) 设置复制元素的事件是否也复制出来 true：复制  false:不复制（默认不加参数 false）
			$(this).clone(true).appendTo("#d2");
		});
	});

</script>
</html>