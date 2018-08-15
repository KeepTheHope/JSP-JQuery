<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>层次选择器</title>
<style type="text/css">
	body{font-size: 12px;text-align: center;}
	div,span{display: none ;float: left; border:solid 1px #ccc; margin: 8px}
	.clsA{width: 65px;height: 65px;}
	.clsP{width: 45px;height: 45px;background-color: #eee;}
	.clsC{width: 25px;height: 25px;background-color: #ddd;}
</style>

<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<div class="clsA">Left</div>
	<div class="clsA" id="divMid">
		<span class="clsP" id="span1">
			<span class="clsC" id="span2"></span>
		</span>
	</div>
	<span class="clsA">Right_1</span>
	<div class="clsA">Right_2</div>
	<div class="clsA">Right_3</div>

</body>
<script type="text/javascript">
	$(function(){
		//匹配所有的后代元素
		/* $("#divMid").css("display","block");
		$("div span").css("display","block");  */
		
		
		//匹配子元素
		/* $("#divMid").css("display","block");
		$("div>span").css("display","block"); */
		
		//匹配后面的元素
		/* $("#divMid + span").css("display","block");
		$("#divMid").next().css("display","block"); */
		
		/* $("#divMid ~ div").css("display","block");  */
		/* $("#divMid").nextAll().css("display","block");  */
		
		
		//匹配所有的兄弟元素
		$("#divMid").siblings("div,span").css("display","block"); 
		
	});
</script>
</html>