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
            url:"/Dangdangback/category/selectAllCategories",
            type:"GET",
            dataType:"json",
            success:function(data){
               var select=$("#first");
               var  select1=$("#second");
                select.empty();
                var sections=data;
               for(var  i=0;i<sections.length;i++){
                  var  op=$("<option value="+sections[i].id+"  >"+sections[i].category+"</option>");
                   select.append(op);
               }
               var  childs=sections[0].childCategory;
               for(var  i=0;i<childs.length;i++){
                   var  ops=$("<option value="+childs[i].id+">"+childs[i].category+"</option>");
                     select1.append(ops);
               }
            }
         });	
           $("#first").change(function(){
	            
	                var parentid = $("#first option:selected").val(); 
	                $.ajax(
	                   {
	                     url:"${pageContext.request.contextPath}/category/selectAllByParentid",
	                     type:"GET",
	                     data:"parentid="+parentid,
	                     dataType:"json",
	                     success:function(data){
	                       
	                          var section = $("#second");      
	                          section.empty();                           
	                          var sections = data;
	                          for(var i=0;i<sections.length;i++){
	                             var op = $("<option  value="+sections[i].id+">"+sections[i].category+"</option>");
	                             section.append(op);
	                          }
	                     }
	                   }
	                );     
	           
	           });
	});
	 
	

	</script>
  </head>
  
  <body>
  	<form action="${pageContext.request.contextPath}/goods/insertGoods" method="post" enctype="multipart/form-data">
     <table width="100%" border="1" cellspacing="0" cellpadding="0" class="bc setMargin5pix">
  <tr>
    <td class="widthPer20 bgc1 txt_r">书名:</td>
    <td ><input type="text" name="goods.name" id="textfield" /></td>
      <td class="bgc1 txt_r">作者:</td>
    <td><input type="text" name="goods.author" id="textfield" /></td>
  </tr>
  <tr>
    <td  class="bgc1 txt_r">图片：</td>
    <td > 
		<input type="file" class="inputgri" name="file" />
    </td>
    <td class="bgc1 txt_r">出版社:</td>
	<td><input type="text" class="inputgri" name="goods.publish" /></td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">当当价:</td>
   <td >
		<input type="text" class="inputgri" name="goods.discountprice" />
	</td>
	 <td class="bgc1 txt_r">库存:</td>
    <td><input type="text" class="inputgri" name="goods.store" /></td>
  </tr>
   <tr>
     <td class="bgc1 txt_r">销量:</td>
    <td ><input type="text" class="inputgri" name="goods.salecount" /></td>
    <td class="bgc1 txt_r">分类:</td>
		<td valign="middle" align="left">
			<select  name="parentid" id="first" >
			</select>							
			<select id="second" name="goods.categoryid" >		
			</select>
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
