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
		a{
			text-decoration:none
		}
		a:hover{
			color:red
		}
		-->
		</style>
		  <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/index/jquery-1.10.1.min.js"> </script>
		<script type="text/javascript">
       function changePage() {
    	   var pageSelect=$("#selectPage");
    	   var pageIndex=pageSelect.val();
    	   location.href="/Dangdangback/user/showUsers?pageIndex="+pageIndex;
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
        
        function  over(img){
            
          $(img).css("cursor","pointer");
        
        }
      	function down(){ 
      	var pageIndex=$("#pageIndex").val();
      	if(confirm("确定要下载吗"))
      		location.href="/Dangdangback/user/downMessage?pageIndex="+pageIndex;
      	}
       
    </script>
  </head>
  
  <body>
   <form id="form" action="${pageContext.request.contextPath}/user/downMessage"  method="get">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="admin/imgs/global/tb.gif" width="14" height="14" /></div></td>
                <td width="74%" valign="bottom"><span class="STYLE1">用户基本信息列表</span></td>
                <td width="20%" valign="bottom"><span class="STYLE1"><a href="javascript:void(0)" onclick="down()">下载用户信息</a></span></td>
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
        
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">ID</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">邮箱</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">昵称</span></div></td>
         <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">注册时间</span></div></td>
         <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">状态</span></div></td>
          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">手机号码</span></div></td>
      <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">操作</span></div></td>
      </tr>
    <s:iterator  value="users"  >
    
      <tr>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="id" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="email" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="nickname" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="regtime" /></div></td>    
         <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="state" /></div></td>    
          <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="phone" /></div></td>    
        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE21">
        <s:if test="state=='Yes'">
        <a href="${pageContext.request.contextPath}/user/updateStatus?id=<s:property value="id" />&status=<s:property value="state" />">冻结</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/page/main/sendMessage.jsp?phone=<s:property value="phone" />&nickname=<s:property value="nickname" />">发送短信</a></span></div></td>
        </s:if>
        <s:else>
         <a href="${pageContext.request.contextPath}/user/updateStatus?id=<s:property value="id" />&status=<s:property value="state" />">激活</a></span></div></td>
        </s:else>
       
      </tr>
    </s:iterator>
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;当前第<strong> ${pageIndex }</strong> 页，共 <strong>1</strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td width="49"><div align="center" class="STYLE22">
				 <s:if test="pageIndex>1">
				 <a href="${pageContext.request.contextPath}/user/showUsers?pageIndex=<s:property value="pageIndex-1" />">上一页</a>
			    </s:if>
				 
					
				
			</div></td>
            <td width="49"><div align="center" class="STYLE22">
			 <s:if test="pageIndex<1">	
			  <a href="${pageContext.request.contextPath}/user/showUsers?page.pageIndex=<s:property value="page.pageIndex+1" />">下一页</a>
		     </s:if>		
		
					 
				
			</div></td>
            
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
            <s:set name="ss" scope="session" value="page.pageCount" ></s:set>
           
                <select name="pageIndex" id="selectPage">

                     <option value="1">1</option>
                
                </select>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"><input type="button" value="跳转" onclick="changePage();"/></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<!-- 下载用户信息：将页数传过去，查询当前页员工信息 -->
<input type="hidden" id="pageIndex" name="pageIndex" value="${pageIndex }">
</form>
  </body>
</html>
