<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>删除节点元素</title>
<style type="text/css">
ul {
	width: 200px;
}

ul li {
	list-style-type: none;
	padding: 0px;
	height: 23px;
}

.btn {
	border: solid 1px #444;
	padding: 2px;
	height: 23px;
	filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,)
}
</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<ul>
		<li>学号</li>
		<li title="t">1001</li>
		<li>1002</li>
		<li>1003</li>
		<li title="t">1004</li>
		<li style="text-align: center; padding-top: 5px;"><input id="b1"
			type="button" value="删除" class="btn"></li>
	</ul>
</body>
<script type="text/javascript">
	$(function() {
		$("ul li:first").css("font-weight", "bold");
		$("#b1").click(function() {
			//$("ul li").remove("li[title=t]");
			$("ul li:eq(1)").remove();
		});
	});
</script>
</html>