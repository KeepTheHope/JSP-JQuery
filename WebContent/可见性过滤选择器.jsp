<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>可见性过滤选择器</title>
<style type="text/css">
body {
	font-size: 12px;
	text-align: center;
}

div,span {
	float: left;
	margin: 8px;
	border: solid 1px #666;
	width: 100px;
	height: 100px;
}

.GetFocus{
	width: 100px;
	border: solid 1px #666;
	background-color: green;
}

</style>

<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>

	<span style="display:none">Hidden</span>
	<div>Visible</div>

</body>
<script type="text/javascript">
	$(function(){
		$("span:hidden").show(1000); //隐藏元素变为显示
		$("div:visible").addClass("GetFocus");//显示元素加上类样式
	});

</script>
</html>