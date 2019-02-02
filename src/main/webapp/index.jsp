<%--
  Created by IntelliJ IDEA.
  User: MrLiu
  Date: 2019/2/2
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>首页</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>

    <div>,欢迎您</div>
    <div align="center">
        <a href="${pageContext.request.contextPath}/findUserByPageServlet" style="text-decoration:none;font-size:33px">
            查询所有用户信息
        </a>
    </div>
</body>
</html>
