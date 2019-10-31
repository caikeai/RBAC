<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>企业信息管理系统</title>
</head>

<frameset rows="98,*,8" frameborder="no" border="0" framespacing="0">
    <frame src="${basePath}top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame"/>
    <frame src="${basePath}center" name="mainFrame" id="mainFrame"/>
    <frame src="${basePath}down" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame"/>
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>
