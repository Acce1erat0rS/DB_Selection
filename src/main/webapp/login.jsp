
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
    <script>
        var ctx;
        var audioContext;
        var analyser;
        var mic;
        var recorder;
        var canvasOne;

        function startUserMedia(stream) {


            mic = audioContext.createMediaStreamSource(stream);

            recorder = new Recorder(mic);

        }

        function startRecording(button) {
            canvasOne = document.getElementById('canvasOne');
            ctx = canvasOne.getContext("2d");


            recorder && recorder.record();

            button.disabled = true;
            button.nextElementSibling.disabled = false;


            analyser= audioContext.createAnalyser();

            analyser.fftSize = 256;
            mic.connect(analyser);
            drawSpectrum();


        }
        var myReq;

        function stopRecording(button) {
            canvasOne = document.getElementById('canvasOne');
            ctx = canvasOne.getContext("2d");
            ctx.clearRect(0,0,1000,1000);
            recorder && recorder.stop();
            button.disabled = true;
            button.previousElementSibling.disabled = false;
            window.cancelAnimationFrame(myReq);

            createDownloadLink();
            recorder.clear();
        }

        function createDownloadLink() {
            recorder && recorder.exportWAV(function(blob) {
                var url = URL.createObjectURL(blob);
                var li = document.createElement('li');
                var au = document.createElement('audio');
                var hf = document.createElement('a');

                au.controls = true;
                au.src = url;
                hf.href = url;
                hf.download = new Date().toISOString() + '.wav';
                hf.innerHTML = hf.download;
                li.appendChild(au);
                li.appendChild(hf);
                recordingslist.appendChild(li);
            });
        }


        function drawSpectrum() {

            var cwidth = canvasOne.width;
            var cheight = canvasOne.height - 2;
            var meterWidth = 3;//能量条的宽度
            var gap = 1;//能量条的间距
            var meterNum = cwidth / (meterWidth + gap);//计算当前画布上能画多少条
            ctx = canvasOne.getContext('2d');
            var capHeight = 2;//
            var array = new Uint8Array(analyser.frequencyBinCount);
            analyser.getByteFrequencyData(array);


            //清理画布
            ctx.clearRect(0, 0, cwidth, cheight);
            //定义一个渐变样式用于画图
            var gradient = ctx.createLinearGradient(0, 0, 0, 100);
            gradient.addColorStop(1,'#1f52a9');

            gradient.addColorStop(0.5, '#691cac');
            gradient.addColorStop(0, '#8f0743');

            ctx.fillStyle = gradient;
            //对信源数组进行抽样遍历，画出每个频谱条
            for (var i = 0; i < meterNum; i++) {
                var value = array[i]/3;
                ctx.fillRect(i * (meterWidth+gap), cheight - value + capHeight,meterWidth, cheight);
            }
            myReq=requestAnimationFrame(drawSpectrum);
        }


        window.onload=function init(){
            audioContext = new (window.AudioContext || window.webkitAudioContext);
            navigator.getMedia = ( navigator.getUserMedia ||
                navigator.webkitGetUserMedia ||
                navigator.mozGetUserMedia ||
                navigator.msGetUserMedia);

            navigator.getMedia ( { audio: true }, startUserMedia,function(){});

        }

    </script>

</head>






<c:if test="${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message != null}">
    <Script Language="JavaScript">
        alert(${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message});
    </Script>
</c:if>

