<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>车辆管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body class=""> 
  <!--<![endif]-->
    	    <!--页头开始-->
<%@include file="baseInclude.jsp" %>
    
    <div class="content">
        
        <div class="header">
            
            <h1 class="page-title">新增驾驶员信息</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="main.jsp">主页</a> <span class="divider">/</span></li>
            <li><a href="driverInfoList">驾驶员信息</a> <span class="divider">/</span></li>
            <li class="active">新增驾驶员信息</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
  </div>
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">新增驾驶员信息</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
    <form id="tab" name="formAdd" method="post" action="${pageContext.request.contextPath}/driverInfoAdd">
   <%--  ${pageContext.request.contextPath}/driverInfoUpdate.jsp?id=${driverInfo.driverInfoId}&name=${driverInfo.driverName}&age=${driverInfo.driverAge}&type=${driverInfo.driverType}&grade=${driverInfo.driverGrade}&state=${driverInfo.driverState} --%>
       
        <label>姓名</label>
        <input type="text" value="" name="driverInfo.driverName" class="input-xlarge">
        <label>年龄</label>
        <input type="text" value="" name="driverInfo.driverAge" class="input-xlarge">
        <label>驾驶证类型</label>
        <input type="text" value="" name="driverInfo.driverType" class="input-xlarge">
        <label>等级</label>
        <input type="text" value="" name="driverInfo.driverGrade" class="input-xlarge">
        <label>人员状态</label>
        <input value="" name="driverInfo.driverState" class="input-xlarge">
        <div class="btn-toolbar">
        <input type="submit" class="btn btn-primary" value="提交">
        <input type="reset" class="btn" value="重置">
<!-- <div class="btn-toolbar">
    <button class="btn btn-primary" onclick="submitBtnClick()"><i class="icon-save"></i> 保存</button>
    <input type="reset" class="btn" value="重置">
  <div class="btn-group"> -->
  </div>
     
    </form>
      </div>
      <div class="tab-pane fade" id="profile">
      </div>
  </div>

</div>

<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Delete Confirmation</h3>
  </div>
  <div class="modal-body">
    
    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
  </div>
  
</div>


                    
                    
                    
            </div>
        </div>
    </div>
    


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
        function submitBtnClick(){
        document.formAdd.submit();
        }
        var priSet = $("#aa").val();
		var sArr = priSet.split(",");
		/* if($.inArray(9,sArr)==-1 ){
			 alert($.inArray(9,sArr)==-1);
		      	var ui =document.getElementById("shenpiPage");
		  		ui.style.display="none";
		      }
		if($.inArray(4,sArr)==-1){
			var ui =document.getElementById("dangAnPage");
			ui.style.display="none";
		}
		 */
			var s = 0;
			var r = 0;
			var k = 0;
			var l = 0;
			for (var i = 0; i < sArr.length; i++) {

				if (sArr[i] == 9) {
					s = 1;
				}
				if (sArr[i] == 4) {
					r = 1;
				}
				if (sArr[i] == 10) {
					k = 1;
				}
				if (sArr[i] == 11) {
					l = 1;
				}
			}
			//9审批页面权限
			if (s == 0) {
				var ui = document.getElementById("shenpiPage");
				ui.style.display = "none";
			}
			//4档案页面权限
			if (r == 0) {
				var ui = document.getElementById("dangAnPage");
				ui.style.display = "none";
			}
			//10车辆调度权限
			if (k == 0) {
				var ui = document.getElementById("carDiaodu");
				ui.style.display = "none";
			}
			////11进出车记录功能
			if (l == 0) {
				var ui = document.getElementById("runbackCarInfo");
				ui.style.display = "none";
			}
			
    </script>
    
  </body>
</html>


