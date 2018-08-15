<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>demo2</title>
<style type="text/css">
body{
	font-size: 12px;
	text-align: center;
}
#tbStu{
	width: 260px;
	border: solid 1px #666;
}
#tbStu tr{
	line-height: 23px;
}
#tbStu .trOdd{
	background-color: blue	;
}

</style>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<table id="tbStu" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
				<th>学号</th><th>姓名</th><th>性别</th><th>总分</th>			
			</tr>		
			<!-- 偶数行 -->
			<tr>
				<th>1001</th><th>小K</th><th>男</th><th>340</th>			
			</tr>
			<!-- 奇数行 -->
			<tr>
				<th>1002</th><th>小T</th><th>女</th><th>350</th>			
			</tr>
			<tr>
				<th>1003</th><th>小U</th><th>女</th><th>340</th>			
			</tr>
			<tr>
				<th>1004</th><th>小L</th><th>男</th><th>350</th>			
			</tr>
		</tbody>
	</table>
</body>
</html>
<script type="text/javascript">

	  /*  window.onload=function(){
		var tb = document.getElementById("tbStu");
		for(var i= 0;i < tb.rows.length;i++){
			if(i%2==0){
				tb.rows[i].className="trOdd";
			}
		}
	}   */
	
	 $(function(){
		$("#tbStu tr:nth-child(odd)").addClass("trOdd");
	});  
	
</script>
