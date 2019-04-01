<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/jquery-1.8.3.min.js"></script>
  </head>
  <body>
  <h1>测试</h1>
  <%--<div>
    <h1 id="a">课工场</h1>
  </div>
  <h2 class="b">鲁广教学部</h2>--%>
  <img src="img/a.jpg" width="200px" height="200px">
  <input type="text" value="我会变魔法" />
  <input type="button" value="点击我">

  <div id="div1" style="overflow: scroll;width: 300px;height: 200px;border: solid red 1px;">
  <img src="F:\jsp06\web\img\a.jpg" width="50px" height="80px" />

  </div>
  <p>一共滚动了<span>0</span>次</p>
  </body>
  <script type="text/javascript">
    $("h1").hide();
    /*$(":button").click(function () {
        $("img").slideToggle();
    })
    $(":button").bind("click",function () {
        $("img").slideToggle();
    })
    $(":text").focus(function () {
        $("img").css({"width":200,"height":300})
    })
    var count=0;
    $("#div1").scroll(function () {
        count+=1;
        $("span").html();
    })*/
  </script>
</html>
