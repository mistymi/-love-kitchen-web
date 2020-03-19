<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>房间预订</title>
<style type="text/css">
body {
	background-image: url(image/%E8%83%8C%E6%99%AF4.jpg);
	background-attachment:fixed;
	background-size:100% 100%;
}

body,td,th {
	font-size: 24px;
	color: #FC0;
	font-weight: bold;
}
</style>
</head>

<body>
<div id="room"><table width="850" border="3">
  <tr>
    <td width="250">房间展示</td>
    <td width="200">房间描述</td>
    <td width="200" >房间价格</td>
    <td width="200" >添加至购物车</td>
  </tr>
  <tr>
    <td><img src="image/小厨房.jpg" width="350" height="240" /></td>
    <td>清新的小型厨房，适合2~3人</td>
    <td>70元/间</td>
    <td><form id="form1" name="form1" method="post" action="房间预订.asp">
      <input type="submit" name="加购按钮" id="加购按钮" value="加购" />
      <input type="hidden" name="room" id="room"  value="小型厨房（七十元/间）"/>
      <input type="hidden" name="jg" id="jg" value="70" />
    </form></td>
  </tr>
  <tr>
    <td><img src="image/家居厨房.jpg" width="350" height="240" /></td>
    <td>温馨的家居厨房，仿佛带有家的味道，适合3~4人</td>
    <td>120/间</td>
    <td><form id="form1" name="form1" method="post" action="房间预订.asp">
      <input type="submit" name="加购按钮" id="加购按钮" value="加购" />
      <input type="hidden" name="room" id="room"  value="家居厨房01（一百二十元/间）"/>
       <input type="hidden" name="jg" id="jg" value="120" />
    </form></td>
  </tr>
  <tr>
    <td><img src="image/厨房.jpg" width="350" height="240" /></td>
    <td>暖色系家居厨房，感受家的温暖，适合3~4人</td>
    <td>120/间</td>
    <td><form id="form1" name="form1" method="post" action="房间预订.asp">
      <input type="submit" name="加购按钮" id="加购按钮" value="加购" />
      <input type="hidden" name="room" id="room"  value="家居厨房02（一百二十元/间）"/>
       <input type="hidden" name="jg" id="jg" value="120" />
    </form></td>
  </tr>
  <tr>
    <td><img src="image/大厨房.jpg" width="350" height="300" /></td>
    <td>明亮先进的大厨房，适合5~8人</td>
    <td>200/间</td>
    <td><form id="form1" name="form1" method="post" action="房间预订.asp">
      <input type="submit" name="加购按钮" id="加购按钮" value="加购" />
      <input type="hidden" name="room" id="room"  value="大厨房（二百元/间）"/>
       <input type="hidden" name="jg" id="jg" value="200" />
    </form></td>
  </tr>
  <tr>
    <td><img src="image/小型厨房.jpg" width="350" height="300" /></td>
    <td>温馨的亲子厨房，方便带着小朋友，适合8~10人</td>
    <td>300/间</td>
    <td><form id="form1" name="form1" method="post" action="房间预订.asp">
      <input type="submit" name="加购按钮" id="加购按钮" value="加购" />
      <input type="hidden" name="room" id="room"  value="亲子厨房（三百元/间）"/>
       <input type="hidden" name="jg" id="jg" value="300" />
    </form></td>
  </tr>
 
</table>
</div>
<% 
if Trim(Request.Form("room"))<>"" then 
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
end if 

 %>
  
<p><a href="car.asp">结算</a></p>
</body>
</html>
