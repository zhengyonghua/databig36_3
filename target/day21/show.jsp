<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>echarts</title>
    <script src="js/echarts.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>

</head>
<body>
<div id="main" style="width: 600px;height:400px;"/>
</body>

    <script>
    //1.获取echart对象
    var echart = echarts.init(document.getElementById("mychart"));
    //2.页面加载,发送异步请求
    $(function(){
        /**
         * 发送ajax请求的格式
         *  $.post(url,参数,function(data){
         *      alert(data);
         *  },"text")
         */

        $.get("/day21_echarts/data.json",function(data){
            alert(data)
            //给echart对象设置data (json格式的字符串)
            echart.setOption({
                xAxis: {
                    type: 'category',
                    data: data.xData
                },
                yAxis: {
                    type: 'value'
                },
                series: [{
                    data: data.seriesData,
                    type: 'bar'
                }]
            })

        },"text")

    })

</script>
</html>
