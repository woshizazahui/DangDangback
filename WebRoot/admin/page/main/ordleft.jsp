﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="kuaige" uri="/kuaige/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'left.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="admin/js/global/jquery.js"></script>
		<script type="text/javascript" src="admin/js/global/chili-1.7.pack.js"></script>
		<script type="text/javascript" src="admin/js/global/jquery.easing.js"></script>
		<script type="text/javascript" src="admin/js/global/jquery.dimensions.js"></script>
		<script type="text/javascript" src="admin/js/global/jquery.accordion.js"></script>
		<script language="javascript">
			jQuery().ready(function(){
				jQuery('#navigation').accordion({
					header: '.head',
					navigation1: true, 
					event: 'click',
					fillSpace: true,
					animated: 'bounceslide'
				});
			});
		</script>
		<style type="text/css">
		<!--
		body {
			margin:0px;
			padding:0px;
			font-size: 12px;
		}
		#navigation {
			margin:0px;
			padding:0px;
			width:147px;
		}
		#navigation a.head {
			cursor:pointer;
			background:url(admin/imgs/global/main_34.gif) no-repeat scroll;
			display:block;
			font-weight:bold;
			margin:0px;
			padding:5px 0 5px;
			text-align:center;
			font-size:12px;
			text-decoration:none;
		}
		#navigation ul {
			border-width:0px;
			margin:0px;
			padding:0px;
			text-indent:0px;
		}
		#navigation li {
			list-style:none; display:inline;
		}
		#navigation li li a {
			display:block;
			font-size:12px;
			text-decoration: none;
			text-align:center;
			padding:3px;
		}
		#navigation li li a:hover {
			background:url(admin/imgs/global/tab_bg.gif) repeat-x;
				border:solid 1px #adb9c2;
		}
		-->
		</style>

  </head>
  
  <c:set var="path" scope="page" value="${pageContext.request.contextPath }/admin/page/main"></c:set>
  
  <body>
    <div  style="height:100%;">
  <ul id="navigation">
  <kuaige:zkf resource="users"  >
    <li> <a class="head">用户管理</a>
      <ul>
        <li><a href="${pageContext.request.contextPath}/user/showUsers" target="rightFrame">用户管理</a></li>
      </ul>
    </li>
   </kuaige:zkf>
   <kuaige:zkf resource="product"  >
    <li> <a class="head">商品管理</a>
      <ul>
        <li><a href="${pageContext.request.contextPath }/admin/page/main/addBookThis.jsp" target="rightFrame">增加商品</a></li>
        <li><a href="${pageContext.request.contextPath }/goods/queryBooks?pageIndex=1" target="rightFrame">商品列表</a></li>
      </ul>
    </li>
    </kuaige:zkf>
   
  </ul>
</div>
  </body>
</html>
