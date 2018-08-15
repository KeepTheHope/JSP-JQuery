<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<input id="id" name="id" value="hello">
</body>
<script type="text/javascript">
	$(function() {
		var a = $("#id");
		console.log(a.get(0).value)
	});
</script>
</html>