<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
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
        .STYLE1 {
            font-size: 12px;
            color: #FFFFFF;
        }
        .STYLE2 {font-size: 9px}
        .STYLE3 {
            color: #033d61;
            font-size: 12px;
        }
        -->
    </style>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
    <tr>
        <td height="70" background="${basePath}images/main_05.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                <tr>
                    <td height="24">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="270" height="24" background="${basePath}images/main_03.gif">&nbsp;</td>
                                <td width="505" background="${basePath}images/main_04.gif">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td width="21"><img src="${basePath}images/main_07.gif" width="21" height="24" /></td>
                            </tr>
                            </tbody>
                        </table></td>
                </tr>
                <tr>
                    <td height="38">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="270" height="38" background="${basePath}images/main_09.gif">&nbsp;</td>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td width="77%" height="25" valign="bottom">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                    <tr>
                                                        <td width="50" height="19">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_12.gif" width="49" height="19" />
                                                            </div></td>
                                                        <td width="50">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_14.gif" width="48" height="19" />
                                                            </div></td>
                                                        <td width="50">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_16.gif" width="48" height="19" />
                                                            </div></td>
                                                        <td width="50">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_18.gif" width="48" height="19" />
                                                            </div></td>
                                                        <td width="50">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_20.gif" width="48" height="19" />
                                                            </div></td>
                                                        <td width="26">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_21.gif" width="26" height="19" />
                                                            </div></td>
                                                        <td width="100">
                                                            <div align="center">
                                                                <img src="${basePath}images/main_22.gif" width="98" height="19" />
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    </tbody>
                                                </table></td>
                                            <td width="220" valign="bottom" nowrap="nowrap">
                                                <div align="right">
                                                    <span class="STYLE1"><span class="STYLE2">■</span> 今天是：20087年5月12日 星期一</span>
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="21"><img src="${basePath}images/main_11.gif" width="21" height="38" /></td>
                            </tr>
                            </tbody>
                        </table></td>
                </tr>
                <tr>
                    <td height="8" style=" line-height:8px;">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="270" background="${basePath}images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
                                <td width="505" background="${basePath}images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
                                <td style=" line-height:8px;">&nbsp;</td>
                                <td width="21" style=" line-height:8px;"><img src="${basePath}images/main_31.gif" width="21" height="8" /></td>
                            </tr>
                            </tbody>
                        </table></td>
                </tr>
                </tbody>
            </table></td>
    </tr>
    <tr>
        <td height="28" background="${basePath}images/main_36.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                <tr>
                    <td width="177" height="28" background="${basePath}images/main_32.gif">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="20%" height="22">&nbsp;</td>
                                <td width="59%" valign="bottom">
                                    <div align="center" class="STYLE1">
                                        ${OPERATOR.role.role_name}：${OPERATOR.username}
                                    </div></td>
                                <td width="21%">&nbsp;</td>
                            </tr>
                            </tbody>
                        </table></td>
                    <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="65" height="28">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td height="23" valign="bottom">
                                                <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                    <tr>
                                                        <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                            <div align="center" class="STYLE3">
                                                                业务中心
                                                            </div></td>
                                                    </tr>
                                                    </tbody>
                                                </table></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    系统管理
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    通讯录
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    数据管理
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    统计报表
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    业务管理
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    系统配置
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td width="3"><img src="${basePath}images/main_34.gif" width="3" height="28" /></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td height="20" style="cursor:hand" onmouseover="this.style.backgroundImage='url(${basePath}images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; " onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3">
                                                    升级维护
                                                </div></td>
                                        </tr>
                                        </tbody>
                                    </table></td>
                                <td>&nbsp;</td>
                            </tr>
                            </tbody>
                        </table></td>
                    <td width="21"><img src="${basePath}images/main_37.gif" width="21" height="28" /></td>
                </tr>
                </tbody>
            </table></td>
    </tr>
    </tbody>
</table>
</body>
</html>
