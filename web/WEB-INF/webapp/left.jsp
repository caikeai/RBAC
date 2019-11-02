<%@ page import="java.util.List" %>
<%@ page import="com.henleo.rbac.domian.Menu" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
    Object obj = session.getAttribute("MENUS");
    List<Menu> menus = new ArrayList<>();
    if (obj != null && obj instanceof List) {
        menus = (List<Menu>) obj;
    }
%>

<style type="text/css">
    <!--
    body {
        margin-left: 0px;
        margin-top: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
    }
    .STYLE1 {
        font-size: 12px;
        color: #FFFFFF;
    }
    .STYLE3 {
        font-size: 12px;
        color: #033d61;
    }
    -->
</style>
<style type="text/css">
    .menu_title SPAN {
        FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px
    }
    .menu_title2 SPAN {
        FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
    }

</style>
<script>
    var he=document.body.clientHeight-105
    document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>

<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td height="28" background="${basePath}images/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="19%">&nbsp;</td>
                <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
            <%--<c:forEach items="${menus}" var="menu" varStatus="m">--%>
                <%--${m.index}${menu}--%>
            <%--</c:forEach>--%>
            <%for (Menu menu: menus) {
                if (menu.getParent_id() == 0) {
            %>
            <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="23" background="${basePath}images/main_47.gif" id="imgmenu<%=menu.getMenu_id()%>" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(<%=menu.getMenu_id()%>)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="18%">&nbsp;</td>
                                <td width="82%" class="STYLE1"><%=menu.getMenu_name()%></td>
                            </tr>
                        </table></td>
                    </tr>
                    <tr>
                        <td background="${basePath}images/main_51.gif" id="submenu<%=menu.getMenu_id()%>">
                            <div class="sec_menu" >
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">

                                            <%
                                                for (Menu m : menus) {
                                                    if (m.getParent_id() == menu.getMenu_id()) {

                                            %>
                                            <tr>
                                                <td width="16%" height="25"><div align="center"><img src="${basePath}images/left.gif" width="10" height="10" /></div></td>
                                                <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a target="I3" href="<%=basePath%><%=m.getUrl()%>"><%=m.getMenu_name()%></a></span></td>
                                                    </tr>
                                                </table></td>
                                            </tr>
                                            <%
                                                    }
                                                }
                                            %>

                                        </table></td>
                                    </tr>
                                    <tr>
                                        <td height="5"><img src="${basePath}images/main_52.gif" width="151" height="5" /></td>
                                    </tr>
                                </table></div></td>
                    </tr>

                </table></td>
            </tr>

            <%
                    }
                }
            %>
    <tr>
        <td height="18" background="${basePath}images/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td height="18" valign="bottom"><div align="center" class="STYLE3">版本：2019.10.31</div></td>
            </tr>
        </table></td>
    </tr>
</table>
<script>




    function showsubmenu(sid)
    {
        whichEl = eval("submenu" + sid);
        imgmenu = eval("imgmenu" + sid);
        if (whichEl.style.display == "none")
        {
            eval("submenu" + sid + ".style.display=\"\";");
            imgmenu.background="${basePath}images/main_47.gif";
        }
        else
        {
            eval("submenu" + sid + ".style.display=\"none\";");
            imgmenu.background="${basePath}images/main_48.gif";
        }
    }

</script>