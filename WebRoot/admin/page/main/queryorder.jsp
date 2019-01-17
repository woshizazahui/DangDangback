<%@  page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@  taglib prefix="s" uri="/struts-tags" %>
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
		/*注意方法名不要写关键字click  */
			function click1(){
				$(":checkbox:gt(0)").prop("checked",$("#checkbox11").prop("checked"));
			}
			function chick2(){
				$(":checkbox:gt(1)").prop("checked",$("#checkbox4").prop("checked"));
			}
			function deleteOrder(){
				if($("input[type=checkbox]:checked").length==0){
					  alert("请选中您要删除的数据");
				}
				else{
				if(confirm("您确定是否要删除"))
					$("#form1").submit();
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
                <td width="94%" valign="bottom"><span class="STYLE1"> 管理人员基本信息列表</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
              <input type="checkbox" name="checkbox11" id="checkbox11" onclick="click1()"/>
              全选      &nbsp; <img src="admin/imgs/global/del.gif" width="10" height="10" onclick="deleteOrder()"/> 删除    &nbsp;&nbsp;   &nbsp;</span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
     <form id="form1" action="${pageContext.request.contextPath}/order/deleteOrderByOrderId">
    <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
      <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox"  name="checkbox4" id="checkbox4" onclick="chick2()"/>
        </div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">ID</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">订单号</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">金额</span></div></td>
        <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">日期</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">订单状态</span></div></td>
        <td width="15%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">用户</span></div></td>
        <td width="25%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">地址</span></div></td>
      </tr>
      <s:iterator value="orders" var="order">
      <tr>
      <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="id"  value="<s:property value="#order.id" />" id="c" />
        </div></td>
       <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.id" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.orderid" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.price" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.createtime" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.orderstaus" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.user.email" /></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#order.address.address" /></div></td>
        </s:iterator>
        
    </table>
    </form></td>
  </tr>
  <tr>
    <td height="30" align="center">
    <form id="form2" action="${pageContext.request.contextPath }/order/selectOrderByOrderId" method="post">
    	 <input type="text" name="ordernum" /> <input type="submit" name="submit" value="查询订单" />
    </form>
   </td>
  </tr>
</table>
  </body>
</html>
