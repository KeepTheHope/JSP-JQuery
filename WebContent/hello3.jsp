<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<style type="text/css">
.divTip {
	width: 260px;
	font-size: 10pt;
	background-color: yellow;
}

.divBtn {
	padding-top: 7px;
	background-color: green;
}

.divBtn, divCss {
	border: solid 1px #3598DC;
	width: 50px;
}
</style>

<meta charset="UTF-8">
</head>
<body>
	<div class="divTitle">请输入信息</div>
	<div class="divContent">

		姓名：<input id="text1" type="text" class="txtCss"><br> 性别：<input
			id="radio1" checked="checked" type="radio" name="sex" value="男">男
		<input id="radio2" type="radio" name="sex" value="女">女<br>
		婚否：<input id="check1" type="checkbox"><br>
		<div class="divBtn">
			<input id="button1" type="button" value="提交" class="btnCss">
		</div>
		<div id="divTip" class="divTip"></div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$('#button1').click(
				function() {
					var v1 = $('#text1').val();
					var r1 = $('#radio1').attr('checked') ? "男" : "女";
					var c1 = $('#check1').attr('checked') ? "已经结婚了" : "没有结婚呐";
					$('.divTip').html(v1 + '\n' + r1 + '\n' + c1).show(1000).css('display', 'block');
				});
		});
</script>
</html>