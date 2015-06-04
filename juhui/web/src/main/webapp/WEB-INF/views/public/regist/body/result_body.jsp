<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container success-container-holder">
    <div class="row">
        <div class="col-sm-8 col-xs-12 col-sm-offset-2">
            <img src="${staticWebsite}img/pub/common/robot.png" alt="robot" />
            <div class="register-success-details">
                <h3>恭喜您注册成功，你的PIN(会员唯一识别码）是<b>${eMsg}</b></h3>
                <p><span class="waitting-tip">请等待客户经理联系您并激活帐号.</span> 您可以点击这里回到</span><a href="${website}"> 首页 </a>或者浏览其他网页。</p>
            </div>
        </div>
    </div>
</div>
