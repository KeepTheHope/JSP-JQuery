<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>EasyUI</title>
<script type="text/javascript" src="Jquery-easyUi/jquery.min.js"></script>
<script type="text/javascript" src="Jquery-easyUi/jquery.easyui.min.js"></script>
<link href="Jquery-easyUi/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link href="Jquery-easyUi/themes/icon.css" rel="stylesheet" type="text/css" />

<meta charset="UTF-8">
</head>
<body>
<table id="tt" style="width:600px;height:200px"   
        title="Editable DataGrid"   
        singleSelect="true">   
    <thead>   
        <tr>   
            <th field="itemid" width="100" editor="{type:'validatebox',options:{required:true}}">Item ID</th>   
            <th field="productid" width="100" editor="text">Product ID</th>   
            <th field="listprice" width="100" align="right" editor="{type:'numberbox',options:{precision:1}}">List Price</th>   
            <th field="unitcost" width="100" align="right" editor="numberbox">Unit Cost</th>   
            <th field="attr1" width="150" editor="text">Attribute</th>   
        </tr>   
    </thead>   
</table>  

</body>
</html>
<script type="text/javascript">

$('#tt').edatagrid({    
    url: 'datagrid_data.json',    
    saveUrl: ...,    
    updateUrl: ...,    
    destroyUrl: ...    
}); 



</script>
