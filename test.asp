<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<%
session("aname")=Trim(Request.Form("user"))  
dim user,password
user= Trim(Request.Form("user")) 
password=Trim(Request.Form("password"))

if user="" or password="" then
response.write "<script>alert('温馨提示：用户名/密码不能为空!')</script>" 
response.end 
end if

 Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath
   
Set objRS = Server.CreateObject("ADODB.Recordset")
   objRS.ActiveConnection = objConn
   objRS.Source = "SELECT user,password FROM register where user = '" & Trim(Request.Form("user")) & "' and password ='"& Trim(Request.Form("password"))&"' " 
   objRS.Open
   
   if objRS.eof then
   response.write "<script>alert('用户名/密码错误！');location.href='http://localhost/aaa/register.asp';</script>"
    
     else
	 
       response.Redirect"http://localhost/aaa/aindex.html"
       response.End
  end if
   
     objRS.Close    ' 关闭数据库连接
   Set objRS= Nothing
   objConn.Close  ' 注释：关闭连接
   Set objConn = Nothing





%>
</body>
</html>
