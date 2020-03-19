<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言评价</title>
<style type="text/css">
#messgae{
	position:absolute;
	top:100px;
	left:200px;}
body {
	background-image: url(image/%E8%83%8C%E6%99%AF5.jpg);
	background-repeat: no-repeat;

	background-size:100% 100%; 
background-attachment: fixed;" 
}
</style>
</head>

<body>
<div id="message">
<form id="form1" name="form1" method="post" action="message.asp">
  <table  align="center"width="460" border="1">
    <tr>
      <td height="60" colspan="2" align="center">留   言</td>
    </tr>
    <tr>
      <td width="116" height="163">内容：</td>
      <td width="332"><label for="content"></label>
      <textarea name="content" id="content" cols="45" rows="15"></textarea></td>
    </tr>
    <tr>
      <td height="36">昵称：</td>
      <td><%Response.Write(Session("aname"))%></td>
    </tr>
    <tr>
      <td height="36">联系方式：</td>
      <td><label for="textarea2"></label>
        <label for="email"></label>
      <input type="text" name="email" id="email" /></td>
    </tr>
     
    <tr>
      <td colspan="2"><input type="submit" name="button" id="button" value="提交" />
        <input type="reset" name="button2" id="button2" value="重置" /></td>
    </tr>
  </table>
  <p><a href="messsage02.asp">查看留言板</a></p>
 
</form>
</div>
<%
dim user,email,content,addtime
 user=request("user")
 email=request("email")
 content=request("content")
 addtime=date()

if request("content")<>"" then 
Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath

Set objRS = Server.CreateObject("ADODB.Recordset")
  sql = "select * from message " 
  objRS.open sql,objConn,3,3
   objRS.addnew()
    objRS("user")=session("aname")
	objRS("email")=Trim(Request.Form("email"))
	objRS("content")=Trim(Request.Form("content"))
	objRS("addtime")=date()
	objRS.update 
    objRS.Close    ' 关闭数据库连接
   Set objRS= Nothing
   objConn.Close  ' 注释：关闭连接
   Set objConn = Nothing

 response.Write"<script>alert('留言成功。')</script>"

  end if 
 

 %>
</body>
</html>
