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
<title>UserCreateConfirm画面</title>
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
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>UserCreateConfirm</p>
		</div>
		<div>
			<h3>登録する内容は下記でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateCompleteAction">
			<tr id="box">
				<td>
					<label>ログインID:</label>
				</td>
				<td>
					<s:property value="#session.loginUserId" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>ログインPASS:</label>
				</td>
				<td>
					<s:property value="#session.loginPassword" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>名前：</label>
				</td>
				<td>
					<s:property value="#session.userName" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>住所：</label>
				</td>
				<td>
					<s:property value="#session.userAddress" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>電話番号：</label>
				</td>
				<td>
					<s:property value="#session.userPhone" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<s:submit value="完了"/>
				</td>
			</tr>
			</s:form>
			</table>
			<div>
			<span>ホーム画面に戻る場合は</span>
			<a href='<s:url action="HomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr"></div>
		</div>
</body>
</html>