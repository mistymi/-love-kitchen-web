<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>register</title>
<style type="text/css">

body {
	background-repeat: no-repeat;
	margin-left: 200px;
	background-position: center;
	background-size:100% 100%; 
background-attachment: fixed;" 
	
}

#aform {
	position:absolute;
	left:1000px;
	top:200px;
	}
#title{
	position:absolute;
	top:10px;
	}
#mp4{
	position:absolute;
	left:220px;
	top:196px;
	width: 743px;
	height: 294px;
}
#introduce{
	position:absolute;
	left: 212px;
	top: 496px;
	width: 755px;
	height: 167px;
	font-size: 18px;
	color: #90C;
	font-weight: bold;
}
</style>
</head>
<body background="image/背景图.jpg">
  <p>
  <div id="title"><table class="tab1" table width="200" border="0" align="center" cellspacing="0">
  <tr>
    <td><img src="image/logo.png" width="160" height="184" /></td>
    <td><img src="image/标题.jpg" width="980" height="164" /></td>
  </tr>
</table>
</div>

<div id="mp4">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="743" height="300" id="FLVPlayer">
    <param name="movie" value="FLVPlayer_Progressive.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="scale" value="noscale" />
    <param name="salign" value="lt" />
    <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=Clear_Skin_1&amp;streamName=video/12_000000-000500&amp;autoPlay=true&amp;autoRewind=true" />
    <embed src="FLVPlayer_Progressive.swf" flashvars="&MM_ComponentVersion=1&skinName=Clear_Skin_1&streamName=video/12_000000-000500&autoPlay=true&autoRewind=true" quality="high" wmode="opaque" scale="noscale" width="743" height="300" name="FLVPlayer" salign="lt" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash"></embed>
  </object>
</div>

<div id="introduce">
  <p>你是不是不想每天都在食堂吃那些天天都一种口味的菜？你是不是又不想到外面餐馆去吃那些美味却不太安全的饭菜?你是不是想体验和同学一起下厨的神秘感觉?</p>
  <p>大学生厨房就非常对你的口味，把你从烦闷徘徊中解脱。</p>
  <p>同学们只要买来自己喜欢的菜肴，这里有完备的厨房设施和就餐设备，所有像家里一样的厨房设备和餐厅设备都一应俱全，营造了一个自由的空间，这是一个史无前例的、结构单一的，集中出租房灶台的店。快来大学生厨房，和朋友一起享受下厨的快乐吧!</p>
</div>
<div id="aform">
<form id="form1" name="form1" method="post" action="test.asp" >
  <div align="center">
    <table class="tab2" table width="315" border="1" align="right" cellpadding="5" cellspacing="0">
      <tr align="center">
        <td height="99" colspan="2"><div align="center">
          <p>用户登录          </p>
</div></td>
      </tr>
      <tr align="center">
        <td width="103" height="99"><div align="center">用户名：</div></td>
        <td width="186" height="99"><label for="user"></label>
          <div align="center">
            <input name="user" type="text" id="user" />
        </div></td>
      </tr>
      <tr align="center">
        <td width="103" height="85"><div align="center">密码：</div></td>
        <td width="186" height="85"><label for="password"></label>
          <label for="password"></label>
          <div align="center">
            <input type="password" name="password" id="password" />
        </div></td>
      </tr>
      <tr align="center">
        <td height="87" colspan="2" align="left"><a href="login.asp">新用户？点击这里注册吧！</a></td>
      </tr>
      <tr align="center">
        <td height="87" colspan="2" align="left"><div align="center">
          <input type="submit" name="register" id="button" value="提交" /> 
        
          <input type="reset" name="button2" id="button2" value="重置" />
        </div></td>
      </tr>
    </table>
  </div>
</form>

</div>
<p>




</body>
</html>
