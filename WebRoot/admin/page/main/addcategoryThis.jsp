<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addAdminThis.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/css/index/layout.css" />
    <link rel="stylesheet" href="admin/css/index/global.css" />
    <style type="text/css">
      table {font-size: 12px}
    </style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/index/jquery-1.10.1.min.js"> 
    </script>
	<script type="text/javascript">
	$(function(){	  
	     $.ajax({
            url:"${pageContext.request.contextPath}/category/selectAllByParentid",
            type:"GET",
            data:"parentid="+0,
            dataType:"json",
            success:function(data){     
               var select=$("#check");
                select.empty();
                var sections=data;
                var  op1=$("<option value='0'  >第一类别</option>");
                select.append(op1);    
               for(var  i=0;i<sections.length;i++){
                  var  op=$("<option value="+sections[i].id+"  >"+sections[i].category+"</option>");
                   select.append(op);
               }       
            }
         })	;
         });
         </script>
  </head>
  
  <body >
  	<form action="${pageContext.request.contextPath}/category/insertCategory" method="post">
     <table width="100%" border="1" cellspacing="0" cellpadding="0" class="bc setMargin5pix">
  <tr>
    <td class="widthPer20 bgc1 txt_r">类名:</td>
    <td ><input type="text" name="category.category" id="textfield" /></td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">父类:</td>
    <td><select id="check" name="category.parentid">
			<option id="o" value="0">第一类别</option>
			
		</select></td>
  </tr>
  <tr>
    <td  class="bgc1 txt_r">数量：</td>
    <td > 
		<input type="text" name="category.store" id="textfield" />
    </td>
  </tr> 
  <tr>
    <td colspan="4" class="txt_c">
    <input type="submit" class="btn_submit" name="button" id="button" value="提交" />
    </td>
  </tr>
</table>
</form>
  </body>
</html>
