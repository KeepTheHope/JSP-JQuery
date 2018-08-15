<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>可见性过滤选择器</title>
<style type="text/css">
body {
	font-size: 12px;
	text-align: center;
}

ul{
	width: 241px;
	list-style-image: none;
	padding: 0px;
}
ul li{
	height: 23px;
	width: 60px;
	line-height: 23px;
	float: left;
	border-top: solid 1px #eee;
	border-bottom: solid 1px #eee;
	margin-bottom: 5px;
}

.GetFocus{
	width: 58px;
	border: solid 1px #666;
	background-color: blue;
}

</style>

<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<ul>
		<li>Item 1-0</li>
		<li>Item 1-1</li>
		<li>Item 1-2</li>
		<li>Item 1-3</li>
	</ul>
	
	<ul>
		<li>Item 2-0</li>
		<li>Item 2-1</li>
		<li>Item 2-2</li>
		<li>Item 2-3</li>
	</ul>
	
	<ul>
		<li>Item 3-0</li>
	</ul>


</body>
<script type="text/javascript">
	$(function(){
		
		//----:nth-child{eq|even|odd|index}
		//$("li:nth-child(2)").addClass("GetFocus");//增加每个父元素下的第二个子元素类别
		//$("li:first-child").addClass("GetFocus");//增加每个父元素下第一个和最后一个子元素的类别
	//	$("li:last-child").addClass("GetFocus");
		$("li:only-child").addClass("GetFocus");//增加父元素只有一个子元素的元素类别
	});

</script>
</html>