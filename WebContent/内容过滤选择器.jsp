<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>内容过滤选择器</title>
<style type="text/css">
body {
	font-size: 12px;
	text-align: center;
}

div {
	width: 100px;
	height: 100px;
	border: solid 1px #666;
	display: none;
}

sapn {
	border: solid 1px #eee;
	width: 100px;
	height: 100px;
}
</style>

<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<div>ABCD</div>
	<div>
		<span title="aaa">AAAA</span>
	</div>
	<div>EFaH</div>
	<div style="background-color: green"></div>

</body>
<script type="text/javascript">
	$(function(){
		//$("div:contains('A')").css("display","block");//包含A的内容
		//$("div:empty").css("display","block");//empty的元素（不包含子元素和内容）
		$("div:has(span)").css("display","block");//包含span的div显示
		//$("div:parent").css("display","block");//显示含有子元素或者文本元素
	});

</script>
</html>