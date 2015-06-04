<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<li>
    <a href="javascript:;" >
        <span class="fa fa-wrench"></span>
        免费IT维护
        <i class="fa fa-angle-left arrow fa-angle-left"></i>
    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li <c:if test="${MethodModule eq 'User:Maintenance:Apply'}">class="active"</c:if> >
            <a href="${website}user/maintenance/apply">
                <span class="fa fa-hand-o-right"></span>
                发起维护
                <c:if test="${MethodModule eq 'User:Maintenance:Apply'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <span class="fa fa-folder-open-o"></span>
                我的维护订单
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'User:Maintenance:Order:UnFinish'}">class="active"</c:if>>
                    <a href="${website}user/maintenance/order/unfinish" >
                        <span class="fa fa-file-o"></span>
                        查看未完成维护订单
                        <c:if test="${MethodModule eq 'User:Maintenance:Order:UnFinish'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'User:Maintenance:Order:Finish'}">class="active"</c:if>>
                    <a href="${website}user/maintenance/order/finish">
                        <span class="fa fa-file-text-o "></span>
                        查看已完成维护订单
                        <c:if test="${MethodModule eq 'User:Maintenance:Order:Finish'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'User:Maintenance:Order:Canceled'}">class="active"</c:if>>
                    <a href="${website}user/maintenance/order/canceled">
                        <span class="fa fa-file-excel-o"></span>
                        查看已取消维护订单
                        <c:if test="${MethodModule eq 'User:Maintenance:Order:Canceled'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <c:if test="${MethodModule eq 'User:Maintenance:Order:Details'}">
                    <li class="active">
                        <a href="#">
                            <span class="fa fa-eye"></span>
                            查看维护订单
                            <i class="selected"></i>
                        </a>
                    </li>
                </c:if>
            </ul>
        </li>
    </ul>
</li>
