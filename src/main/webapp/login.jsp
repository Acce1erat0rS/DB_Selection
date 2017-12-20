
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <title>登录界面</title>
    <link href="static/css/default.css" rel="stylesheet" type="text/css" />
    <!--必要样式-->
    <link href="static/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="static/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="static/css/loaders.css" rel="stylesheet" type="text/css" />
</head>



<c:if test="${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message != null}">
    <Script Language="JavaScript">
        alert(${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message});
    </Script>
</c:if>

<body onload='document.f.j_username.focus();'>
<div class='login'>
    <div class='login_title'>
        <span>管理员登录</span>
    </div>

    <form name='f'
          action='${pageContext.request.contextPath}/j_spring_security_check'
          method='POST'>

        <div class='login_fields'>
            <div class='login_fields__user'>
                <div class='icon'>
                    <img alt="" src='static/img/user_icon_copy.png'>
                </div>
                <input name="j_username" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value="demo"/>


                <div class='validation'>
                    <img alt="" src='static/img/tick.png'>
                </div>
            </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='static/img/lock_icon_copy.png'>
                </div>
                <input name="j_password" placeholder='密码' maxlength="16" type='password' autocomplete="off" value="demo">



                <div class='validation'>
                    <img alt="" src='static/img/tick.png'>
                </div>
            </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='static/img/key.png'>
                </div>
                <input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
                <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
                    <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
                </div>
            </div>
            <div class='login_fields__submit'>
                <input name="submit" type='submit' value='登录'>
            </div>
        </div>
    </form>

    <div class='success'>
    </div>
    <div class='disclaimer'>
        <p>   </p>
    </div>
</div>
<div class='authent'>
    <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <p>认证中...</p>
</div>
<div class="OverWindows"></div>


<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="static/js/Particleground.js"></script>
<script type="text/javascript" src="static/js/Treatment.js"></script>
<script type="text/javascript" src="static/js/jquery.mockjax.js"></script>
<script type="text/javascript">
    var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
    var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用
    //默认账号密码

    var truelogin = "123456";
    var truepwd = "123456";

    var CodeVal = 0;
    Code();
    function Code() {
        if(canGetCookie == 1){
            createCode("AdminCode");
            var AdminCode = getCookieValue("AdminCode");
            showCheck(AdminCode);
        }else{
            showCheck(createCode(""));
        }
    }
    function showCheck(a) {
        CodeVal = a;
        var c = document.getElementById("myCanvas");
        var ctx = c.getContext("2d");
        ctx.clearRect(0, 0, 1000, 1000);
        ctx.font = "80px 'Hiragino Sans GB'";
        ctx.fillStyle = "#E8DFE8";
        ctx.fillText(a, 0, 100);
    }
    $(document).keypress(function (e) {
        // 回车键事件
        if (e.which == 13) {
            $('input[type="button"]').click();
        }
    });
    //粒子背景特效
    $('body').particleground({
        dotColor: '#E8DFE8',
        lineColor: '#133b88'
    });
    $('input[name="pwd"]').focus(function () {
        $(this).attr('type', 'password');
    });
    $('input[type="text"]').focus(function () {
        $(this).prev().animate({ 'opacity': '1' }, 200);
    });
    $('input[type="text"],input[type="password"]').blur(function () {
        $(this).prev().animate({ 'opacity': '.5' }, 200);
    });
    $('input[name="login"],input[name="pwd"]').keyup(function () {
        var Len = $(this).val().length;
        if (!$(this).val() == '' && Len >= 5) {
            $(this).next().animate({
                'opacity': '1',
                'right': '30'
            }, 200);
        } else {
            $(this).next().animate({
                'opacity': '0',
                'right': '20'
            }, 200);
        }
    });
    var open = 0;
    layui.use('layer', function () {
        // var msgalert = '默认账号:' + truelogin + '<br/> 默认密码:' + truepwd;
        var index = layer.alert(msgalert, { icon: 6, time: 4000, offset: 't', closeBtn: 0, title: '友情提示', btn: [], anim: 2, shade: 0 });
        layer.style(index, {
            color: '#777'
        });
        //非空验证

    })
    var fullscreen = function () {

    }

</script>

</body>
</html>
