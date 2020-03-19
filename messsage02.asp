<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言簿</title>
</head>
<style type="text/css">

body {
	background-image: url(image/%E8%83%8C%E6%99%AF5.jpg);
	background-repeat: no-repeat;

	background-size:100% 100%; 
background-attachment: fixed;" 
}
</style>
<body>

<table width="750" height="68" border="1" align="center">
  <tr>
    <td width="200">留言人</td>
    <td width="200">留言时间</td>
    <td width="350">留言</td>
  </tr>
</table>

<% 
 Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath
' 注释：显示连接成功信息


 'response.Write"连接成功"
   ' 注释：创建并初始化Recordset对象
   Set objRS = Server.CreateObject("ADODB.Recordset")
   objRS.ActiveConnection = objConn
   objRS.Source = "SELECT * FROM message "
  
   objRS.Open

   Do While Not objRS.EOF 
   response.Write("<table  width=750 height=68 border=1 align=center >")
 response.Write("<tr>")
	  Response.write("<td width=200>" & objRS("user") & "</td>")
	  Response.write("<td width=200>" & objRS("addtime") & "&nbsp;</td>")
	  Response.write("<td width=350>" & objRS("content") & "</td>")
	  Response.Write("</tr>")
response.Write("</table>")
   objRS.MoveNext

Loop
  
   
     objRS.Close    ' 关闭数据库连接
   Set objRS= Nothing
   objConn.Close  ' 注释：关闭连接

 %>
</body>
</html>
