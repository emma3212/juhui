<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<li>
    <a href="javascript:;" >
        <span class="fa fa-user"></span>
        会员档案
        <i class="fa fa-angle-left arrow fa-angle-left"></i>
    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li <c:if test="${MethodModule eq 'User:Member:Edit'}">class="active"</c:if>>
            <a href="${website}user/member/edit">
                <span class="fa fa-pencil-square-o"></span>
                编辑会员档案
                <c:if test="${MethodModule eq 'User:Member:Edit'}"><i class="selected"></i></c:if>
            </a>
        </li>
    </ul>
</li>
