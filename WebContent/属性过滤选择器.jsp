<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>属性过滤选择器</title>
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
	display: none;
}


</style>

<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>

	<div id="divID">divID</div>
	<div title="A">A</div>
	<div id="divAB" title="AB">id:divAB</div>
	<div title="ABC">ABC</div>
</body>
<script type="text/javascript">
	$(function(){
		//$("div[id]").show(1000);//含有id属性的div显示
		//$("div[title='A']").show(1000);
		//$("div[title !='A']").show(1000);
		//$("div[title ^='AB']").show(1000);
		//$("div[title $='C']").show(1000);
		//$("div[title *='B']").show(1000);
		$("div[id^='div'][title*='B']").show(1000);
		
	});

</script>
</html>