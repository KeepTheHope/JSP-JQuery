<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>包裹元素节点</title>
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
		$("p").wrap("<b></b>"); //包裹此节点
		$("p").wrapInner("<i></i>");//包裹此节点的内布元素（包括文本内容）
	});
</script>
</html>