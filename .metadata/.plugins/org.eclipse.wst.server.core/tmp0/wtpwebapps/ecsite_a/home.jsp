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
<title>home画面</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.slider').bxSlider({
          auto:true,
          mode:'fade',
          speed:1000,
          slideWidth:600,
          controls:false,
      });
    });
  </script>
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
/* ======ecsite LAYOUT=====*/
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
	text-align: center;
}

#footer {
	margin-top:auto;
	width: 100%;
	height: 80px;
	background-color:#DB7093;
	clear: both;
}

#text-center {
	text-align: center;
	height:100%;
}

.slider img{
	display:block;
	margin:0 auto;
}

p{
	font-family: Estrangelo Edessa;
	font-weight:bold;
	font-size:20px;
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
		<div id="pr"></div>
	</div>
	<div id="main">
		<div id="top">
			<p>ACCESSORY SHOP</p>
		</div>
		<div id="text-center">

			<div class="slider">
            <div><img src="IMG_3231.JPG"></div>
            <div><img src="IMG_7411.JPG"></div>
            <div><img src="IMG_34.jpg"></div>
            </div>
            <s:form action="HomeAction">
				<s:submit class="button" value=" 商 品 購 入 " />

			</s:form>
			<br>
			<s:form action="InquiryAction">
				<s:submit class="button" value="お問い合わせ"/>
			</s:form>
			<br>

			<s:if test="#session.id ! =null">
				<p>
					ログアウトする場合は <a href='<s:url action="LogoutAction"/>'>こちら</a>
				</p>
			</s:if>
		</div>
	</div>
	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>