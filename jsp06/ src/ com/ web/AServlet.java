package com.web;

import java.io.IOException;

public class AServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        //1.去哪 2.携带什么参数 3.回来之后如何获取servlet响应的数据 4.给出提示
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        if(name.equals("曹操")){
            response.getWriter().write("欢迎曹丞相!!!!");
        }else {
            response.getWriter().write("来者何人？");
        }
    }
}
