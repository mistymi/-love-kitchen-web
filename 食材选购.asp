<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>食材选购</title>
<style type="text/css">
body {
	background-image:url(image/%E8%83%8C%E6%99%AF3.jpg);
	background-size:100% 100%;
	background-attachment:fixed;
}

body,td,th {
	font-size: 36px;
	color: #F00;
}
</style>

</head>

<body>
<div id="food"><table width="850" border="3">
  <tr>
    <td width="250" >食材展示</td>
    <td width="200" >食材描述</td>
    <td width="200" >食材价格</td>
    <td width="200" >添加至购物车</td>
  </tr>
  <tr>
    <td><img src="image/葱.jpg" alt="葱" width="250" height="150"  /></td>
    <td><strong>香葱</strong></td>
    <td><strong>5元/份</strong></td>
    <td><form id="form1" name="form1" method="post" action="食材选购.asp"  >
            <input name="food" type="hidden" id="food" value="香葱（五元/份）" />
          <input type="submit" name="加购按钮" id="加购按钮" value="加购" />
          <input type="hidden" name="jg" id="jg"  value="5">
    </form>

   </td>
  </tr>
  <tr>
    <td><img src="image/黄瓜.jpg" width="250" height="150" /></td>
    <td><strong>黄瓜</strong></td>
    <td><strong>5元/份</strong></td>
    <td><form id="form2" name="form2" method="post" action="食材选购.asp">
      <input type="submit" name="加购按钮2" id="加购按钮2" value="加购" />
      <input type="hidden" name="food" id="food"  value="黄瓜（五元/份）"/>
      <input type="hidden" name="jg" id="jg" value="5" />
    </form></td>
  </tr>
  <tr>
    <td><img src="image/鸡蛋.jpg" width="250" height="150" /></td>
    <td><strong>鲜鸡蛋</strong></td>
    <td><strong>5元/份</strong></td>
    <td><form id="form3" name="form3" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"  value="鸡蛋（五元/份）"/>
      <input type="submit" name="加购按钮3" id="加购按钮3" value="加购" />
      <input type="hidden" name="jg" id="jg"  value="5" />
    </form></td>
  </tr>
  <tr>
    <td><img src="image/蒜.jpg" width="250" height="150" /></td>
    <td><strong>大蒜</strong></td>
    <td><strong>7元/份</strong></td>
    <td><form id="form4" name="form4" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"   value="大蒜（七元/份）"/>
      <input type="submit" name="加购按钮4" id="加购按钮4" value="加购" />
       <input type="hidden" name="jg" id="jg"  value="7">
    </form></td>
  </tr>
  <tr>
    <td><img src="image/西红柿.jpg" width="250" height="150" /></td>
    <td><strong>西红柿</strong></td>
    <td><strong>7元/份</strong></td>
    <td><form id="form5" name="form5" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"  value="西红柿（七元/份）"/>
      <input type="submit" name="加购按钮5" id="加购按钮5" value="加购" />
       <input type="hidden" name="jg" id="jg"  value="7">
    </form></td>
  </tr>
  <tr>
    <td><img src="image/茄子.jpg" width="250" height="150" /></td>
    <td><strong>茄子</strong></td>
    <td><strong>10元/份</strong></td>
    <td><form id="form6" name="form6" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"  value="茄子（十元/份）" />
      <input type="submit" name="加购按钮6" id="加购按钮6" value="加购" />
       <input type="hidden" name="jg" id="jg"  value="10">
    </form></td>
  </tr>
  <tr>
    <td><img src="image/羊肉.jpg" width="250" height="150" /></td>
    <td><strong>新鲜羊肉</strong></td>
    <td><strong>25元/份</strong></td>
    <td><form id="form7" name="form7" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"  value="新鲜羊肉（二十五元/份）" />
      <input type="submit" name="加购按钮7" id="加购按钮7" value="加购" />
       <input type="hidden" name="jg" id="jg"  value="25">
    </form></td>
  </tr>
  <tr>
    <td><img src="image/猪肉.jpg" width="250" height="150" /></td>
    <td><strong>新鲜猪肉</strong></td>
    <td><strong>20元/份</strong></td>
    <td><form id="form8" name="form8" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"  value="新鲜猪肉（二十元/份）" />
      <input type="submit" name="加购按钮8" id="加购按钮8" value="加购" />
       <input type="hidden" name="jg" id="jg"  value="20">
    </form></td>
  </tr>
  <tr>
    <td><img src="image/草鱼.jpg" width="250" height="150" alt="草鱼" /></td>
    <td><strong>鲜美草鱼</strong></td>
    <td><strong>10元/斤</strong></td>
    <td><form id="form9" name="form9" method="post" action="食材选购.asp">
      <input type="hidden" name="food" id="food"  value="鲜美草鱼（十元/份）" />
      <input type="submit" name="加购按钮9" id="加购按钮9" value="加购" />
       <input type="hidden" name="jg" id="jg"  value="10">
    </form></td>
  </tr>
</table>
</div>

<% 
if Trim(Request.Form("food"))<>"" then
Set objConn = Server.CreateObject("adodb.connection")
   Provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
   DBPath = "Data Source=" & Server.MapPath("bookstore.mdb")
   objConn.Open Provider & DBPath

Set objRS = Server.CreateObject("ADODB.Recordset")
  sql = "select * from car " 
  objRS.open sql,objConn,3,3
   objRS.addnew()
    objRS("goods")=Trim(Request.Form("food"))
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
<a href="car.asp">结算 </a>

</body>
</html>
