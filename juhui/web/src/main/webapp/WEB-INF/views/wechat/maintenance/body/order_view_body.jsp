<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="page detail-page">
    <h3 class="lighter-black">维护订单详情</h3>
    <table class="detail-table">
        <tr>
            <td width="35%">维护订单编号</td>
            <td>${maintenanceOrderDto.num}</td>
        </tr>
        <tr>
            <td>维护订单生成时间</td>
            <td>${maintenanceOrderDto.createdTime}</td>
        </tr>
        <tr>
            <td>维护订单问题子类</td>
            <td>${maintenanceOrderDto.type}</td>
        </tr>
        <tr>
            <td>维护订单子类描述</td>
            <td>${maintenanceOrderDto.typeDesc}</td>
        </tr>
        <tr>
            <td>服务工程师</td>
            <td>${maintenanceOrderDto.employeeName}</td>
        </tr>
        <tr>
            <td>服务工程师手机</td>
            <td>${maintenanceOrderDto.employeePhone}</td>
        </tr>
        <tr>
            <td>客户经理</td>
            <td>${maintenanceOrderDto.managerName}</td>
        </tr>
        <tr>
            <td>问题描述</td>
            <td>${maintenanceOrderDto.problem}</td>
        </tr>
    </table>

    <div class="back">
        <a onclick="window.history.go(-1);">返回上一页</a>
    </div>
</div>