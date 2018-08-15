<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.esop.base.util.DateUtils"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<style type="text/css">
#promiseManageCompanyResult,#monResult {
	z-index: 9999;
	position: absolute;
	display: none;
	cursor: pointer;
	width: 170px;
	background-color: #f5f5f5;
	height: auto;
}

#navstat ul li {
	width: 20%;
	text-align: center;
}
table,th,td{
	text-align: center;
}
</style>
	</head>
	<body class="no-skin">
		<div class="main-container" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="row" style="padding-left: 15px;padding-right: 15px;">
							<div class="col-xs-12" style="border: 1px solid #0D76C9;border-radius: 5px;">
								<!-- 检索  -->
								<div class="searchContain row" style="padding: 5px;">
									<div class="input_div">
										<div class="nav_title" style="float: left;">
											电力用户：
										</div>
										<div class="nav-search" style="float: left">
                                            <input type="text" id="companyName" />
										</div>
										<div class="nav_title" style="float: left;padding-left: 30px">
											统计年度：
										</div>
										<div class="nav-search" style="float:left;">
											<input type="text" id="startYear" />
										</div>
											
										<div class="nav-search" style="float: left;padding-right: 20px;">
										至<input type="text" id="endYear" />
										</div>
										<div>
											<button type="button" class="btn btn-default" id="btn-search"
								             onfocus="this.blur()" style="margin:0px;width:70px;height: 24px;" >
											 查询
											</button>
										</div>
									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="tabbable" id="navstat">
											<ul class="nav nav-tabs">
												<li class="active">
													<a href="#panel-1" data-toggle="tab">电费分析</a>
												</li>
												<li>
													<a href="#panel-2" data-toggle="tab">电量分析</a>
												</li>
												<li>
													<a href="#panel-3" data-toggle="tab">电价分析</a>
												</li>
												<li>
													<a href="#panel-4" data-toggle="tab">功率因数奖励</a>
												</li>
												<li>
													<a href="#panel-5" data-toggle="tab">移峰填谷</a>
												</li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" id="panel-1">
													<div style="text-align: center;">
														<span style="font-weight: bold; font-size: 23px;"><span class="year" style="vertical-align:baseline;"></span>年<span class="company"></span>电费汇总表</span>
														<div style="margin-left: 80%;">
															单位:元
														</div>
													</div>
													<div class="row"
														style="margin-left: 7%; width: 84%; margin-top: 5px;">
														<table class="table table-striped table-bordered table-hover" id="billTable">															
														</table>
													</div>
													<div id="getPic1"  style="width: 100%; height: 500px;" >
														<div id="billMonPic" class="halfScreen" style="width:50%;margin-top: 5px;margin-left: 7%; border: 1px solid grey;float: left;"></div>
														<div id="billAddPic" class="halfScreen" style="width:50%;margin-top: 5px;margin-left: 8px; border: 1px solid grey;float: left;"></div>
													</div>
												</div>
												<div class="tab-pane" id="panel-2" style="height:1300px;">
													<div style="text-align: center;">
														<span style="font-weight: bold; font-size: 23px;"><span class="year"></span>年<span class="company"></span>电量汇总表</span>
														<div style="margin-left: 80%;">
															单位:千瓦时
														</div>
													</div>
													<div class="row"
														style="margin-left: 7%; width: 84%;margin-top: 5px;">
														<table class="table table-striped table-bordered table-hover" id="energyTable">

														</table>
													</div>
													<div id="getPic1" style="width: 100%; height: 500px;">
														<div id="energyListPic" class="allScreen"
															style=" margin-top: 5px;  float: left; margin-left: 7%; border: 1px solid grey;"></div>
														<div class="row">
														    <div id="energyOnePic0" class="col-md-3 thirdScreen" 
															style=" margin-top: 5px;   margin-left: 100px; ">
															</div>
															<div id="energyOnePic1" class="col-md-3 thirdScreen" 
															style=" margin-top: 5px;   margin-left: 3px; ">
															</div>
															<div id="energyOnePic2" class="col-md-3 thirdScreen" 
															style=" margin-top: 5px;  margin-left: 3px; ">
															</div>
													  </div>
													</div>
												</div>
												<div class="tab-pane" id="panel-3">
													<div style="text-align: center;">
														<span style="font-weight: bold; font-size: 23px;"><span class="year"></span>年<span class="company"></span>平均电价汇总表</span>
														<div style="margin-left: 80%;">
															单位:元
														</div>
													</div>
													<div class="row"
														style="margin-left: 7%; width: 84%; margin-top: 5px;">
														<table class="table table-striped table-bordered table-hover" id="priceTable">

														</table>
													</div>
													<div id="getPic1" style="width: 100%; height: 500px;">
														<div id="pricePic" class="allScreen"
															style=" margin-top: 5px;  float: left; margin-left: 7%; border: 1px solid grey;"></div>
													</div>
												</div>
												<div class="tab-pane" id="panel-4">
													<div style="text-align: center;">
														<span style="font-weight: bold; font-size: 23px;"><span class="year"></span>年<span class="company"></span>功率奖罚汇总表</span>
														<div style="margin-left: 80%;">
															单位:元
														</div>
													</div>
													<div class="row"
														style="margin-left: 7%; width: 84%; margin-top: 5px;">
														<table class="table table-striped table-bordered table-hover" id="rateTable">

														</table>
													</div>
													<div id="getPic1" style="width: 100%; height: 500px;">
														<div id="ratePic" class="halfScreen"
															style=" margin-top: 5px; float: left; margin-left: 7%; border: 1px solid grey;"></div>
														<div id="awardPic" class="halfScreen"
															style="width: 800px; margin-top: 5px; float: left; margin-left: 3px; border: 1px solid grey;"></div>
													</div>
												</div>
												<div class="tab-pane" id="panel-5">
												    <div style="margin-left: 80%;">
															<button type="button" class="btn btn-primary"  onclick="method1('splist')"
												             onfocus="this.blur()" style="height:30px;width:70px;;padding:0px 0px;" >
															 导出
															</button>
														</div>
												   <div style="margin-left: 7%;width:84%;text-align:center;margin-top:5px;">
													<table class="table table-striped table-bordered table-hover" id="splist">

														</table>
														</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.page-content -->
				</div>
			</div>
			<!-- /.main-content -->

			<!-- 返回顶部 -->
			<a href="#" id="btn-scroll-up"
				class="btn-scroll-up btn btn-sm btn-inverse"> <i
				class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i> </a>

		</div>
		</body>
		<!-- ace scripts -->
		<script src="js/ace.js"></script>
		<!-- 删除时确认窗口 -->
		<script src="js/bootbox.js"></script>
		<!--提示框-->
		<script type="text/javascript" src="js/jquery.tips.js"></script>
		<script src="js/echarts.min.js"></script>
		<script src="js/walden.js"></script>
		<script type="text/javascript">
	    var comId = "";
	    var toyear = '<%=DateUtils.getYear()%>'
	    var companyid="";
	    var cid;
	    var billAddOption;
		$(function(){
			$('#companyName').combotree({
				url : '${pageContext.request.contextPath}/tServiceDrPlanAction/getallcompany.action',
				parentField : 'pid',
				width:180,
				panelWidth:240,
				panelHeight:480,
			   onLoadSuccess : function(node,data){
			   		 if( data[0].children == undefined){
			   			cid = data[0].children[5].id;
			   		}else{
			   			cid = data[0].children[0].id;
			   		} 
			   		twocombotree(cid);
			   		$('#companyName').combotree('setValue',cid); 
			    },
			    onSelect:function(data){
			    	twocombotree(data.id);
			    }
		});	
		  var height = $(window).height();
		  var width = $(window).width();
		  $(".halfScreen").css('height', height*0.4+'px');
		  $(".halfScreen").css('width', width*0.4+'px');
		  $(".allScreen").css('height', height*0.4+'px');
		  $(".allScreen").css('width', width*0.8+'px');
		  $(".thirdScreen").css('height', height*0.4+'px');
		  $(".thirdScreen").css('width', width*0.28+'px');
		  getStatInfo(cid,toyear,toyear,toyear);
           $(".year").html(toyear);
	});
	function twocombotree(companyid){
		$('#startYear').combobox({
			url : '${pageContext.request.contextPath}/homePageController/getYearList.action?value='+companyid,
			editable : false,
			valueField:'value',
		    textField:'text',
			width:140,
			panelWidth:220,
			panelHeight:200,
			onLoadSuccess:function(node,data){
				if(node.length>0){
					$('#startYear').combobox("select",toyear);
				}
			}
		});	
		$('#endYear').combobox({
			url : '${pageContext.request.contextPath}/homePageController/getYearList.action?value='+companyid,
			editable : false,
			valueField:'value',
		    textField:'text',
			width:140,
			panelWidth:220,
			panelHeight:200,
			onLoadSuccess:function(node,data){
				if(node.length>0){
					$('#endYear').combobox("select",toyear);
				}
			}
		});	
	}
        //查询
		search_suggest = function(){
		$.ajax({
			url: '<%=basePath%>assessMeter/companyList.do',
			data:{
				companyName: $("#companyName").combotree('getValue')
			},
			type : 'post',
			dataType : 'json',
			success: function(data){
				//先清空
				$('#promiseManageCompanyList').html('');
				 var suggest ="";
				 data=data.rows;
				if(data.length <=0){
				    $('#promiseManageCompanyResult').hide();
				 }else{
					for(var i=0;i<data.length;i++){
					     suggest += '<li onmouseover="onmouseOver(this);" ';
	                     suggest += 'onmouseout="onmousetOut(this);" ';
	                     suggest += "onclick=\"setSuggestValue('"+data[i].abbrname+"','"+data[i].companyid+"')\";";
	                     suggest += 'id="'+ data[i].companyId +'"';
	                     suggest += 'class="onmouset_out">' + data[i].abbrname + '</li>';                    
					}
					$('#promiseManageCompanyList').html(suggest);
					$('#promiseManageCompanyResult').show();
				 }
			}
		});
	};
		//实现实时提示-------- propertychange 是为兼容ie浏览器
	$('#companyName').bind("propertychange input",function(event){
	    comId="";
		if($.trim($('#companyName').combotree('getValue')) != ""){
			search_suggest();
		}
  });

    function setSuggestValue(value,id) {
      	 //只取公司名
         $('#companyName').combotree('setText',value); 
         comId = id;
         $('#promiseManageCompanyList').html('');
         $('#promiseManageCompanyResult').hide();  
         getYearList(id);
	 }
	 function onmouseOver(div) {  
         $('#promiseManageCompanyResult').show();  
      }  
      function onmousetOut(div) {  
         $('#promiseManageCompanyResult').hide();   
      } 
	 function getYearList(companyId){
	     $.ajax({
			url: '<%=basePath%>bill/getYearList.do',
			data:{
				companyId: comId
			},
			type : 'post',
			dataType : 'json',
			success: function(data){
				//先清空
				$('#monList').html('');
				 var suggest ="";
				 data=data.ts;
				 data.forEach(function (element, sameElement, set) {
                    suggest += "<option value='" + element + "' ";
                    suggest += ">" + element + "</option>";
				 });
				 $('#startYear').html(suggest);
				 $('#endYear').html(suggest);
			}
		});
	 }
	function billMonCharts(param,year){
	   var yearlist = [];
	   var serieslist = [];
	   $.each(param,function(i,item){
	      var year = item.year;
	      yearlist.push(year);
	      var chargeline = item.chargeline;
	      var ser = {name:year,type:'line',
	       data:chargeline,markPoint: {data: [
		   {type: 'max', name: '最大值'},{type: 'min', name: '最小值'} 
		   ]},markLine: {data: [{type: 'average', name: '平均值'}]}};

		   serieslist.push(ser);
	   });
		billMonOption = {
				title: {
				        text: year + '年电费汇总表',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			    },
			    yAxis: {
			        type: 'value',
			        name: '电费(元)',
			        axisLabel: {
			            formatter: '{value}'
			        }
			    },
			    series: serieslist
			};
		var billMonChart = echarts.init(document.getElementById('billMonPic'),"walden");
		billMonChart.setOption(billMonOption);
	}
	function billAddCharts(param,year){
	  var yearlist = [];
	   var serieslist = [];
	   $.each(param,function(i,item){
	    if(item.ratemap != undefined){
	         var flag = item.ratemap;
	         var nowyear = flag.nowyear;
	         var lastyear = flag.lastyear;
	         var title = lastyear + "-" + nowyear;

		      yearlist.push(title);
		      var chargeline = flag.ratelist;

		      var ser = {name:title,type:'line',
		       data:chargeline,markPoint: {data: [
			   {type: 'max', name: '最大值'},{type: 'min', name: '最小值'} 
			   ]},markLine: {data: [{type: 'average', name: '平均值'}]}};

			   serieslist.push(ser);
			   billAddOption = {
				title: {
				        text: year + '年增长率汇总',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			    },
			    yAxis: {
			        type: 'value',
			        axisLabel: {
			            formatter: '{value} %'
			        }
			    },
			    series: serieslist
			};
		   }else{
		   	 var flag = item.ratemapnew;
	         var nowyear = flag.nowyear;
	         var lastyear = flag.lastyear;
	         var title = lastyear + "-" + nowyear;

		      yearlist.push(title);
			   billAddOption = {
				title: {
				        text: year + '年增长率汇总',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			    },
			    yAxis: {
			        type: 'value',
			        axisLabel: {
			            formatter: '{value} %'
			        }
			    },
			    series: [
			    			{
					    		name:title,
					    		type:'line',
				       			data:['-'],
				       			markPoint: {data: [{type: 'max', name: '最大值'},{type: 'min', name: '最小值'}]}
				       		}
		       			]
			};
		   }
	   });
		var billAddChart = echarts.init(document.getElementById('billAddPic'),"walden");
		billAddChart.setOption(billAddOption);
	}
	function energyListCharts(param,year){
	   var yearlist = [];
	   var serieslist = [];
	   $.each(param,function(i,item){
	      var year = item.year;
	      yearlist.push(year);
	      var energyline = item.totalEnergyLine;
	      var ser = {name:year,type:'line',
	       data:energyline,
	       markPoint: {data: [
		   {type: 'max', name: '最大值'},{type: 'min', name: '最小值'} 
		   ]},markLine: {data: [{type: 'average', name: '平均值'}]}};

		   serieslist.push(ser);
	   });
		energyListOption = {
				title: {
				        text: year + '年用电量汇总',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        name:'Kwh',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			        
			    },
			    yAxis: {
			        type: 'value',

			        axisLabel: {
			            formatter: '{value}'
			        }
			    },
			    series: serieslist
			};
		var energyListChart = echarts.init(document.getElementById('energyListPic'),"walden");
		energyListChart.setOption(energyListOption);
		window.onresize = energyListChart.resize;
	}
    function energyOneCharts(param){
      $.each(param,function(i,item){
        var timemap = item.timemap;
         var year = item.year;
		energyOneOption = {
		    title : {
		        text: year+'年用电类别',
		    },
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data: ['尖峰','峰段','平段','谷段']
			    },
			    series : [
			        {
			            name: '用电类型',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '40%'],
			            label: {
		                normal: {
		                    show: false
			                }
			            },
			            data:[
			                {value:timemap.selfsharpcopy, name:'尖峰'},
			                {value:timemap.selfpeakcopy, name:'峰段'},
			                {value:timemap.selfflatcopy, name:'平段'},
			                {value:timemap.selfcovecopy, name:'谷段'}
			            ]
			        }
			    ]
			};
		var energyOneChart = echarts.init(document.getElementById('energyOnePic'+i),"walden");
		energyOneChart.setOption(energyOneOption);
	   });
	}
    function priceCharts(param,year){
       var yearlist = [];
	   var serieslist = [];
	   $.each(param,function(i,item){
	      var year = item.year;
	      yearlist.push(year);
	      var avgpriceline = item.avgpriceline;
	      var ser = {name:year,type:'line',
	       data:avgpriceline,
	       markPoint: {data: [
		   {type: 'max', name: '最大值'},{type: 'min', name: '最小值'} 
		   ]}};

		   serieslist.push(ser);
	   });
		priceOption = {
				title: {
				        text: year + '年平均电价汇总表',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			    },
			    yAxis: {
			        type: 'value',
			        axisLabel: {
			            formatter: '{value} 元'
			        }
			    },
			    series: serieslist
			};
		var priceChart = echarts.init(document.getElementById('pricePic'),"walden");
		priceChart.setOption(priceOption);
	}
    function rateCharts(param,year){
    var yearlist = [];
	   var serieslist = [];
	   $.each(param,function(i,item){
	      var year = item.year;
	      yearlist.push(year);
	      var factorList = item.factorList;
	      var ser = {name:year,type:'line',
	       data:factorList,
	       markPoint: {data: [
		   {type: 'max', name: '最大值'},{type: 'min', name: '最小值'} 
		   ]}};

		   serieslist.push(ser);
	   });
		rateOption = {
				title: {
				        text: year+'年功率因数汇总',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			    },
			    yAxis: {
			        type: 'value',
			        
			        axisLabel: {
			            formatter: '{value}'
			        }
			    },
			    series: serieslist
			};
		var rateChart = echarts.init(document.getElementById('ratePic'),"walden");
		rateChart.setOption(rateOption);
	}
    function awardCharts(param,year){
    var yearlist = [];
	   var serieslist = [];
	   $.each(param,function(i,item){
	      var year = item.year;
	      yearlist.push(year);
	      var factorcostlist = item.factorcostlist;
	      var ser = {name:year,type:'line',
	       data:factorcostlist,
	       markPoint: {data: [
		   {type: 'max', name: '最大值'},{type: 'min', name: '最小值'} 
		   ]}};

		   serieslist.push(ser);
	   });
    
		awardOption = {
				title: {
				        text: year + '年功率奖罚汇总',
				},
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show: true,
			        feature: {
			            saveAsImage: {}
		        }
		        },
			    legend: {
			        x: 'center',
			        y:'bottom',
			        data:yearlist
			    },
			    xAxis:  {
			        type: 'category',
			        boundaryGap: false,
			        data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			    },
			    yAxis: {
			        type: 'value',
			        
			        axisLabel: {
			            formatter: '{value} 元'
			        }
			    },
			    series:serieslist
			};
		var awardChart = echarts.init(document.getElementById('awardPic'),"walden");
		awardChart.setOption(awardOption);
	}
    function sharpcovetran(param){
        var str="";
        str += "<thead><tr><th class='center'>转移</th><th class='center'>尖峰(千瓦时)</th><th class='center'>谷段(千瓦时)</th>"+
         "<th class='center'>转移电量(千瓦时)</th><th class='center'>售电单价差(元/千瓦.时)</th><th class='center'>节省电费(元)</th></tr></thead><tbody>";
        $.each(param,function(i,item){
           str += "<tr><td class='center'>" + item.tranRate + "</td>";
           str += "<td class='center'>" + item.totalEnergy + "</td>";
           str += "<td class='center'>" + item.coveEnergy + "</td>";
           str += "<td class='center'>" + item.tranEnergy + "</td>";
           str += "<td class='center'>" + item.pricemitu + "</td>";
           str += "<td class='center'>" + item.tranCost + "</td></tr></tbody>";        
        });
        
         $("#splist").html(str);
    }
    function billTable(param){
        var str="<thead><tr><th class='center' style='width:7%'>年/月</th><th class='center' style='width:7%' >1</th><th class='center style='width:7%''>2</th><th class='center' style='width:7%'>3</th>"+
        "<th class='center' style='width:7%'>4</th><th class='center' style='width:7%'>5</th><th class='center' style='width:7%'>6</th><th class='center' style='width:7%'>7</th>"+
        "<th class='center' style='width:7%'>8</th><th class='center' style='width:7%'>9</th><th class='center' style='width:7%'>10</th><th class='center' style='width:7%'>11</th>"+
        "<th class='center' style='width:7%'>12</th><th class='center' style='width:9%'>合计</th></tr></thead><tbody>";
	    $.each(param,function(i,item){
	       var year = item.year;
	       var chargeline = item.chargeline;
	       str += "<tr><td class='center'>"+year+"</td>";
	       $.each(chargeline,function(i,item){
	           str += "<td class='center'>" + item + "</td>";
	       });
	           str += "<td class='center'>"+item.totalCharge+"</td></tr></tbody>";
	    });
	    $("#billTable").html(str);
    }
    function energyTable(param){
        var str="<thead><tr><th class='center' style='width:7%'>年/月</th><th class='center' style='width:7%'>1</th><th class='center' style='width:7%'>2</th><th class='center' style='width:7%'>3</th>"+
        "<th class='center' style='width:7%'>4</th><th class='center' style='width:7%'>5</th><th class='center' style='width:7%'>6</th><th class='center' style='width:7%'>7</th>"+
        "<th class='center' style='width:7%'>8</th><th class='center' style='width:7%'>9</th><th class='center' style='width:7%'>10</th><th class='center' style='width:7%'>11</th>"+
        "<th class='center' style='width:7%'>12</th></tr></thead><tbody>";
	    $.each(param,function(i,item){
	       var year = item.year;
	       var totalEnergyLine = item.totalEnergyLine;
	       str += "<tr><td class='center'>"+year+"</td>";
	       $.each(totalEnergyLine,function(i,item){
	           str += "<td class='center'>" + item + "</td>";
	       });
	           str += "</tr></tbody>";
	    });
	    $("#energyTable").html(str);
    }
   function priceTable(param){
        var str="<thead><tr><th class='center' style='width:7%'>年/月</th><th class='center' style='width:7%'>1</th><th class='center' style='width:7%'>2</th><th class='center' style='width:7%'>3</th>"+
        "<th class='center' style='width:7%'>4</th><th class='center' style='width:7%'>5</th><th class='center' style='width:7%'>6</th><th class='center' style='width:7%'>7</th>"+
        "<th class='center' style='width:7%'>8</th><th class='center' style='width:7%'>9</th><th class='center' style='width:7%'>10</th><th class='center' style='width:7%'>11</th>"+
        "<th class='center' style='width:7%'>12</th><th class='center' style='width:9  %'>平均</th></tr></thead><tbody>";
	    $.each(param,function(i,item){
	       var year = item.year;
	       var avgpriceline = item.avgpriceline;
	       str += "<tr><td class='center'>"+year+"</td>";
	       $.each(avgpriceline,function(i,item){
	           str += "<td class='center'>" + item + "</td>";
	       });
	           str += "<td class='center'>"+item.yearavgprice+"</td></tr></tbody>";
	    });
	    $("#priceTable").html(str);
    }
    function rateTable(param){
        var str="<thead><tr><th class='center' style='width:7%'>年/月</th><th class='center' style='width:7%'>1</th><th class='center' style='width:7%'>2</th><th class='center' style='width:7%'>3</th>"+
        "<th class='center' style='width:7%'>4</th><th class='center' style='width:7%'>5</th><th class='center' style='width:7%'>6</th><th class='center' style='width:7%'>7</th>"+
        "<th class='center' style='width:7%'>8</th><th class='center' style='width:7%'>9</th><th class='center' style='width:7%'>10</th><th class='center' style='width:7%'>11</th>"+
        "<th class='center' style='width:7%'>12</th></tr></thead><tbody>";
	    $.each(param,function(i,item){
	       var year = item.year;
	       var factorcostlist = item.factorcostlist;
	       var factorList = item.factorList;

	       str += "<tr><td class='center'>"+year+"</td>";
           $.each(factorcostlist,function(i,item){
	           str += "<td class='center'>" + item + "</td>";
	       });
	       str += "</tr>";
	       str += "<tr><td class='center'>"+year+"</td>";
           $.each(factorList,function(j,jtem){
	           str += "<td class='center'>" + jtem + "</td>";
	       });
	       str += "</tr></tobdy>";
	    });
	    $("#rateTable").html(str);
    }
    function getStatInfo(companyId,startYear,endYear,year){
     	 $.ajax({
			url : '${pageContext.request.contextPath}/statPageController/getStatInfo.action',
			data : {
				companyId : companyId,
				startYear:startYear,
				endYear:endYear
			},
			type : 'post',
			dataType : 'json',
			success : function(data) {
               var statInfo = data.statInfo;
               
                              //移峰添谷
               sharpcovetran(data.splist);
               billTable(statInfo);
               energyTable(statInfo);
               priceTable(statInfo);
               rateTable(statInfo);	 
               
               billMonCharts(statInfo,year);
               billAddCharts(statInfo,year);
               energyListCharts(statInfo,year);
               
               priceCharts(statInfo,year);	               
               rateCharts(statInfo,year);
               awardCharts(statInfo,year);
               energyOneCharts(statInfo);
        
			}
		});    
    }
        $("#btn-search").click(function(){
          
          var companyId = $("#companyName").combotree('getValue');
          var companyText = $("#companyName" +" option:selected").text();
          var startYear = $("#startYear").combobox('getValue');
          var endYear = $("#endYear").combobox('getValue');
          if(companyId==""||companyId==null){
            esop.web.pdsmartPopMessage.showMessage("请先选择客户");
            return false;
          }
          if(startYear==""||startYear==null){
            esop.web.pdsmartPopMessage.showMessage("请选择起始年份");
            return false;
            
          }
          if(endYear==""||endYear==null){
            esop.web.pdsmartPopMessage.showMessage("请先选择截止年份");
            return false;
            
          }
          if(startYear>endYear){
            esop.web.pdsmartPopMessage.showMessage("起始年份必须小于等于截止年份");
            return false;
          }
          
          var year="";
          if(startYear==endYear){
           year += startYear;
          }else{
           year += startYear + "-" + endYear;
          }
          getStatInfo(companyId,startYear,endYear,year);
          $(".year").html(year);
          $(".company").html(companyText);
        });

		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>admbutton/excel.do';
		}
		 var idTmr;
		function  getExplorer() {
			var explorer = window.navigator.userAgent ;
			//ie 
			if(explorer.indexOf("rv:11.0") >=0 ){
				return 'ie11';			
			}else if (explorer.indexOf("MSIE") >= 0) {
				return 'ie';
			}
			//firefox 
			else if (explorer.indexOf("Firefox") >= 0) {
				return 'Firefox';
			}
			//Chrome
			else if(explorer.indexOf("Chrome") >= 0){
				return 'Chrome';
			}
			//Opera
			else if(explorer.indexOf("Opera") >= 0){
				return 'Opera';
			}
			//Safari
			else if(explorer.indexOf("Safari") >= 0){
				return 'Safari';
			}
		}
        function method1(tableid) {//整个表格拷贝到EXCEL中
			if(getExplorer()=='ie11'){
			     getXlsFromTbl(tableid,null);
			}else if(getExplorer()=='ie')
			{			     
				 var curTbl = document.getElementById(tableid);
			     var oXL = new ActiveXObject("Excel.Application");
			     //创建AX对象excel
			     var oWB = oXL.Workbooks.Add();
			     //获取workbook对象
			     var oSheet = oWB.ActiveSheet;
			     //激活当前sheet
			     var Lenr = curTbl.rows.length;
			     //取得表格行数
			     for (i = 0; i < Lenr; i++)
			     {
			         var Lenc = curTbl.rows(i).cells.length;
			         //取得每行的列数
			         for (j = 0; j < Lenc; j++)
			         {
			             oSheet.Cells(i + 1, j + 1).value = curTbl.rows(i).cells(j).innerText;
			             //赋值
			         }
			     }
			     oXL.Visible = true;
			     //设置excel可见属性
				
			}
			else
			{
				tableToExcel(tableid)
			}
        }
        function Cleanup() {
            window.clearInterval(idTmr);
            CollectGarbage();
        }
		var tableToExcel = (function() {
			  var uri = 'data:application/vnd.ms-excel;base64,',
			  template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',
				base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) },
				format = function(s, c) {
					return s.replace(/{(\w+)}/g,
					function(m, p) { return c[p]; }) }
				return function(table, name) {
				if (!table.nodeType) table = document.getElementById(table)
				var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
				window.location.href = uri + base64(format(template, ctx))
			  }
			})();
			function getXlsFromTbl(inTblId, inWindow) {
     try {
         var allStr = "";
         var curStr = "";
         //alert("getXlsFromTbl");
         if (inTblId != null && inTblId != "" && inTblId != "null") {
             curStr = getTblData(inTblId, inWindow);
         }
         if (curStr != null) {
             allStr += curStr;
        }
        else {
            alert("你要导出的表不存在！");
            return;
        }
        var fileName = getExcelFileName();
        doFileExport(fileName, allStr);
    }
    catch(e) {
        alert("导出发生异常:" + e.name + "->" + e.description + "!");
    }
}
function getTblData(inTbl, inWindow) {
    var rows = 0;
    //alert("getTblData is " + inWindow);
    var tblDocument = document;
    if (!!inWindow && inWindow != "") {
        if (!document.all(inWindow)) {
            return null;
        }
        else {
            tblDocument = eval(inWindow).document;
        }
    }
    var curTbl = tblDocument.getElementById(inTbl);
    var outStr = "";
    if (curTbl != null) {
        for (var j = 0; j < curTbl.rows.length; j++) {
            //alert("j is " + j);
            for (var i = 0; i < curTbl.rows[j].cells.length; i++) {
                //alert("i is " + i);
                if (i == 0 && rows > 0) {
                    outStr += " \t";
                    rows -= 1;
                }
                outStr += curTbl.rows[j].cells[i].innerText + "\t";
                if (curTbl.rows[j].cells[i].colSpan > 1) {
                    for (var k = 0; k < curTbl.rows[j].cells[i].colSpan - 1; k++) {
                        outStr += " \t";
                    }
                }
                if (i == 0) {
                    if (rows == 0 && curTbl.rows[j].cells[i].rowSpan > 1) {
                        rows = curTbl.rows[j].cells[i].rowSpan - 1;
                    }
                }
            }
            outStr += "\r\n";
        }
    }
    else {
       outStr = null;
        alert(inTbl + "不存在!");
    }
    return outStr;
}
function getExcelFileName() {
    var d = new Date();
    var curYear = d.getYear();
    var curMonth = "" + (d.getMonth() + 1);
    var curDate = "" + d.getDate();
    var curHour = "" + d.getHours();
    var curMinute = "" + d.getMinutes();
    var curSecond = "" + d.getSeconds();
    if (curMonth.length == 1) {
        curMonth = "0" + curMonth;
    }
    if (curDate.length == 1) {
        curDate = "0" + curDate;
    }
    if (curHour.length == 1) {
        curHour = "0" + curHour;
    }
    if (curMinute.length == 1) {
        curMinute = "0" + curMinute;
    }
    if (curSecond.length == 1) {
        curSecond = "0" + curSecond;
    }
    var fileName = "下载.xls";
    //alert(fileName);
    return fileName;
}
function doFileExport(inName, inStr) {
    
    var xlsWin = null;
    if (!!document.all("glbHideFrm")) {
        xlsWin = glbHideFrm;
    }
    else {
        var width = 1;
        var height = 1;
        var openPara = "left=" + (window.screen.width / 2 - width / 2)
                + ",top=" + (window.screen.height / 2 - height / 2)
                + ",scrollbars=no,width=" + width + ",height=" + height;
        xlsWin = window.open("", "_blank", openPara);
    }
    xlsWin.document.write(inStr);
    xlsWin.document.close();
    xlsWin.document.execCommand('Saveas', true, inName);
    xlsWin.close();
}
	</script>



</html>