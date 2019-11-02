<%@ page import="com.henleo.rbac.domian.Menu" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
    Object obj1 = request.getAttribute("PARTMENUS");
    Object obj2 = request.getAttribute("ALLMENUS");
    List<Menu> partmenus = new ArrayList<>();
    List<Menu> allmenus = new ArrayList<>();
    if (obj1 != null || obj2 != null) {
        partmenus = (List<Menu>) obj1;
        allmenus = (List<Menu>) obj2;
    }
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>step2</title>
</head>

<body>
<form action="${basePath}authorization3">
    <%
    // 一级菜单
    for (Menu menu : allmenus) {
    %>
    <input name="menus" value="<%=menu.getMenu_id()%>" type="checkbox"
           <%
               if (partmenus.contains(menu)) {
           %>
           checked="checked"
           <%
               }
           %>

    /><%=menu.getMenu_name()%><br/>
    <%
        // 子菜单
        for (Menu m : partmenus) {
            if (m.getParent_id() == menu.getMenu_id()) {
    %>

                &nbsp;&nbsp;&nbsp;&nbsp;<input name="menus" value="<%=m.getMenu_id()%>" type="checkbox"

                <%
                    if (partmenus.contains(m)) {
                %>
                       checked="checked"
                <%
                    }
                %>

                /><%=m.getMenu_name()%><br/>

    <%
            }
        }
    }
    %>
    <input type="hidden" name="roleid" value="<%=request.getAttribute("ROLEID")%>"/>
    <input type="submit" value="保存"/>
</form>
</body>
</html>
