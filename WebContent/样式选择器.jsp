<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>样式选择器</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<style type="text/css">
.divDefault {
	width: 260px;
	font-size: 10pt;
	padding: 5px;
	background-color: green;
}

.divClick {
	width: 260px;
	border: solid 1px #666;
	font-size: 10pt;
	background-color: blue;
	padding: 5px;
}
</style>

<meta charset="UTF-8">
</head>
<body>
	<div class="divDefault">点击前的样式</div>
</body>

<script type="text/javascript">
	$(function() {
		$(".divDefault").click(function() {
			$(this).toggleClass("divClick").html("点击后的样式");
		});
	});
</script>
</html>