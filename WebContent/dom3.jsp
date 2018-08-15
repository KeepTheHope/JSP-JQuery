<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>dom3</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<select multiple="multiple" style="height: 95px;width: 85px">
		<option value="1">Item 1</option>
		<option value="2">Item 2</option>
		<option value="3">Item 3</option>
		<option value="4">Item 4</option>
		<option value="5">Item 5</option>
	</select>
	<p id="p1"></p>
	<input type="text" value="">
	<p id="p2"></p>
</body>
<script type="text/javascript">
	$(function(){
		/* $("select").change(function(){
			var value = $("select").val().join(",");
			$("#p1").html(value);
		}); */
		
		 $("input").change(function(){
			var value = $("input").val();
			$("#p2").html(value);
		});  
		
		$("input").focus(function(){
			$("input").val("");
			$("#p2").empty(); 
		});
	});
</script>
</html>