<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib prefix="s" uri="/struts-tags" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
		.moveIn{
           color:#FFF;
           background-color: #CCC;
           cursor: pointer;
        }
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
    	   location.href="/Dangdangback/goods/queryBooks?pageIndex="+pageIndex;
		}
       function moveIn(tr){
           $(tr).removeClass();
           $(tr).addClass("moveIn");
        }
        function moveOut(tr){
          $(tr).removeClass();
        }
        function check(){
        	$(":checkbox:gt(0)").prop("checked",$("#checkbox11").prop("checked"));
        }
        function check1(){
        	$(":checkbox:gt(1)").prop("checked",$("#checkbox4").prop("checked"));
        }
        function t(a){ 
        
           if($(a).text().trim()=="上架"){
              return   confirm("您是否确定要上架");
           }else{
                return   confirm("您是否确定要下架");
           
           }
        
        }
    </script>
  </head>
  
  <body>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="admin/imgs/global/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1">图书基本信息列表</span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
      	
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">ID</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">书名</span></div></td>
        <td width="7%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">作者</span></div></td>
        <td width="15%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">图片</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">出版社</span></div></td>
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">当当价</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">库存</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">状态</span></div></td>
        <td width="8%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">销量</span></div></td>
        <td width="13%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">类别</span></div></td>
        <td width="17%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">操作</span></div></td>
      </tr>
      <s:iterator value="goods" var="a">  
      <tr onmouseover="moveIn(this)" onmouseout="moveOut(this)"> 
        <td height="20" ><div align="center"><s:property value="#a.id"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.name"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.author"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">
		<img src="<s:property value="#a.coverurl"/>" width="50px" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.publish"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.discountprice"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.store"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.state"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.salecount"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#a.categoryid"/></div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE21">
            <s:if  test='#a.state.equals("未上架")'>
        	<a   href="${pageContext.request.contextPath}/goods/updateStatus?id=<s:property value="#a.id"/>&status=<s:property value="#a.state"/>"  onclick="return t(this)">上架 </a>| 
        	</s:if>
        	<s:else>
	        <a    href="${pageContext.request.contextPath}/goods/updateStatus?id=<s:property value="#a.id"/>&status=<s:property value="#a.state"/>" onclick="return t(this)">下架 </a>| 
        	</s:else>
        	<a href="${pageContext.request.contextPath}/goods/selectGoods?id=<s:property value="#a.id" />">更改</a></span></div></td>
        </tr>
   </s:iterator>
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;当前第<strong><s:property value="pageIndex"/></strong> 页，共 <strong><s:action namespace="/goods" name="getCount" executeResult="true"/></strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td width="49"><div align="center" class="STYLE22">
				 <s:if test="pageIndex>1">
				 <a href="${pageContext.request.contextPath}/goods/queryBooks?pageIndex=<s:property value="pageIndexN-1" />">上一页</a>
			    </s:if>
				
					
				
			</div></td>
            <td width="49"><div align="center" class="STYLE22">
			 <s:if test='pageIndex<2'>	
			  <a href="${pageContext.request.contextPath}/goods/queryBooks?pageIndex=<s:property value="pageIndexN+1" />">下一页</a>
		     </s:if>		
			
					 
				
			</div></td>
            
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
            <%-- <s:set name="ss" scope="session" value="<s:action namespace="/goods" name="getCount" executeResult="true"/>" ></s:set>
           	 --%>
              <%--   <select name="pageIndex"  id="selectPage">
                <c:forEach begin="2" end="${sessionScope.ss}" var="s" >
                    
                    
                     <option value="${s}">${s}</option>
                     </c:forEach>
                </select> --%>
                <select name="pageIndex"  id="selectPage">
                	<option value="1">1</option>
                     <option value="2">2</option>
                 </select>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"><input type="button" value="跳转" onclick="changePage();"/></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
  </body>
</html>
