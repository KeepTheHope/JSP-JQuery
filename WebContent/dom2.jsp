<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>dom2</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<div id="div1">1111111111</div>
	<div id="div2">2222222222</div>
</body>
<script type="text/javascript">
	$(function(){
		
		/* console.log($("#div1").html());
		$("#div1").html("<h1>abcdefg</h1>"); */
		
		console.log($("#div2").text());
	 	$("#div2").text("<h1>ttttttttttttttttt</h1>");
		
	});
</script>
</html>