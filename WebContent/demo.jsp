<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>表单对象属性过滤选择器</title>
<style type="text/css">
body{
	font-size: 12px;
	text-align: center;
}
div{
	display: none;
	width: 400px;
}

select{
	height: 65px;
}

.clsIpt{
	width: 100px;
	padding: 3px;
}

.GetFocus{
	width: 100px;
	border: solid 1px red;
	background-color: #eee;
}
</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<form  id="form1" style="width: 241px" action="">
		<div id="divA">
			<input type="text" value="可用文本框" class="clsIpt">
			<input type="text" disabled="disabled" value="不可用文本框" class="clsIpt">
		</div>
		<div id="divB">
			<input type="checkbox" checked="checked" value="1">选中
			<input type="checkbox" value="0">未选中
		</div>
		<div id="divC">
			<select multiple="multiple">
				<option value="0">select 0</option>
				<option value="1" selected="selected">select 1</option>
				<option value="2">select 2</option>
				<option value="3" selected="selected">select 3</option>
			</select>
			<span id="sp"></span>
		</div>
	</form>
</body>
</html>
<script type="text/javascript">

	  $(function(){
		  //$("#divA").show(1000);
		  //$("#form1 input:enabled").addClass("GetFocus"); //可用文本增加样式
		  //$("#form1 input:disabled").addClass("GetFocus");//不可用文本增加样式
		  
		  
		  //$("#divB").show(1000);
		  //alert($("#form1 input:checked").val()); //获取复选框中的值
		  
		  
		  $("#divC").show(1000);
		  //$("#form1 select option:selected").text();//获取选中项
		  $("#sp").html("选中项为：" + $("#form1 select option:selected").text());  
		  
	  });
</script>
