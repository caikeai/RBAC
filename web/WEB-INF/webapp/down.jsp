<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        -->
    </style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="6" background="${basePath}images/main_59.gif" style="line-height:6px;"><img
                src="${basePath}images/main_59.gif" width="6" height="6"></td>
        <td background="${basePath}images/main_61.gif" style="line-height:6px;">&nbsp;</td>
        <td width="6" background="${basePath}images/main_61.gif" style="line-height:6px;"><img
                src="${basePath}images/main_62.gif" width="6" height="6"></td>
    </tr>
</table>
</body>
</html>
