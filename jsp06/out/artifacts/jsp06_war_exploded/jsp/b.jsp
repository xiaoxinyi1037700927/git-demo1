<%--
  Created by IntelliJ IDEA.
  User: xiaoxinyi
  Date: 2019/2/17
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-3.3.1.min.js"></script>
</head>
<body>
<a href="http://www.baidu.com" name="ccc">访问百度</a>
<a href="aa" name="abc">访问aa</a>
</body>
<script>
    $("a:eq(1)").each(function () {
        document.write($(this).html())
    })


    /*$("[href]").each(function () {
        document.write($(this.html()))
    })*/
</script>
</html>
