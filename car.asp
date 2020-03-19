<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	background-image: url(image/%E8%83%8C%E6%99%AF5.jpg);
	background-size:100% 100%;
	background-attachment:fixed;
	background-color: #000;
}
body,td,th {
	color: #03F;
	font-size: 24px;
}
</style>
</head>

<body>
<div id="value">
<%Response.Write(Session("aname"))%>的购物车！

<table width="600" border="3" height="71" align="center">
  <tr>
    <td width="200" height="61">商品名称</td>
    <td width="200">商品价格</td>
    <td width="200">采购时间</td>
  </tr>
  
</table>
<% 
dim  sum
 Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath

   ' 注释：创建并初始化Recordset对象
   Set objRS = Server.CreateObject("ADODB.Recordset")
   objRS.ActiveConnection = objConn
   objRS.Source = "SELECT * FROM car  where user='"&Session("aname")&"'  "
  
   objRS.Open
      
   Do While Not objRS.EOF
  sum=sum+ Cint(" " & objRS("price") & " ") 

  response.Write("<table width=600 border=3 height=71  align=center >")
   Response.Write("<tr>")
      Response.write("<td width=200>" & objRS("goods") & "</td>")
	  Response.write("<td width=200>" & objRS("price") & "</td>")
      Response.write("<td width=200>" & objRS("time") & "&nbsp;</td>")
	  Response.Write("</tr>")
 response.Write("</table>")
   objRS.MoveNext

Loop
  
   
     objRS.Close    ' 关闭数据库连接
   Set objRS= Nothing
   objConn.Close  ' 注释：关闭连接
   Set objConn = Nothing
 %>
 
 <table width="600" border="3" height="71" align="center">
  <tr>
    <td width="188" height="61">总计:</td>
    <td width="392"><%=sum%> 元</td>  
  </tr>
</table>
<p><a href="pay.asp">支付</a></p>
</body>
</html>
