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
</head>
<body>

	<s:form action="BuyItemAction">
		<table>
			<tr>
				<td>
					<span>商品名</span>
				</td>
			</tr>
			<tr>
				<td>
					<s:submit value="購入"/>
				</td>
			</tr>
		</table>
	</s:form>
	<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
</body>
</html>