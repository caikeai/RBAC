<%@ page import="java.util.List" %>
<%@ page import="com.henleo.rbac.domian.Menu" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
    Object obj = request.getAttribute("ALLMENUS");
    List<Menu> allmenus = new ArrayList<>();
    if (obj != null) {
        allmenus = (List<Menu>) obj;
    }
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
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
    </script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="30" background="${basePath}images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="12" height="30"><img src="${basePath}images/tab_03.gif" width="12" height="30" /></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="5%"><div align="center"><img src="${basePath}images/tb.gif" width="16" height="16" /></div></td>
                                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[权限管理]-[菜单管理]</td>
                            </tr>
                        </table></td>
                        <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center">
                                            <input type="checkbox" name="checkbox62" value="checkbox" />
                                        </div></td>
                                        <td class="STYLE1"><div align="center">全选</div></td>
                                    </tr>
                                </table></td>
                                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center"><img src="${basePath}images/22.gif" width="14" height="14" /></div></td>
                                        <td class="STYLE1"><div align="center"><a href="<%=basePath%>addmenu">新增</a></div></td>
                                    </tr>
                                </table></td>
                                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center"><img src="${basePath}images/33.gif" width="14" height="14" /></div></td>
                                        <td class="STYLE1"><div align="center">修改</div></td>
                                    </tr>
                                </table></td>
                                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="STYLE1"><div align="center"><img src="${basePath}images/11.gif" width="14" height="14" /></div></td>
                                        <td class="STYLE1"><div align="center">删除</div></td>
                                    </tr>
                                </table></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td width="16"><img src="${basePath}images/tab_07.gif" width="16" height="30" /></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="8" background="${basePath}images/tab_12.gif">&nbsp;</td>
                <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
                    <tr>
                        <td width="3%" height="22" background="${basePath}images/tab_bggif" bgcolor="#FFFFFF"><div align="center">
                            <input type="checkbox" name="checkbox" value="checkbox" />
                        </div></td>
                        <td width="5%" height="22" background="${basePath}images/tab_bggif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
                        <td width="35%" height="22" background="${basePath}images/tab_bggif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">菜单名称</span></div></td>
                        <td width="25%" height="22" background="${basePath}images/tab_bggif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">父菜单ID</span></div></td>
                        <td width="15%" background="${basePath}images/tab_bggif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">URL</span></div></td>
                        <td width="20%" height="22" background="${basePath}images/tab_bggif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
                    </tr>

                    <%
                        for (Menu menu : allmenus) {

                    %>
                    <tr>
                        <td height="20" bgcolor="#FFFFFF"><div align="center">
                            <input type="checkbox" name="checkbox2" value="checkbox" />
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
                            <div align="center"><%=menu.getMenu_id()%></div>
                        </div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=menu.getMenu_name()%></span></div></td>
                        <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=menu.getParent_id()%></span></div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=menu.getUrl()%></span></div></td>
                        <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${basePath}images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="${basePath}images/del.gif" width="16" height="16" /><a href="<%=basePath%>delmenu?id=<%=menu.getMenu_id()%>"> 删除</a></span></div></td>
                    </tr>

                    <%
                        }
                    %>
                </table></td>
                <td width="8" background="${basePath}images/tab_15.gif">&nbsp;</td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="35" background="${basePath}images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="12" height="35"><img src="${basePath}images/tab_18.gif" width="12" height="35" /></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="STYLE4">&nbsp;&nbsp;共有 120 条记录，当前第 1/10 页</td>
                        <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="40"><img src="${basePath}images/first.gif" width="37" height="15" /></td>
                                <td width="45"><img src="${basePath}images/back.gif" width="43" height="15" /></td>
                                <td width="45"><img src="${basePath}images/next.gif" width="43" height="15" /></td>
                                <td width="40"><img src="${basePath}images/last.gif" width="37" height="15" /></td>
                                <td width="100"><div align="center"><span class="STYLE1">转到第
                    <input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" />
                    页 </span></div></td>
                                <td width="40"><img src="${basePath}images/go.gif" width="37" height="15" /></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td width="16"><img src="${basePath}images/tab_20.gif" width="16" height="35" /></td>
            </tr>
        </table></td>
    </tr>
</table>
</body>
</html>
