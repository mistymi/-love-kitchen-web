<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<% 
Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath

Set objRS = Server.CreateObject("ADODB.Recordset")
  sql = "select * from car " 
  objRS.open sql,objConn,3,3
   objRS.addnew()
    objRS("goods")=Trim(Request.Form("room"))
	objRS("price")=Trim(Request.Form("jg"))
	objRS("time")=date()
	objRS("user")=session("aname")
	objRS.update 
    objRS.Close    ' 关闭数据库连接
   Set objRS= Nothing
   objConn.Close  ' 注释：关闭连接
   Set objConn = Nothing
response.write "<script>alert('加购成功！')</script>"

 %>
</body>
</html>
