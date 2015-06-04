<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="page">

    <div id="wrapper" class="list-holder J_listHolder">
        <div id="scroller">
            <h3 class="lighter-black">查看未完成维护订单列表</h3>
            <ul id="thelist" class="order-list J_listRender">
                <li>
                    <a class="a-in-list">订单编号</a><span>服务人员</span><span>联系方式</span>
                </li>
            </ul>
            <div class="pullUp">
                <span class="pullUpIcon"></span>
                <span class="pullUpLabel">上拉获取更多内容...</span>
            </div>
        </div>
    </div>
</div>