<%-----------<body onload='document.f.j_username.focus();'>----------------------%>
<body>
<div class='login'>
    <div class='login_title'>
        <span>
            <img src='static/img/logo.jpg.png' width="100%">

            <p style="font-family: 'Noto Sans S Chinese';font-size:15px;margin:20px 20px 0px 0px; text-align: center;opacity: 0.8">本科毕业设计选题系统</p>
            <p style="font-family: 'Noto Sans S Chinese';font-size:12px;margin-bottom:5px;opacity: 0.7 ">请登录</p>
        </span>
    </div>

    <form name='f'
          action='${pageContext.request.contextPath}/j_spring_security_check'
          method='POST'
    >

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
                <%--<div class='icon'>--%>
                    <%--<img alt="" src='static/img/key.png'>--%>
                <%--</div>--%>
                <%--<input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">--%>
                <div class='validation' style="opacity: 1; right: -5px;top: -3px; height: 0px">
                    <canvas class="J_codeimg" id="myCanvas" onclick="Code();" style="height: 0px">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
                </div>
            </div>
            <div>
                <div class="g-recaptcha" data-sitekey="6LfHfEAUAAAAAOWKRSbtdl3vN2cgh05fb-46Sayu" style="margin: 10px"></div>
            </div>

            <div class='login_fields__submit'>
                <input name="submit" type='submit' value='登录'>
            </div>
            <div class='login_fields_voicewave'>
                <button onclick="startRecording(this);" style="margin-top: 20px">record</button>
                <button onclick="stopRecording(this);" disabled>stop</button>
                <canvas id="canvasOne" width=320 height=80% ></canvas>
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
<script src='https://www.google.com/recaptcha/api.js'></script>

<%--<script type="text/javascript" src='js/stopExecutionOnTimeout.js?t=1'></script>--%>
<%--<script type="text/javascript" src="layui/layui.js"></script>--%>
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
    layui.use('layer', function () {
        // var msgalert = '默认账号:' + truelogin + '<br/> 默认密码:' + truepwd;
        var index = layer.alert(msgalert, { icon: 6, time: 4000, offset: 't', closeBtn: 0, title: '友情提示', btn: [], anim: 2, shade: 0 });
        layer.style(index, {
            color: '#777'
        });
        //非空验证
        $('input[type="button"]').click(function () {
            var login = $('input[name="login"]').val();
            var pwd = $('input[name="pwd"]').val();
            var code = $('input[name="code"]').val();
            if (login == '') {
                ErroAlert('请输入您的账号');
            } else if (pwd == '') {
                ErroAlert('请输入密码');
            } else if (code == '' || code.length != 4) {
                ErroAlert('输入验证码');
            } else {

                //登录
                var JsonData = { login: login, pwd: pwd, code: code };
                //此处做为ajax内部判断
                var url = "";
                if(JsonData.login == truelogin && JsonData.pwd == truepwd && JsonData.code.toUpperCase() == CodeVal.toUpperCase()){
                    url = "Ajax/Login";
                }else{
                    url = "Ajax/LoginFalse";
                }

                AjaxPost(url, JsonData,
                    function () {
                        //ajax加载中
                    },
                    function (data) {
                        //ajax返回
                        //认证完成
                        setTimeout(function () {
                            $('.authent').show().animate({ right: 90 }, {
                                easing: 'easeOutQuint',
                                duration: 600,
                                queue: false
                            });
                            $('.authent').animate({ opacity: 0 }, {
                                duration: 200,
                                queue: false
                            }).addClass('visible');
                            $('.login').removeClass('testtwo'); //平移特效
                        }, 2000);
                        setTimeout(function () {
                            $('.authent').hide();
                            $('.login').removeClass('test');
                            if (data.Status == 'ok') {
                                //登录成功
                                $('.login div').fadeOut(100);
                                $('.success').fadeIn(1000);
                                $('.success').html(data.Text);
                                //跳转操作

                            } else {
                                AjaxErro(data);
                            }
                        }, 2400);
                    })
            }
        })
    })
    if(ajaxmockjax == 1){
        $.mockjax({
            url: 'Ajax/Login',
            status: 200,
            responseTime: 50,
            responseText: {"Status":"ok","Text":"登录成功<br /><br />欢迎回来"}
        });
        $.mockjax({
            url: 'Ajax/LoginFalse',
            status: 200,
            responseTime: 50,
            responseText: {"Status":"Erro","Erro":"账号名或密码或验证码有误"}
        });
    }

</script>





</body>
</html>
