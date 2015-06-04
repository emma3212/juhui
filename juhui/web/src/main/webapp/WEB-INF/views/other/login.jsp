<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
    <title>${webTitle}</title>
    <%@ include file="/WEB-INF/views/admin/common/head.jsp" %>
    <link rel="stylesheet" href="${staticWebsite}css/admin/page/login/vip-login.css" />
</head>
<body>
<div class="header">
    <div>
        <a href="#">
        </a>
    </div>
</div>
<div class="page">
    <div class="login-center">
        <h1>登录会员中心</h1>
        <p class="msg-tip J_loginError"></p>
        <form class="J_loginForm" action="${website}login" method="POST">
            <div class="control-group pin">
                <label class="control-label">用户PIN</label>
                <div class="controls">
                    <input type="text" class="J_username" data-valid-rule="length(4,16)" data-valid-tip="请使用PIN登录，PIN是博曼会员唯一的4位数字身份验证|PIN码输入有误，请重新填写" name="username"/>
                </div>
            </div>
            <div class="control-group password">
                <label class="control-label">密码</label>
                <div class="controls">
                    <input type="password" class="J_pwd" data-valid-rule="length(7,16)" data-valid-tip="请输入8-15位字符|密码输入有误，请重新填写" name="password"/>
                </div>
            </div>
            <div class="control-group code">
                <div class="controls">
                    <input type="hidden" class="J_valid"  name="valid" value="1111"/>
                </div>
            </div>
            <img class="code-img J_codeImg" id="J_codeImg_id" href="${website}Kaptcha.jpg">
            <a class="refresh J_validCode" href="javascript:;">刷新</a>
            <div class="tips">
                        <span class="checkbox-container checkbox-checked">
                            <input type="checkbox" class="J_checkbox" checked="checked" value="on" name="remember" />
                        </span>
                <span class="remember">记住我的登录信息</span>
                <a href="javascript:;" class="login-qq">
                    用QQ企业账号登录
                </a>
            </div>
            <button type="submit" data-btn-type="loading" data-loading-text="正在提交，请稍后" class="btn btn-blue  btn-margin-right login-btn J_lgBtn">登&nbsp;&nbsp;录</button>
            <a href="${website}registration" class="register-tip">点击这里注册企业会员，马上获得每月4次免费IT维护服务</a>
        </form>
        <a href="" class="go-home"><i class="fa fa-home"></i></a>
    </div>
    <div class="relation-way clearfix">
        <h1>如果忘记密码或其他其原因无法登录请联系客服</h1>
        <div class="service service-phone">
            <p class="service-logo"><i class="fa fa-phone"></i></p>
            <p class="service-way">
                拨打客服电话<br/>
                010-88689968<br/>
                010-88689668
            </p>
        </div>
        <div class="service service-qq">
            <p class="service-logo"><i class="fa fa-qq"></i></p>
            <p class="service-way">
                联系客服QQ<br/>
                1004646666<br/>
                1004656666
            </p>
        </div>
        <div class="service service-boman">
            <p class="service-logo"></p>
            <p class="service-way">
                微信留言<br/>
                在博曼微信公共平台<br/>
                留言给客服
            </p>
        </div>

    </div>
</div>
<div class="login-footer">
    <div class="login-footer-center">
        <div class="footer">
                    <span class="footer-inner">
                        2014 <span title="${version}">&copy;</span> 北京广德腾建博曼科技有限公司.版权所有</span>
            <div class="footer-tools">
                        <span class="contact">
                            客服联系方式
                            <i class="fa fa-phone"></i>
                            010-88689668 010-99689968
                            <i class="fa fa-qq"></i>
                            1004646666 1004656666
                        </span>
            </div>
        </div>
    </div>
</div>
<script>
    KISSY.ready(function(S){
        S.use('page/login/vip-login', function(S){
            PW.page.login.VipLogin();
        })
    })
</script>
</body>
</html>