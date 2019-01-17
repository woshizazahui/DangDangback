<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
			<style type="text/css">
		<!--
		body {
			margin-left: 3px;
			margin-top: 0px;
			margin-right: 3px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			color: #e1e2e3;
			font-size: 12px;
		}
		.STYLE6 {color: #000000; font-size: 12; }
		.STYLE10 {color: #000000; font-size: 12px; }
		.STYLE19 {
			color: #344b50;
			font-size: 12px;
		}
		.STYLE21 {
			font-size: 12px;
			color: #3b6375;
		}
		.STYLE22 {
			font-size: 12px;
			color: #295568;
		}
		-->
		</style>
		  <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/index/jquery-1.10.1.min.js"> </script>
		<script type="text/javascript">
       function changePage() {
    	   var pageSelect=$("#selectPage");
    	   var pageIndex=pageSelect.val();
    	   location.href="/Dangdangback/category/showCategorys?pageIndex="+pageIndex;
		}
       function moveIn(tr){
           $(tr).removeClass();
           $(tr).addClass("moveIn");
        }
        function moveOut(tr){
          $(tr).removeClass();
        }
        function check(){
        /* $(":checkbox:gt(0)")表示获取在选择器的基础上选择下标大于0的*/
        	$(":checkbox:gt(0)").prop("checked",$("#checkbox11").prop("checked"));
        }
        function check1(){
        	$(":checkbox:gt(1)").prop("checked",$("#checkbox4").prop("checked"));
        }
        function  deleteAll(){
          
             if($("input[type=checkbox]:checked").length==0){
               alert("请选中您要删除的数据");
             }else{
                if(confirm("您确定是否要删除")){
                $("#form").get(0).submit();
                }
                
             }        
        }
        function  over(img){
            
          $(img).css("cursor","pointer");
        
        }
    </script>
  </head>
  
  <body>
   <form id="form" action="${pageContext.request.contextPath}/category/deleteCategory">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="admin/imgs/global/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1">图书类别基本信息列表</span></td>
              </tr>
            </table></td>
            
            <td><div align="right"><span class="STYLE1">
              
              <input type="checkbox" name="checkbox11" id="checkbox11" onclick="check()"/>
                       全选 &nbsp;&nbsp;<img src="admin/imgs/global/del.gif" width="10" height="10" onmouseover="over(this)" onclick="deleteAll()" /> 删除    &nbsp;&nbsp;</span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox"  name="checkbox4" id="checkbox4" onclick="check1()"/>
        </div></td>
        <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">ID</span></div></td>
        <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">类名</span></div></td>
        <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">父类id</span></div></td>
        <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">数量</span></div></td>
         <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">按钮</span></div></td>
      </tr>
    <s:iterator value="category"  var="c">
      <tr>
       <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="id"  value="<s:property value="#c.id" />" id="c" />
        </div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#c.id" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#c.category" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#c.parentid" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#c.store" /></div></td>    
        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE21">
        <a href="${pageContext.request.contextPath}/category/showCategoryByID?id=<s:property value="#c.id" />">更改</a></span></div></td>
      </tr>
    </s:iterator>
     <input type="hidden" name="pageIndex" value="<s:property value="pageIndex" />" />
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;当前第<strong> ${pageIndex}</strong> 页，共 <strong>${maxPage}</strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td width="49"><div align="center" class="STYLE22">
				 <s:if test="pageIndex>1">
				 <a href="${pageContext.request.contextPath}/category/showCategorys?pageIndex=<s:property value="pageIndex-1" />">上一页</a>
			    </s:if>
				 <s:else>
				      上一页
				 </s:else>
					
				
			</div></td>
            <td width="49"><div align="center" class="STYLE22">
			 <s:if test="pageIndex<maxPage">	
			  <a href="${pageContext.request.contextPath}/category/showCategorys?pageIndex=<s:property value="pageIndex+1" />">下一页</a>
		     </s:if>		
			<s:else>
				下一页
			</s:else>
					 
				
			</div></td>
            
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
            <s:set name="ss" scope="session" value="maxPage" ></s:set>
           
                <select name="pageIndex" id="selectPage">
                <c:forEach begin="2" end="${sessionScope.ss}" var="s" step="1">
                    
                    
                     <option value="${s}">${s}</option>
                     </c:forEach>
                </select>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"><input type="button" value="跳转" onclick="changePage();"/></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
  </body>
</html>
