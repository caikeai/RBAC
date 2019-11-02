<%@ page import="com.henleo.rbac.domian.Role" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
    Object obj = request.getAttribute("ROLES");
    List<Role> roles = new ArrayList<>();
    if (obj != null) {
        roles = (List<Role>) obj;
    }
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>step1</title>
</head>

<body>
<form action="${basePath}authorization2">
    <select name="roleid">
        <option value="0" selected="selected">--请选择角色--</option>
        <%
            for (Role role: roles) {
        %>
            <option value="<%=role.getRole_id()%>">--<%=role.getRole_name()%>--</option>
        <%
            }
        %>
    </select>&nbsp;&nbsp;
    <input type="submit" value="确定"/>
</form>
</body>
</html>
