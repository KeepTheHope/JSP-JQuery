<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<style type="text/css">
.divFrame {
	width: 260px;
	broder: solid 1px #666;
	font-size: 10pt
}

.divTitle {
	background-color: #eee;
	padding: 5px
}

.divContent {
	padding: 5px;
	display: none
}

.divCurrentColor {
	background-color: green
}
</style>

<meta charset="UTF-8">
</head>
<body>
	<div class="divFrame">
		<div class="divTitle">主题</div>
		<div class="divContent">
			<a href="#">href1</a><br /> <a href="#">href2</a><br /> <a href="#">href3</a>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$(".divTitle").click(
				function() {
					$(this).addClass("divCurrentColor").next(".divContent")
							.css("display", "block");
				});
	});
</script>
</html>