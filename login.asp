<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<style>
#content{
	position:absolute;
	left:15%;
	width:80%;
	height:100%;
	background:url(image/%E8%83%8C%E6%99%AF%E5%9B%BE.jpg);
	background-repeat:no-repeat;

	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}


.ys003 {
	position: absolute;
	left: 20%;
	top:15%;
}
</style>
</head>

<body>
<div id="content">
  <form id="form1" name="form1" method="post" action="test2.asp" align="center">
    <table width="512" height="403" border="1" align="center" class="ys003"  >
      <tr>
        <td colspan="2" align="center">用户注册</td>
      </tr>
      <tr>
        <td width="42" align="center" >用户名：</td>
        <td width="346" align="center" ><label for="textfield4"></label>
          <label for="n1"></label>
        <input type="text" name="n1" id="n1" /></td>
      </tr>
      <tr>
        <td align="center">密码：</td>
        <td align="center"><label for="textfield5"></label>
        <input type="password" name="n2" id="textfield5" /></td>
      </tr>
      <tr>
        <td align="center">再次输入密码：</td>
        <td align="center"><label for="textfield6"></label>
        <input type="password" name="n3" id="textfield6" /></td>
      </tr>
      <tr>
        <td align="center"><input type="submit" name="yes" id="yes" value="确定" /></td>
        <td align="center"><input type="reset" name="button" id="button" value="重置" /></td>
      </tr>
    </table>
  </form>
  
</div>

</body>
</html>
