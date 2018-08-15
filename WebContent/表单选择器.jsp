<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>表单选择器</title>
<style type="text/css">
body{
	font-size: 12px;
	text-align: center;
}
div{
	border: solid 1px red;
	background-color: #eee;
	padding: 5px;
}

textarea,select,button,input,span{
	display: none;
}
.red{
	color: red;
}

</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
	<body>
		<form  id="form1" style="width: 241px" action="">
			<textarea rows="" cols="">Textarea</textarea>
			<select><option value="0">Item 0</option></select>
			<input type="text" value="text">
			<input type="password" value="1234">
			<input type="radio" value="1">
			<input type="checkbox" value="1">
			<input type="submit" value="提交">
			<input type="reset" value="重置">
			<input type="image" src="Image/hello.jpg" title="image">
			<input type="button" value="按钮">
			<input type="file" value="文件">
			<span id="sp">Span</span>
			<div id="divShow"></div>
		</form>
</body>
</html>
<script type="text/javascript">
	$(function(){
		//$("#divShow").html("表单共找出Input类型元素" + $("#form1 :input").length + "个");
		$("#form1 select").show(1000);
		$("#form1 textarea").show(1000);
		 
		$("#form1 :text").show(1000);
		$("#form1 :password").show(1000);
		$("#form1 :radio").show(1000);
		$("#form1 :checkbox").show(1000);
		$("#form1 :submit").show(1000);
		$("#form1 :image").show(1000);
		$("#form1 :reset").show(1000);
		$("#form1 :file").show(1000);
		
		alert($(".red:submit").val());
		
	});


</script>
