<#include "/viewAlias.include"> 
<#include "/xml_copyright.include">
<#include "/characterEscape.include"> 
<#include "/control.include"/>
<%@page import="com.dfkj.db.DbManager"%>
<%@page import="com.dfkj.project.util.Property"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.dbaccess.DBDataSet"%>
<%@page import="${voPackage}.${className}Vo"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="dfkj" prefix="dfkj" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <title></title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jsp/js/validate.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/jsp/css/table.css">
	<%
	    ${className}Vo vo=new ${className}Vo();
		vo=(${className}Vo)request.getAttribute("vo");
		Vector vInitiatives = (Vector)request.getAttribute("vInitiatives");
		Integer pageNo = (Integer)request.getAttribute("pageNo");
	%>
	<script type="text/javascript">
		function doUpdate(){
        	if(confirm("确定提交吗？")==true){
				thisForm.action="<%=request.getContextPath()%>/MainController.do?ActionName=${actionPackage}.${className}Action&NextPage=/jsp/${moduleNameLower}/${classNameLower}_list.jsp&pageNo=<%=pageNo %>&type=update&id=<%=vo.getId2()%>";
				thisForm.submit();
			}
		}
	</script>
 </head>

<body>
<form name="thisForm" method="post">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0"
       style="border:1px solid #9dbacc;margin-left:3px;" bgcolor="#FFFFFF">
    <tr>
        <td height="38">
            <div class="tilti">
                <ul>
                    <li class="li1"></li>
                    <li class="li2">${moduleChinaName}修改</li>
                    <li class="li3"></li>
                    <div class="clear"></div>
                </ul>
            </div>
        </td>
    </tr>

    <tr>
        <td valign="top">
            <table width="100%" cellpadding="0" cellspacing="0">
                <tr class="td1">
                    <td>&nbsp;</td>
                    <td>${moduleChinaName}属性</td>
                    <td>现在</td>
                    <td>修改</td>
				</tr>
				<#list view.retrieveControl as control>
                    <td>&nbsp;</td>
                	<td>${control.chinaName}</td>
                	<td><%=vo.get${control.fieldJavaName}() %></td>
                	<td>
                		<#assign name=classNameLower+"VO."+control.name>
					    <@choiceControl control=control name=name/>
                	</td>
                </#list>
				<tr class="td3">
                	<td>&nbsp;</td>
                	<td>&nbsp;</td>
                	<td>&nbsp;</td>
                    <td>
						<a href="#" onclick="doUpdate()"><img src="<%=request.getContextPath()%>/jsp/images/button_3.jpg" align="absbottom" style="margin-right:5px;"></a>
						<a href="<%=request.getContextPath()%>/MainController.do?ActionName=${actionPackage}.${className}Action&pageNo=<%=pageNo %>&NextPage=/jsp/${moduleNameLower}/${classNameLower}_list.jsp"><img src="<%=request.getContextPath()%>/jsp/images/button_2.jpg" align="absbottom" style="margin-right:5px;"></a>
					</td>
				</tr>
            </table>

        </td>
    </tr>
</table>
</form>
</body>
</html>