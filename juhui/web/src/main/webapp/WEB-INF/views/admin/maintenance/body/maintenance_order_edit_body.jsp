<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>修改维护订单</h1>

        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>订单管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>维护订单管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>修改维护订单</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-edit"></i>修改维护订单</span>
            </div>
            <div class="box-container clearfix">
                <div class="box-body">
                    <form class="J_searchForm no-icon" action="${website}admin/maintenance/order" method="post">
                        <input type="hidden" value="put" name="_method" />
                        <input type="hidden" class="J_orderId" value="${maintenanceOrderDto.id}" name="id" />
                        <input type="hidden" value="${maintenanceOrderDto.status}" name="status" />
                        <table class="table-form">
                            <tr>
                                <th colspan="6" class="big-title">博曼IT服务-免费IT维护服务表单(www.boman.net)</th>
                            </tr>
                            <tr>
                                <th class="table-width-15">维护订单编号</th>

                                <td colspan="2">${maintenanceOrderDto.num}</td>

                                <th class="table-width-15">维护订单生成时间</th>

                                <td colspan="2"><fmt:formatDate value="${maintenanceOrderDto.createdDateTime}"
                                                                pattern="yyyy-MM-dd HH:mm" /></td>

                            </tr>
                            <tr>
                                <th>
                                    维护订单问题类型
                                    <span class="required">*</span>
                                </th>
                                <td>

                                    <select class="form-control w100 J_topLevel" data-valid-rule="scale(0,1000)"
                                            name="">
                                        <option value="0">--请选择--</option>
                                        <c:forEach var="type" items="${topTypeList}">
                                            <c:if test="${type.id == maintenanceOrderDto.parentTypeId}">
                                                <option value="${type.id}" selected>${type.name}
                                                    <c:if test="${type.enabled == 0}">(已停用)</c:if></option>
                                            </c:if>
                                            <c:if test="${type.id != maintenanceOrderDto.parentTypeId}">
                                                <option value="${type.id}">${type.name}
                                                    <c:if test="${type.enabled == 0}">(已停用)</c:if></option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                                <td>

                                    <select class="form-control w100 J_subLevel" data-valid-rule="scale(0,1000)"
                                            name="typeId">
                                        <option value="0">--请选择--</option>
                                        <c:forEach var="type" items="${childTypeList}">
                                            <c:if test="${type.id == maintenanceOrderDto.typeId}">
                                                <option data-desc="${type.desc}"
                                                        <c:if test="${type.enabled == 0}">class="J_disable" </c:if>
                                                        value="${type.id}" selected>${type.name}
                                                    <c:if test="${type.enabled == 0}">(已停用)</c:if></option>
                                            </c:if>
                                            <c:if test="${type.id != maintenanceOrderDto.typeId}">
                                                <option data-desc="${type.desc}"
                                                        <c:if test="${type.enabled == 0}">class="J_disable" </c:if>
                                                        value="${type.id}">${type.name}
                                                    <c:if test="${type.enabled == 0}">(已停用)</c:if></option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </td>
                                <th>维护子类描述</th>

                                <td colspan="2"
                                    class="float-left J_subDesc table-width-40">${maintenanceOrderDto.typeDesc}</td>

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
                                <th>
                                    服务工程师
                                    <span class="required">*</span>
                                </th>
                                <td>
                                    <input type="hidden" class="J_serverId" value="${maintenanceOrderDto.employeeId}"
                                           name="employeePartyId" />
                                    <input type="hidden" class="J_memberId" value="${maintenanceOrderDto.memberId}" />
                                    <a href="javascript:;" class="J_selectServer">
                                        <span class="btn-margin-right">请选择</span>
                                    </a>
                                    <span class="J_serverRender">${maintenanceOrderDto.employeeName}</span>
                                </td>
                                <th>服务工程师手机</th>
                                <td>${maintenanceOrderDto.employeePhone}</td>
                                <th>客户经理</th>
                                <td>${maintenanceOrderDto.managerName}</td>
                            </tr>
                            <tr>
                                <th colspan="6" class="float-left">
                                    问题描述(请简要描述问题现象)
                                    <span class="required">*</span>
                                </th>
                            </tr>
                            <tr>
                                <td colspan="6">

                                    <textarea class="p95 form-control" style="height:200px;"
                                              name="problem">${maintenanceOrderDto.problem}</textarea>

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

                                    <textarea class="p95 form-control" style="height:200px;"
                                              name="solution">${maintenanceOrderDto.solution}</textarea>

                                </td>
                            </tr>
                            <tr>
                                <th colspan="6" class="float-left">订单备注(是否发生费用)</th>
                            </tr>
                            <tr>
                                <td colspan="6">

                                    <textarea class="p95 form-control" style="height:200px;"
                                              name="desc">${maintenanceOrderDto.desc}</textarea>

                                </td>
                            </tr>
                            <tr>
                                <th colspan="3" class="float-left">订单签章</th>
                                <th colspan="3" class="float-left">订单完成确认签字</th>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <img src="${staticWebsite}img/admin/page/test/img_u205.gif" alt="订单签章" width="150"
                                         height="160" />
                                </td>
                                <td colspan="3">
                                    <!--{在value中填入确认人名称 start}-->
                                    <input type="text" class="form-control w150 big-title"
                                           value="${maintenanceOrderDto.signatory}" name="signatory" />
                                    <!--{在value中填入确认人名称 end}-->
                                </td>
                            </tr>
                        </table>
                        <div class="form-footer form-footer-margin">
                            <button type="submit" class="btn btn-blue btn-ok btn-margin-right"
                                    data-loading-text="正在提交，请稍后" data-btn-type="loading">保存
                            </button>
                            <button type="button" class="btn btn-yellow btn-refresh"
                                    onclick="window.location.href='${website}admin/maintenance/order/'+
                                    <c:if test="${maintenanceOrderDto.status == 0}">'unfinish'</c:if>
                                    <c:if test="${maintenanceOrderDto.status == 1}">'finish'</c:if>
                                    <c:if test="${maintenanceOrderDto.status == 2}">'canceled'</c:if>
                                            ">返回
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

