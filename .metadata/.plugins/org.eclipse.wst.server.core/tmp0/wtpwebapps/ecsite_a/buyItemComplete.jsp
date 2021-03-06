<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>BuyItemComplete画面</title>
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
.button{
    display:inline-block;
    padding: 0.5em 1em;
    text-decoration: none;
    background: #FAEBD7;
    border-left: solid 6px #DB7093;
    color:#DB7093;
    font-weight: bold;
    box-shadow: 0px 2px 2px rgba(0,0,0,0.29);
}

.button:active{
    box-shadow: inset 0 0 2px rgba(128,128,128,0.1);
    transform: translateY(2px);
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>BuyItemComplete</p>
		</div>
		<div>
			<h3>購入手続きを完了する場合は下記をクリックしてください。</h3>
			<div>
            <s:form action="BuyItemCompleteAction">
				<s:submit class="button" value=" 完　了 " />
					<s:hidden name="id" value="%{id}"/>
					<s:hidden name="itemName" value="%{itemName}"/>
					<s:hidden name="totalPrice" value="%{totalPrice}"/>
					<s:hidden name="count" value="%{count}"/>
					<s:hidden name="pay" value="%{pay}"/>
			</s:form>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>