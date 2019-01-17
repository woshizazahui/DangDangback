<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateRole.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/css/index/layout.css" />
    <link rel="stylesheet" href="admin/css/index/global.css" />
    <script type="text/javascript" src="admin/js/index/jquery-1.10.1.min.js"></script>
    <style type="text/css">
      table {font-size: 12px}
    </style>
   <script type="text/javascript">
 	
	   function test1(){
	    var  nickname=$("#nickname").val();
	    var   phone=$("#name").val();
	    var   message=$("#message").val();
	   
	    $.ajax({
          url:"${pageContext.request.contextPath}/user/sendmessage",
          type:"GET",
          data:"nickname="+nickname+"&phone="+phone+"&message="+message,
          dataType:"text",
          success:function(data){
               if(data=='true'){
            	   alert("发送短信成功");
               }else{
            	   alert("发送短信失败");
               }
              
          }
       });	
	   };

   
   </script>
  </head>
  
  <body>
    <form   method="post">
    <table width="100%" border="1" cellspacing="0" cellpadding="0" class="bc setMargin5pix">
  <tr>
    <td class="bgc1 txt_r"><span class="color_red">*</span>收信人:</td>
    <td colspan="3"><input type="text" name="username" id="name" value="${param.phone}"/></td>
    <input id="nickname" type="hidden" name="nickname" value="${param.nickname}" >
  </tr>
  <tr>
    <td  class="bgc1 txt_r">内容</td>
    <td colspan="3"> 
    <textarea id="message" rows="5" cols="30" name="msgContent"></textarea>
    </td>
  </tr> 
  <tr>
    <td colspan="4" class="txt_c"><input type="button" onclick="test1()" class="btn_submit" name="button" id="button" value="提交" />
    <input type="reset" name="button2" class="btn_reset" id="button2" value="重置" /></td>
  </tr>
</table>
</form>
  </body>
</html>
