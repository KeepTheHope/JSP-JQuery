<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>替换元素</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<p>
		姓名：<span id="sp1">淡淡的</span>
	</p>
	<p>
		年龄：<span id="sp2">豆豆的</span>
	</p>

</body>
<script type="text/javascript">
	$(function() {
		//一旦替换，原来元素的事件消失
		//$("#sp1").replaceWith("<span>bhx</span>");
		//$("<span>29</span>").replaceAll("#sp2");
	});
</script>
</html>