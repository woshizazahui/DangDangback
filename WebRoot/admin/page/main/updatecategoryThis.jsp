<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	     var o=$("#o").val();
	    
	     $.ajax({
            url:"${pageContext.request.contextPath}/category/showFatherCategory",
            type:"GET",
            dataType:"json",
            success:function(data){     
               var select=$("#check");
               select.empty();
               var sections=data;
               var  op1=$("<option value='0'>第一类别</option>");
               select.append(op1); 
               var  op=null; 
               for(var  i=0;i<sections.length;i++){
                  if(sections[i].id==o){
                
                     op=$("<option selected='selected' value="+sections[i].id+"  >"+sections[i].category+"</option>");
                    
                  }else{
                     op=$("<option  value="+sections[i].id+"  >"+sections[i].category+"</option>");
                  }
                 
                   select.append(op);
               }       
            }
         })	;
        
         });
         </script>
  </head>
  
  <body onload="showCategory()">
  	<form action="${pageContext.request.contextPath}/category/updateCategoryById" onsubmit="return   confirm('您是否确定要修改?')" method="post">
     <table width="100%" border="1" cellspacing="0" cellpadding="0" class="bc setMargin5pix">
     <input type="hidden" name="category.id" value="<s:property value='category.id'  />"/>
  <tr>
    <td class="widthPer20 bgc1 txt_r">类名:</td>
    <td ><input type="text" name="category.category" id="textfield" value="<s:property value='category.category'  /> "/></td>
  </tr>
  <tr>
  
    <td class="bgc1 txt_r">父类:</td>
    <td><select id="check" name="category.parentid">
			<option id="o" value="<s:property value='category.parentid'  />"> </option>
		</select></td>
  </tr>
  <tr>
    <td  class="bgc1 txt_r">数量：</td>
    <td > 
		<input type="text" name="category.store" id="textfield" value="<s:property value='category.store'  />"/>
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
