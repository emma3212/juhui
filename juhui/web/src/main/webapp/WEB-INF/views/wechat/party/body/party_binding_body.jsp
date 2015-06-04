<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="page container">
    <form class="J_validForm" autoComplete="off" action="${website}wechat/party/binding" method="post">
        <input type="hidden" name="openId" value="${openId}" />
        <div class="row">
            <h3 class="lighter-black">绑定账户</h3>

            <div class="order-list padding-reset">
                <div class="border-slide control-group">
                    <label class="lighter-black">PIN</label>

                    <div class="control">
                        <input type="text" placeholder="请输入PIN码" class="no-border J_pin" name="pin" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="lighter-black">密码</label>

                    <div class="control">
                        <input type="password" placeholder="请输入密码" class="no-border J_pwd" name="password" />
                    </div>
                </div>
            </div>
            <button type="submit" class="form-btn-submit middle bigger-font J_submit">绑定账号</button>
    </form>
</div>
<div data-role="popup" class="ui-content" data-position-to="origin" data-overlay-theme="a" id="popupBasic">
    <a class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right" data-rel="back"
       href="#">Close</a>

    <p>This is a completely basic popup, no options set.</p>
</div>
<!-- <div id="popdiv" data-role="popup">hello</div><!弹出层,默认不显示-->
</div>