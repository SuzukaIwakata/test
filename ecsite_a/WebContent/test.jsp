<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="content-Script-type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Login画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}
/* ======ID LAYOUT=====*/
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	width: 100%;
	height: 80px;
	background-color: #DB7093;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #DB7093;
	clear: both;
}

#text-link {
	display: inline-block;
	text-align: right;
}
</style>
</head>
<body>
 <s:form action="/StartAction">
    <table>
        <tr>
          <td><font size="3">Id</font></td>
          <td><bean:write name="startForm" property="inputId" /></td>

        </tr>
        <tr>
          <td><font size="3">Name</font></td>
          <td><bean:write name="startForm" property="inputName" /></td>
        </tr>
    </table>
<%int i = 0; %>
    <table>
        <logic:iterate id="data" name="startForm" property="list" >
            <tr>
                <td><input type="radio" name="radio" value="<%=i %>" ></td>
                <td><bean:write name="data" property="a" /></td>
                <td><bean:write name="data" property="b" /></td>
                <td><bean:write name="data" property="c" /></td>
            </tr>
            <% i++; %>
        </logic:iterate>
    </table>
    <input type="hidden" name="radio" value="<%=i %>" >
    <html:hidden name="startForm" property="inputId" />
    <html:hidden name="startForm" property="inputName" />
    <html:submit property="button" value="Submit" />
   </s:form>
</body>
</html>