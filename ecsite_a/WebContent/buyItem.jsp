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
<title>BuyItem画面</title>
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
	text-align: center;
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

span{
	font-size:10px;
}

#shiharai {
	text-align: center;
	}

#kounyu{
	text-align: center;
}

#list{
	padding-bottom:5px;
}

div{
	text-align:center;
}

</style>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="top">
		<p>商品一覧</p>
	</div>
	<div>
		<s:form action="BuyItemAction">
		<table>
			<s:iterator id="list" value="session.list">
				<tr>
					<td>
						<span>商品名</span>
					</td>
					<td>
						<s:property value="id"/>:<s:property value="itemName"/>
						<s:hidden name="id" value="%{id}"/>
						<s:hidden name="itemName" value="%{itemName}"/>
					</td>
				</tr>
				<tr>
					<td>
						<span>値段</span>
					</td>
					<td>
					<s:property value="itemPrice"/><span>円</span>
					<s:hidden name="itemPrice" value="%{itemPrice}"/>
					</td>
				</tr>
				<tr>
					<td>
						<span>購入個数</span>
					</td>
					<td>
						<select name="count">
							<option value="0" selected="selected">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				</s:iterator>
				</table>
				<br>
				<div id="shiharai">
				<table>
				<tr>
					<td>
						<span>支払い方法</span>
					</td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">現金払い
						<input type="radio" name="pay" value="2">クレジットカード
					</td>
				</tr>
				</table>
				</div>
				<br>
				<div id="kounyu">
				<table>
				<tr>
					<td>
						<s:submit value="購入"/>
					</td>
				</tr>
				</table>
				</div>

		</s:form>
			<br>
			<div>
					<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
					<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
			</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>