<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>查看维护订单</h1>

        <div class="crumb" id="crumb">
            <button class="btn btn-red time">
                <i class="fa fa-calendar"></i>
                <span>${requestScope.web_date}</span>
            </button>
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>会员中心</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>控制面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>免费IT维护</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看维护订单</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-edit"></i>查看维护订单</span>
            </div>
            <div class="box-container clearfix">
                <div class="control-group">
                    <div class="pull-right dropdown-container h30 clearfix">
                        <button type="button" class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt"
                                data-dropdown-wait=".8" data-dropdown-evt="click">
                            操作<i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-box" id="J_dropCnt">
                            <li><a href="${website}user/maintenance/order/export/pdf/${maintenanceOrderDto.id}"
                                   class="J_pdf">导出PDF</a></li>
                        </ul>
                    </div>
                </div>
                <div class="box-body">
                    <input type="hidden" class="J_orderId" value="12" name=""/>
                    <table class="table-form">
                        <tr>
                            <th colspan="6" class="big-title">博曼IT服务-免费IT维护服务表单(www.boman.net)</th>
                        </tr>
                        <tr>
                            <th class="table-width-15">维护订单编号</th>

                            <td colspan="2">${maintenanceOrderDto.num}</td>

                            <th class="table-width-15">维护订单生成时间</th>

                            <td colspan="2"><fmt:formatDate value="${maintenanceOrderDto.createdDateTime}"
                                                            pattern="yyyy-MM-dd HH:mm"/></td>

                        </tr>
                        <tr>
                            <th>
                                维护订单问题类型
                                <span class="required">*</span>
                            </th>
                            <td>
                                ${maintenanceOrderDto.parentType}
                            </td>
                            <td>
                                ${maintenanceOrderDto.type}
                            </td>
                            <th>维护子类描述</th>

                            <td colspan="2" class="float-left">${maintenanceOrderDto.typeDesc}</td>

                        </tr>
                        <tr>
                            <th>PIN</th>
                            <td>${maintenanceOrderDto.memberPin}</td>
                            <th>公司名称</th>

                            <td colspan="3">
                                ${maintenanceOrderDto.memberName}

                            </td>

                        </tr>
                        <tr>
                            <th>详细办公地址</th>
                            <td colspan="5">
                                ${maintenanceOrderDto.memberAddress}
                                </td>
                        </tr>
                        <tr>
                            <th>申请人</th>
                            <td>${maintenanceOrderDto.applicant}</td>
                            <th>申请人手机</th>
                            <td>${maintenanceOrderDto.applicantPhone}</td>
                            <th>申请人固定电话</th>
                            <td>${maintenanceOrderDto.applicantTel}</td>
                        </tr>
                        <tr>
                            <th>服务工程师</th>
                            <td>${maintenanceOrderDto.employeeName}<!--{工程师 end}--></td>
                            <th>服务工程师手机</th>
                            <td>${maintenanceOrderDto.employeePhone}</td>
                            <th>客户经理</th>
                            <td>${maintenanceOrderDto.managerName}</td>
                        </tr>
                        <tr>
                            <th colspan="6" class="float-left">
                                问题描述(请简要描述问题现象)
                            </th>
                        </tr>
                        <tr>
                            <td colspan="6">

                                <textarea class="p95 form-control" disabled="disabled"
                                          style="height:200px;">${maintenanceOrderDto.problem}</textarea>

                            </td>
                        </tr>
                        <tr>
                            <th colspan="6" class="float-left">
                                注意事项：请仔细选择问题类型，以便于博曼派遣相关专业工程师上门，更好的为您解决问题，不同类型的问题请分开提交维护订单。
                            </th>
                        </tr>
                        <tr>
                            <th colspan="6" class="float-left">问题解决方法</th>
                        </tr>
                        <tr>
                            <td colspan="6">

                                <textarea class="p95 form-control" disabled="disabled"
                                          style="height:200px;">${maintenanceOrderDto.solution}</textarea>

                            </td>
                        </tr>
                        <tr>
                            <th colspan="6" class="float-left">订单备注(是否发生费用)</th>
                        </tr>
                        <tr>
                            <td colspan="6">

                                <textarea class="p95 form-control" disabled="disabled"
                                          style="height:200px;">${maintenanceOrderDto.desc}</textarea>

                            </td>
                        </tr>
                        <tr>
                            <th colspan="3" class="float-left">订单签章</th>
                            <th colspan="3" class="float-left">订单完成确认签字</th>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <img src="${staticWebsite}img/admin/page/test/img_u205.gif" alt="订单签章" width="150"
                                     height="160"/>
                            </td>
                            <td colspan="3"><span
                                    class="big-title">${maintenanceOrderDto.signatory}</span>
                            </td>
                        </tr>
                    </table>
                    <div class="form-footer form-footer-margin">
                        <button type="button" class="btn btn-yellow btn-refresh"
                                onclick="window.location.href='${website}user/maintenance/order/'+
                                <c:if test="${maintenanceOrderDto.status == 0}">'unfinish'</c:if>
                                <c:if test="${maintenanceOrderDto.status == 1}">'finish'</c:if>
                                <c:if test="${maintenanceOrderDto.status == 2}">'canceled'</c:if>
                                        ">返回
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>