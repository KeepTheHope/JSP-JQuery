<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>jQuery的ajax</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<form id="myForm" action="" method="post">
		用户名：<input name="username" value=""></br> 密码：<input name="password"
			value=""></br> ID：<input name="id" value=""></br> <input
			id="btn" type="button" value="提交"></br>
	</form>


</body>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			var datas = $("#myForm").serialize();
			/* $.get("EchoServlet?method=get",datas,function(data){
				console.log(data)
				}); */
			$.ajax({
				url : "EchoServlet?method=ajax",
				method : "post",
				async : true, //异步
				cache : false, //清除缓存
				data : {
					username : $("#myForm").find("input[name=username]").val(),
					password : $("#myForm").find("input[name=password]").val(),
					id : $("#myForm").find("input[name=id]").val()
				},
				timeout : 3000, //超时时间
				dataType : "json",
				success : function(data) {
					alert(JSON.stringify(data));
				}
			});

		});

	});
</script>
</html>