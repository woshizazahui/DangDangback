<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<html>
  <head>
     <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
     <script type="text/javascript">
        
          $(function(){
           $.ajax({
           		type:"POST",
           		url:"/dangdangManage/AjaxTest/showFirstCategory.do",
           		dataType:"json",
           		success:function(data){
           			var first =$("#first");
           			var firstcategory = data;
           			for(var i=0;i<firstcategory.length;i++){
	                             var op = $("<option value="+firstcategory[i].id+">"+firstcategory[i].categoryname+"</option>");
	                             first.append(op);
	                          }
           		}
            });
           
            $("#first").change(function(){
            	var firstvalue = $("#first").val();
            	$.ajax({
           		type:"POST",
           		url:"/dangdangManage/AjaxTest/showSecondCategory.do",
           		data:"id="+firstvalue,
           		dataType:"json",
           		success:function(data){
           			var second =$("#second");
           			second.empty();
           			var secondcategory = data;
           			for(var i=0;i<secondcategory.length;i++){
	                             var op = $("<option>"+secondcategory[i].categoryname+"</option>");
	                             second.append(op);
	                          }
           		}
           		   });
            });
          });
          
     </script>
  </head>
  <body>        
        first:  <select id="first">
             </select>
        second: <select id="second">
                  
             </select>   
        
  </body>
</html>