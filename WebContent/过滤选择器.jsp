<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>过滤选择器</title>
<style type="text/css">
body {
	font-size: 12px;
	text-align: center;
}

div {
	width: 241px;
	height: 83px;
	border: solid 1px #eee;
}

h1 {
	font-size: 13px
}

ul {
	list-style-type: none;
	padding: 0px;
}

.DefClass, .NotClass {
	height: 23px;
	width: 60px;
	line-height: 23px;
	float: left;
	border-top: solid 1px #eee;
	border-bottom: solid 1px #eee;
}

.GetFocus {
	width: 58px;
	border: solid 1px #666;
	background-color: green
}

#spMove {
	width: 238px;
	height: 23px;
	line-height: 23px;
}
</style>

<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>

	<div>
		<h1>基本过滤选择器</h1>
			<ul>
				<li class="DefClass">Item0</li>
				<li class="DefClass">Item1</li>
				<li class="NotClass">Item2</li>
				<li class="DefClass">Item3</li>
			</ul>
			<span>我也是Sapn</span>
			<span id="spMove">Sapn Move</span>
	</div>


</body>
<script type="text/javascript">
	$(function(){
		
		//$("li:first").addClass("GetFocus");//第一个元素添加类样式
		//$("li:last").addClass("GetFocus");//最后一个元素添加类样式
		//$("li:not(.NotClass)").addClass("GetFocus");//增加所有与给定选择器不匹配的元素类别
		//$("li:even").addClass("GetFocus");//索引为偶数的增加类样式（索引index从0开始）
		//$("li:odd").addClass("GetFocus");//索引为奇数的增加类样式`	$("li:eq(1)").addClass("GetFocus");//索引为1的增加样式，eq(index)参数是索引，索引从0开始
		//$("li:gt(1)").addClass("GetFocus");//大于1的索引增加样式
		//$("li:lt(2)").addClass("GetFocus");//小于2的索引增加样式
		//$("div h1").css("width","238");
		//$(":header").addClass("GetFocus");//增加标题类型样式
		
		
		animateIt();
		$("span:animated").addClass("GetFocus");
		
		
		//增加动画效果
		function animateIt(){
		$("#spMove").slideToggle(1000,arguments.callee);
}
		
	});
</script>
</html>