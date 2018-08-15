<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>zTreeDemo</title>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<link href="zTree/css/demo.css" rel="stylesheet" type="text/css" />
<link href="zTree/css/zTreeStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="zTree/js/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="zTree/js/jquery.ztree.exedit.js"></script>
</style>
<meta charset="UTF-8">
</head>
<body>
<ul id="treeDemo" class="ztree"></ul>
</body>
<script type="text/javascript">
		var zTreeObj;
		// zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
		
		var setting = {
    	//check属性放在data属性之后，复选框不起作用
		    check: {
		        enable: true
		    },
		    data: {
		        simpleData: {
		            enable: true
		        },
		    }
};

	// zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
	var zNodes = [ {
		name : "test1",
		open : true,
		children : [ {
			name : "test1_1"
		}, {
			name : "test1_2"
		} ]
	}, {
		name : "test2",
		open : true,
		children : [ {
			name : "test2_1"
		}, {
			name : "test2_2"
		} ]
	} ];
	$(function() {

		zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
	});
</script>
</html>