<%@ page language="java"  import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/index/jquery-1.10.1.min.js"> </script>
	<script type="text/javascript">
	   
		$(function(){	  
		        //只有放在ajax外边才可以拿到
                var o=$("#o").val();
                
                var p=$("#p").val();
                  
	     $.ajax({
            url:"${pageContext.request.contextPath}/category/selectAllCategories",
            type:"GET",
            dataType:"json",
            success:function(data){
               var select=$("#first");
               var  select1=$("#second");
               //加载之前清空  标签
                select.empty();
                select1.empty();
                var sections=data;
                var op=null;
                var ops=null;
              
               for(var  i=0;i<sections.length;i++){
                  //判断父类id是否相同  
                  if(o==sections[i].id){
                  
                 op=$("<option selected='selected' value="+sections[i].id+"  >"+sections[i].category+"</option>");
                  }else{
                      op=$("<option value="+sections[i].id+"  >"+sections[i].category+"</option>");
                  }
                   select.append(op);
                   var childs=sections[i].childCategory;
                //判断子类id是否相同
                //最好形参名不一致
                console.log(childs);
                 for(var  j=0;j<childs.length;j++){      
                  console.log(childs[j].id);
                   if(p==childs[j].id){        
                      ops=$("<option selected='selected' value="+childs[j].id+">"+childs[j].category+"</option>");       
                   }else{
                      ops=$("<option  value="+childs[j].id+">"+childs[j].category+"</option>");
                   }                      
                     select1.append(ops);
               } 
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
           $("#first").change(function(){
	                var parentid = $("#first option:selected").val();       
	                $.ajax(
	                   {
	                     url:"${pageContext.request.contextPath}/category/selectAllByParentid",
	                     type:"GET",
	                     data:"id="+parentid,
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

	</script>
  </head>
  <body >
  	<form action="${pageContext.request.contextPath}/goods/updateGoods" method="post" onsubmit="return  confirm('您是否确定修改此数据')" enctype="multipart/form-data">
     <table width="100%" border="1" cellspacing="0" cellpadding="0" class="bc setMargin5pix">
     <input type="hidden" name="goods.id" value='<s:property value="goods.id" />' /> 
  <tr>
    <td class="widthPer20 bgc1 txt_r">书名:</td>
    <td ><input type="text" name="goods.name" id="textfield" value="<s:property value="goods.name" />"/></td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">作者:</td>
    <td><input type="text" name="goods.author" id="textfield" value="<s:property value="goods.author" />"/></td>
  </tr>
  <tr>
    <td  class="bgc1 txt_r">图片：</td>
    <td >  
         <input  type="hidden" name="goods.coverurl" value="<s:property value="goods.coverurl" />" />
		<img src="<s:property value="goods.coverurl" />" width="50px" />
    </td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">新图片：</td>
	<td><input type="file" class="inputgri" name="upload"/></td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">出版社:</td>
	<td><input type="text" class="inputgri" name="goods.publish" value="<s:property value="goods.publish" />"/></td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">当当价:</td>
   <td >
		<input type="text" class="inputgri" name="goods.discountprice" value="<s:property value="goods.discountprice" />"/>
	</td>
  </tr>
  <tr>
    <td class="bgc1 txt_r">状态:</td>
    <td><input type="text" class="inputgri" name="goods.state" value="<s:property value="goods.state" />"/></td>
  </tr> 
   <tr>
    <td class="bgc1 txt_r">库存:</td>
    <td><input type="text" class="inputgri" name="goods.store" value="<s:property value="goods.store" />"/></td>
  </tr> 
  <tr>
     <td class="bgc1 txt_r">销量:</td>
    <td ><input type="text" class="inputgri" name="goods.salecount" value="<s:property value="goods.salecount" />"/></td>
  </tr>
  <tr>
	<td class="bgc1 txt_r">分类:</td>
		<td valign="middle" align="left">
		
			<select  name="goods.category.parentid" id="first">
			  <option  id="o" value="<s:property value="goods.category.parentid" />"/>
		    </select>							
			<select id="second" name="goods.categoryid" >
		    	<option id="p"  value="<s:property value="goods.category.id" />"/>

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
