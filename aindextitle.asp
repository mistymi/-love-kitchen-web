<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(image/timg.jpg);
	background-repeat: no-repeat;
	background-position: center;
	background-size:100% 100%; 
background-attachment: fixed;" 
}
table {
	position:absolute;
	left:400px;
	top:50px;
	}
.ys01 th {
	font-family: "宋体";
	filter: Glow(Color=FF0000, Strength=8);
	font-size: 70px;
	color: #90C;
}
.ys01 td strong {
	font-size: 70px;
	color: #909;
}
.ys55 {
	font-size: 18px;
	color: #90F;
}
</style>
</head>

<body class="ys55">
<table width="860" border="0" cellspacing="0">
  <tr align="center" valign="middle" class="ys01">
    <td height="89"><img src="image/logo.png" width="116" height="83" /> <strong>爱厨房，爱生活</strong></td>
  </tr>
</table>
欢迎 <%Response.Write(Session("aname"))%>来到爱厨房，尽情展示自己的厨艺吧！
</body>
</html>
