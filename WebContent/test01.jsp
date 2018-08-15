<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>遍历元素</title>
<style type="text/css">
.aaa{
	border: solid 1px red;
	}
.red{
	color: red;
}

</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>

	<input class="red" value="111">
	<input class="red" value="222">
	<input class="red" value="333">

 <!-- 
	<p>
		<img alt="" src="Image/hello.jpg">
		<img alt="" src="Image/hello1.png">
		<img alt="" src="Image/hello2.png">
	</p>
	
 -->
</body>
<script type="text/javascript">
	$(function(){
		/* $("img").each(function(index){
			this.title="这是第"+index+"张图片";
			this.className="aaa";
			$(this).addClass("aaa");
		}); */
		
		
		 $(".red").each(function(count){
			console.log($(this).val());
			console.log(this.value);
		}); 
	});
</script>
</html>