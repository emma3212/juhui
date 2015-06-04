<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="page container">
    <form class="J_validForm" autoComplete="off" action="#" method="">
        <div class="row">
            <h3 class="lighter-black">绑定账户</h3>

            <div class="order-list tip-content">
                <img src="${staticWebsite}img/pub/robot.png" />

                <p>${msg}</p>
            </div>
            <button type="button" onclick="window.history.go(-1);" class="form-btn-submit middle bigger-font">返回上一页
            </button>
        </div>
    </form>
</div>