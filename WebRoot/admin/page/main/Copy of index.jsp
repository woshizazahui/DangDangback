<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
label.error{
				color:red
			}
</style>
<link rel="stylesheet" type="text/css" href="admin/css/global/style.css" />
 <script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="admin/js/global/js.js">	</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/message_zh_CN.js"></script>
<script type="text/javascript">
$(function(){
	$("#login").validate({
		
		rules:{
			username:{required:true,minlength:4,},
			password:{required:true,minlength:5},
			
		},
		messages:{
			username:{required:'用户名不能为空',minlength:'用户名长度不能少于4位'},
			pwd1:{required:'密码不能为空',minlength:'用户名长度不能少于5位'},
			
		}
	});
})
</script>
</head>

<body>
<div id="top"> </div>
<form id="login" name="login" action="${pageContext.request.contextPath}/admin/login" method="post">
  <div id="center">
    <div id="center_left"></div>
    <div id="center_middle">
      <div class="user">
        <label>用户名：
        <input type="text" name="name" id="user"  />
        </label>
      </div>
      <div class="user">
        <label>密　码：
        <input type="password" name="password" id="pwd"  />
        </label>
      </div>
      <div class="chknumber">
        <label>验证码：
        <input   name="code" type="text" id="chknumber" maxlength="4" class="chknumber_input" />
        </label><img  width="50px" height="20px" src="${pageContext.request.contextPath}/code/validacode" id="safecode"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a id="a"  href="javascript:void(0)" onclick="test1()"><font color="red">看不清楚换一张</font></a>
         
      </div>
    </div>
    <div id="center_middle_right"></div>
    <div id="center_submit">
      <div class="button"> <img src="admin/imgs/global/dl.gif" width="57" height="20" onclick="form_submit()" > </div>
      <div class="button"> <img src="admin/imgs/global/cz.gif" width="57" height="20" onclick="form_reset()"> </div>
    </div>
    <div id="center_right"></div>
  </div>
</form>
<div id="footer"></div>
</body>
</html>
