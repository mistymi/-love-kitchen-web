<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<%
dim username,pass,agpass
username= Trim(Request.Form("n1")) 
pass=Trim(Request.Form("n2")) 
agpass=Trim(Request.Form("n3")) 

if username="" or pass="" or agpass="" then
 response.write "<script>alert('温馨提示：用户名/密码不能为空!')</script>" 
else if pass<>agpass then 
response.write "<script>alert('两次输入密码不一致')</script>" 
else
Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath

Set objRS = Server.CreateObject("ADODB.Recordset")
  sql = "select * from register " 
  objRS.open sql,objConn,3,3
   objRS.addnew()
    objRS("user")=Trim(Request.Form("n1"))
	objRS("password")=Trim(Request.Form("n2"))
	objRS.update 
    objRS.Close    ' 关闭数据库连接
   Set objRS= Nothing
   objConn.Close  ' 注释：关闭连接
   Set objConn = Nothing
   response.write "<script>alert('注册成功！');location.href='http://localhost/aaa/register.asp';</script>"
  
   end if
   end if
 %>
</body>
</html>
