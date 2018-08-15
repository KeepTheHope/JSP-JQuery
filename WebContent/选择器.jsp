<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>选择器</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<style type="text/css">
body {
	font-size: 12px;
	text-align: center;
}
.clsFrame {
	width: 300px;
	height: 100px;
}
.clsFrame div,span {
	display: none;
	float: left;
	width: 65px;
	height: 65px;
	border: solid 1px #ccc;
	margin: 8px;
}
.clsOne{
	background-color: #eee;

}
</style>

<meta charset="UTF-8">
</head>
<body>
	<div class="clsFrame">
		<div id="divOne">ID</div>
		<div class="clsOne">CLASS</div>
		<span>SPAN</span>
	</div>
	<span style="display: none;">11111	</span>
</body>

<script type="text/javascript">
	$(function(){
		/**ID匹配元素*/
		/* $(function(){
			$("#divOne").css("display","block");
		}); */
		
		/**名称匹配元素*/
		/*  $(function(){
			$("span").css("display","block");
		});  */
		
		/**类匹配元素*/
		/*  $(function(){
			$(".clsOne").css("display","block");
		});  */
		
		/**匹配所有元素*/
		/* $(function(){
			$("*").css("display","block");
		});  */
		
		/**合并匹配元素*/
		 $(function(){
			$("#divOne,.clsOne").css("display","block");//并列关系
			$(".clsFrame,.span").css("display","block");//并列关系
			$("span").css("display","block");//并列关系
		}); 
		
	});

</script>
</html>