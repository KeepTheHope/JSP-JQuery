<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>dom1</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<input type="text">
</body>
<script type="text/javascript">
	$(function(){
//		alert($("input").attr("type")); //一个参数的时候是获取属性的值
//		$("input").attr("value","文本域");//两个参数的时候是设置属性的值
		/* $("input").attr(
			{value:1111,style:'width:300px',readOnly:'readOnly'}		
		); */
		//用Json对象设置多个属性
		$("input").attr("value",function(){return 1+2;}) //绑定一个函数
	});
</script>
</html>