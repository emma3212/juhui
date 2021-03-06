<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="holder">
    <div class="content">
        <h1>查看未完成维护订单列表</h1>

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
                    <a>查看未完成维护订单列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue">
            <div class="box-title clearfix">
                <span><i class="fa fa-paw"></i>筛选条件</span>
            </div>
            <div class="box-container clearfix">
                <div class="box-body row-fluid">
                    <form class="J_searchForm">
                        <div class="col span49">
                            <div class="control-group">
                                <label class="control-label">搜索</label>

                                <div class="controls">
                                    <select class="w100" name="key">
                                        <option value="1">订单编号</option>
                                        <option value="3">PIN</option>
                                        <option value="4">公司名称</option>
                                        <option value="5">申请人</option>
                                        <option value="6">客户经理</option>
                                        <option value="7">服务人员</option>
                                    </select>
                                    <input type="text" placeholder="关键字..." class="w182 no-bgimg" name="value"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">开始时间</label>

                                <div class="controls">
                                    <input type="text" data-type="date" data-format="YYYY-MM-DD HH:mm" class="w300"
                                           name="fromTime"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">结束时间</label>

                                <div class="controls">
                                    <input type="text" class="w300" data-type="date" data-format="YYYY-MM-DD HH:mm"
                                           name="thruTime"/>
                                </div>
                            </div>
                        </div>
                        <div class="col span49">
                            <div class="control-group">
                                <label class="control-label">
                                    选择维护订单问题类型
                                </label>

                                <div class="controls">
                                    <select class="w300 J_orderType">
                                        <option value="">全部</option>
                                        <c:forEach items="${typeList}" var="type">
                                            <option value="${type.id}">${type.name}<c:if test="${type.enabled == 0}">(已停用)</c:if></option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    选择维护订单问题子类
                                </label>

                                <div class="controls">
                                    <select class="w300 J_orderSecondType" name="typeId">
                                        <option value="0">全部</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer form-footer-reset col span70">
                            <button class="btn btn-blue btn-search" type="submit">搜索</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="box box-blue">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>查看未完成维护订单列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="control-group">
                    <div class="pull-right dropdown-container h30 clearfix">
                        <button class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt"
                                data-dropdown-wait=".8" data-dropdown-evt="click">
                            操作<i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-box" id="J_dropCnt">
                            <li><a href="${website}admin/maintenance/order/list/export/pdf" class="J_pdf"
                                   target="_blank">导出PDF</a></li>
                            <li><a href="${website}admin/maintenance/order/list/export/excel" class="J_excel"
                                   target="_blank">导出Excel</a></li>
                            <li><a href="javascript:;" class="J_completeOrder">完成订单</a></li>
                            <li><a href="javascript:;" class="J_cancelOrder">取消订单</a></li>
                        </ul>
                    </div>
                </div>
                <div class="box-body">
                    <form class="J_operForm">
                        <table class="table-responsive">
                            <thead>
                            <tr>
                                <th class="table-width-7"><a class="J_selectAll" href="javascript:;">全选/</a><a
                                        class="J_cancelAll" href="javascript:;">取消</a></th>
                                <th class="order pagination-reorder table-width-10" data-order-key="num">订单编号</th>
                                <th class="order pagination-reorder table-width-10" data-order-key="createdTime">
                                    生成时间
                                </th>
                                <th class="order pagination-reorder table-width-10" data-order-key="type">问题子类</th>
                                <th class="order pagination-reorder table-width-6" data-order-key="memberPin">PIN</th>
                                <th class="order pagination-reorder table-width-15" data-order-key="memberName">公司名称</th>
                                <th class="order pagination-reorder table-width-6" data-order-key="applicant">申请人</th>
                                <th class="order pagination-reorder table-width-7" data-order-key="managerName">客户经理
                                </th>
                                <th class="order pagination-reorder table-width-9" data-order-key="employeeName">服务人员
                                </th>
                                <th class="table-width-11">操作</th>
                            </tr>
                            </thead>
                            <tbody id="J_template"></tbody>
                        </table>
                    </form>
                    <div id="J_pagination"></div>
                </div>
            </div>
        </div>
    </div>
</div>