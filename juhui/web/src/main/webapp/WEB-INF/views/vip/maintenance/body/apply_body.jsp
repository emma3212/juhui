<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="holder">
    <div class="content">
        <h1>发起维护</h1>

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
                    <a>发起维护</a>
                </li>
            </ul>
        </div>
        <c:if test="${openProducts ==0}">
            <div class="alert  alert-danger ">
                <strong>提示：您所在的区域暂未开通核心产品，暂无法申请维护，请联系客服！</strong>
            </div>
        </c:if>
        <c:if test="${openProducts ==1}">
            <div class="alert <c:if test="${count !=0}"> alert-success</c:if> <c:if test="${count ==0}"> alert-danger</c:if>">
                <strong>提示：</strong> 您还拥有维护次数<strong class="J_mainNum">${count}</strong>次
            </div>
        </c:if>

            <form data-fold="fold" class="box box-blue no-margin-box J_addForm"
                  action="${website}user/maintenance/apply" method="POST">
                <input type="hidden" class="showErrInp" value="" name="">
                <input type="hidden" class="J_hasCoreProduct" value="${openProducts}" />
                <div class="tab-panel tab-no-border ">
                    <div class="tab-content active">
                        <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
                            <span>发起维护</span>
                        </div>
                        <div class="box-container">
                            <div class="box-body">
                                <table class="table-form">
                                    <tr>
                                        <th colspan="6" class="big-title">博曼IT服务-免费IT维护服务表单(www.boman.net)</th>
                                    </tr>
                                    <tr>
                                        <th class="table-width-15">维护订单编号</th>
                                        <td colspan="2"></td>
                                        <th class="table-width-15">维护订单生成时间</th>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <th>
                                            维护订单问题类型
                                            <span class="required">*</span>
                                        </th>
                                        <td>
                                            <select class="form-control w100 J_topLevel" data-valid-rule="scale(0,1000)">
                                                <option value="0">--请选择--</option>
                                                <c:forEach items="${typeList}" var="type">
                                                    <option value="${type.id}">${type.name}
                                                        <c:if test="${type.enabled == 0}">(已停用)</c:if></option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>

                                            <select class="form-control w100 J_subLevel" data-valid-rule="scale(0,1000)"
                                                    name="typeId">
                                                <option value="0">--请选择--</option>
                                            </select>
                                        </td>
                                        <th>维护子类描述</th>

                                        <td colspan="2" class="float-left J_subDesc table-width-50"></td>

                                    </tr>
                                    <tr>
                                        <th>PIN</th>
                                        <td>${orderDto.memberPin}</td>
                                        <th>公司名称</th>

                                        <td colspan="3">
                                            ${orderDto.memberName}

                                        </td>

                                    </tr>
                                    <tr>
                                        <th>详细办公地址</th>
                                        <td colspan="5">
                                            ${orderDto.memberAddress}
                                            </td>
                                    </tr>
                                    <tr>
                                        <th>申请人</th>
                                        <td>${orderDto.applicant}</td>
                                        <th>申请人手机</th>
                                        <td>${orderDto.applicantPhone}</td>
                                        <th>申请人固定电话</th>
                                        <td>${orderDto.applicantTel}</td>
                                    </tr>
                                    <tr>
                                        <th>服务工程师</th>
                                        <td>未分配</td>
                                        <th>服务工程师手机</th>
                                        <td></td>
                                        <th>客户经理</th>
                                        <td>${orderDto.managerName}</td>
                                    </tr>
                                    <tr>
                                        <th colspan="6" class="float-left">
                                            问题描述(请简要描述问题现象)
                                            <span class="required">*字数控制在200字以内</span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <textarea class="p95 form-control" style="height:200px;"
                                                      data-valid-rule="length(0,201)" name="problem"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="6" class="float-left">
                                            注意事项：请仔细选择问题类型，以便于博曼派遣相关专业工程师上门，更好的为您解决问题，不同类型的问题请分开提交维护订单。
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-footer form-footer-margin">
                    <button type="submit" class="btn btn-blue btn-ok btn-margin-right J_save"
                            data-loading-text="正在提交，请稍后" data-btn-type="loading">保存
                    </button>
                    <button type="reset" class="btn btn-yellow btn-refresh" onclick="window.location.reload()">重置
                    </button>
                </div>
            </form>
    </div>
</div>