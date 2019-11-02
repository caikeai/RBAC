<%@ page import="java.util.List" %>
<%@ page import="com.henleo.rbac.domian.Menu" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
    Object obj = request.getAttribute("ONELEVEL");
    List<Menu> menus = new ArrayList<>();
    if (obj != null) {
        menus = (List<Menu>) obj;
    }
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .STYLE1 {font-size: 12px}
        .STYLE3 {font-size: 12px; font-weight: bold; }
        .STYLE4 {
            color: #03515d;
            font-size: 12px;
        }
        -->
    </style>

    <script>
        var  highlightcolor='#c1ebff';
        //此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
        var  clickcolor='#51b2f6';
        function  changeto(){
            source=event.srcElement;
            if  (source.tagName=="TR"||source.tagName=="TABLE")
                return;
            while(source.tagName!="TD")
                source=source.parentElement;
            source=source.parentElement;
            cs  =  source.children;
//alert(cs.length);
            if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor=highlightcolor;
                }
        }

        function  changeback(){
            if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
                return
            if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor="";
                }
        }

        function  clickto(){
            source=event.srcElement;
            if  (source.tagName=="TR"||source.tagName=="TABLE")
                return;
            while(source.tagName!="TD")
                source=source.parentElement;
            source=source.parentElement;
            cs  =  source.children;
//alert(cs.length);
            if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor=clickcolor;
                }
            else
                for(i=0;i<cs.length;i++){
                    cs[i].style.backgroundColor="";
                }
        }

        function addMenu() {
            document.getElementById("addMenuForm").submit();
        }
    </script>

</head>

<body>

<form action="${basePath}doAddMenu" id="addMenuForm" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[权限管理]-[菜单管理]-[新增菜单]</td>
                            </tr>
                        </table></td>
                        <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center">

                                        </div></td>
                                        <td class="STYLE1"><div align="center"></div></td>
                                    </tr>
                                </table></td>
                                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center"></div></td>
                                        <td class="STYLE1"><div align="center"></div></td>
                                    </tr>
                                </table></td>
                                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center"></div></td>
                                        <td class="STYLE1"><div align="center"></div></td>
                                    </tr>
                                </table></td>
                                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center"></div></td>
                                        <td class="STYLE1"><div align="center"></div></td>
                                    </tr>
                                </table></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="8" background="images/tab_12.gif">&nbsp;</td>
                <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
                    <tr>
                        <td width="15%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center">

                        </div></td>
                        <td width="70%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"></span></div></td>
                        <td width="15%" height="22" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center"></div></td>
                    </tr>
                    <tr>
                        <td height="20" bgcolor="#FFFFFF" class="STYLE1" align="center">父菜单<div align="center">
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
                            <div align="center">
                                <%--<input type="text" name="receivenumber"/>--%>
                                <select name="parent_id">
                                    <option value="0">请选择父菜单</option>
                                    <%
                                        for (Menu menu: menus) {
                                    %>
                                    <option value="<%=menu.getMenu_id()%>"><%=menu.getMenu_name()%></option>
                                    <%}%>

                                </select>
                            </div>
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"></span></div></td>
                    </tr>

                    <tr>
                        <td height="20" bgcolor="#FFFFFF" class="STYLE1" align="center">菜单名称<div align="center">
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
                            <div align="center"><input type="text" name="menu_name"/></div>
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"></span></div></td>
                    </tr>

                    <tr>
                        <td height="20" bgcolor="#FFFFFF" class="STYLE1" align="center">URL<div align="center">
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
                            <div align="center"><input type="text" name="URL"/></div>
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"></span></div></td>
                    </tr>


                    <tr>
                        <td height="20" colspan="3" bgcolor="#FFFFFF" class="STYLE1" align="center"><div align="center">
                            <input type="button" onclick="addMenu();" value="确定"/>&nbsp;&nbsp;<input type="reset" value="重置"/>
                        </div></td>

                    </tr>


                </table></td>
                <td width="8" background="images/tab_15.gif">&nbsp;</td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="STYLE4">&nbsp;&nbsp;</td>
                        <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="40"></td>
                                <td width="45"></td>
                                <td width="45"></td>
                                <td width="40"></td>
                                <td width="100"><div align="center"><span class="STYLE1"></span></div></td>
                                <td width="40"></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
            </tr>
        </table></td>
    </tr>
</table>
</body>
</form>
</html>
