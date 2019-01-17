<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<html>  
<head>  
<meta charset="gbk" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/echar/jquery-1.8.3.js"></script>  
        <script type="text/javascript" src="${pageContext.request.contextPath}/echar/echarts.js"></script>  
</head>  
    
<body>      
    <div>  
        <div id="main" style="float:left;height:500px;width:620px;padding:0px;"></div>  
        <div id="pc" style="float:right;height:500px;width:600px;padding:20px;"></div>  
    </div>  
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById("main"));
       option = {
    title : {
        text: '当当网图书销量饼状图',
        subtext: '按类别计算',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data:[]
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
              
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
         var names=[];    //类别数组
         var nums=[];    //销量数组
     $.ajax({
         type : "post",
         async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
         url : "${pageContext.request.contextPath}/category/createEchars",    //请求发送到TestServlet处
         data : {},
         dataType : "json",        //返回数据形式为json
         success : function(result) {
             //请求成功时执行该函数内容，result即为服务器返回的json对象
             if (result) {
                    for(var i=0;i<result.length;i++){ 
                       
                       names.push(result[i].name);    //挨个取出类别并填入类别数组
                     }
                    for(var i=0;i<result.length;i++){    
                      
                        nums.push(result[i]);    //挨个取出销量并填入销量数组
                      }
                    myChart.hideLoading();    //隐藏加载动画
                    myChart.setOption({        //加载数据图表
                         legend: {
                            data: names
                        },
                        series: [{
                            // 根据名字对应到相应的系列
                            name: '销量',
                            data: nums
                        }]
                    });
                    
             }
         
        },
         error : function(errorMsg) {
             //请求失败时执行该函数
         alert("图表请求数据失败!");
         myChart.hideLoading();
         }
    });
 // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        </script>  
      
</body>  
</html>  