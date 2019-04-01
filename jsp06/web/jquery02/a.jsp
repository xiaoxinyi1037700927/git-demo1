<%--
  Created by IntelliJ IDEA.
  User: xiaoxinyi
  Date: 2019/2/17
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-3.3.1.min.js"></script>
</head>
<body>
<form action="aa" method="get">
    姓名：<input type="text" name="name" value=""><span></span><br>
    密码：<input type="password" name="psw"><br>
    <input type="submit" value="提交">
</form>


<%--
<img src="../img/a.jpg" width="200px" height="200px" />
<input type="text" value="我会变魔法" />
<br /><input type="button" value="点击我">
<div id="div1" style="overflow: scroll;width: 300px;height: 200px;border: solid red 1px;">
    <img src="../img/刘亦菲.jpg" width="50px" height="80px" />
    <img src="../img/刘亦菲.jpg" width="50px" height="80px" /><br>
    <img src="../img/刘亦菲.jpg" width="50px" height="80px" />
    <img src="../img/刘亦菲.jpg" width="50px" height="80px" /><br>
    <img src="../img/刘亦菲.jpg" width="50px" height="80px" />
    <img src="../img/刘亦菲.jpg" width="50px" height="80px" /><br>
</div>
<p>一共滚动了<span>0</span>次</p>
<hr />
<select name="" id="">
    <option value="100">1</option>
    <option value="200">2</option>
    <option value="300">3</option>
</select>
--%>

</body>
<script type="text/javascript">

    $(":text").blur(function () {
        var name=$(this).trim();
        var req=new XMLHttpRequest();
        req.open("GET","/jsp06/aa?name="+name)
        req.send();
        req.onreadystatechange=function (ev) {
            if (req.readyState==4&&req.status==200) {
                $("span").html(req.responseText);
            }
        }
    })

    //非空验证第一道关卡，失去焦点时刻
    $(":text").blur(function () {
        var name=$(this).val().trim();
        if(name==""){
            alert("姓名不能为空")
            //$("span").html("姓名不能为空！")

        }
    });


    //非空验证第二道关卡，提交事件触发
    $("form").submit(function () {
        var name = $(":text").val().trim();
        if (name == "") {
            alert("姓名不能为空")
            return false;
        }
        return true;
    })
    /*$("select").change(function(){
        var v=$(this).val();
        $("img").css({"widht":v,"height":v})
    })
    var count=0;
    $("#div1").scroll(function () {
        count+=1;
        $("span").html(count);
        //向当前选中的元素添加一个子标签，自动在末尾添加
        //$(this).append("<img src='../img/刘亦菲.jpg' width='50px' height='80px' /><br>")
    })
    //图片放大
    $(":text").focus(function () {
        $("img").css({"width":300,"height":300})
    })
    $(":text").blur(function(){
        $("img").css("width",260)
    })

    //图片收缩
    $(":button").bind("click",function () {
        $("img").slideToggle();
    })*/
    //选中点击按钮，并且绑定一个点击事件
    /*$(":button").click(function () {
        //在按钮点击是会触发这个事件；
    $("img").slideToggle();
})*/

</script>
</html>
</html>