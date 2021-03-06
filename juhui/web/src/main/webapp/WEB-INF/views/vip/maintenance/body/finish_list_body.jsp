<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="holder">
    <div class="content">
        <h1>查看完成维护订单列表</h1>

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
                    <a>免费IT服务</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>我的维护订单</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看完成维护订单列表</a>
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
                        <div class="row-fluid">
                            <div class="col span49">
                                <div class="control-group">
                                    <label class="control-label">搜索</label>

                                    <div class="controls">
                                        <select class="w150" name="key">
                                            <option value="1">订单编号</option>
                                            <option value="7">服务人员</option>
                                        </select>
                                        <input type="text" placeholder="关键字..." class="w150 no-bgimg" name="value"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        订单完成评价
                                    </label>

                                    <div class="controls">
                                        <select class="w332" name="estimate">
                                            <option value="">全部</option>
                                            <option value="0">未评价</option>
                                            <option value="1">系统好评</option>
                                            <option value="2">客户好评</option>
                                            <option value="3">客户差评</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        选择维护订单问题类型
                                    </label>

                                    <div class="controls">
                                        <select class="w332 J_orderType">
                                            <option value="0">全部</option>
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
                                        <select class="w332 J_orderSecondType" name="typeId">
                                            <option value="">全部</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col span80">
                                <div class="control-group">
                                    <label class="control-label">条件</label>

                                    <div class="controls">
                                        <select class="w150 " name="timeType">
                                            <option value="1">订单生成时间</option>
                                            <option value="2">订单完成时间</option>
                                        </select>

                                        <input type="text" data-type="date" data-format="YYYY-MM-DD HH:mm" class="w150"
                                               name="fromTime"/>
                                        <span class="input-group-addon">to</span>
                                        <input type="text" data-type="date" data-format="YYYY-MM-DD HH:mm" class="w150"
                                               name="thruTime"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col span80">
                                <div class="control-group">
                                    <label class="control-label">计算完成耗时</label>

                                    <div class="controls">
                                        <select class="w150 J_firstSelect" name="consumingType">
                                            <option value="0">请选择</option>
                                            <option value="1">&gt;=</option>
                                            <option value="2">&lt;=</option>
                                            <option value="3">介于</option>
                                        </select>
                                        <input type="text" class="w150" name="consumingTime"/>
                                        <span class="input-group-addon J_secondTime">to</span>
                                        <input type="text" class="w150 J_secondTime" name="consumingTimeExt"/>
                                    </div>
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
                <span><i class="fa fa-table"></i>查看完成维护订单列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="control-group">
                    <div class="pull-right dropdown-container h30 clearfix">
                        <button class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt"
                                data-dropdown-wait=".8" data-dropdown-evt="click">
                            操作<i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-box" id="J_dropCnt">
                            <li><a href="${website}user/maintenance/list/export/pdf" class="J_pdf"
                                   target="_blank">导出PDF</a></li>
                            <li><a href="${website}user/maintenance/list/export/excel" class="J_excel" target="_blank">导出Excel</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box-body">
                    <form class="J_operForm">
                        <table class="table-responsive">
                            <thead>
                            <tr>
                                <th class="table-width-6"><a class="J_selectAll" href="javascript:;">全选/</a><a
                                        class="J_cancelAll" href="javascript:;">取消</a></th>
                                <th class="order pagination-reorder table-width-20" data-order-key="num">订单编号</th>
                                <th class="order pagination-reorder table-width-10" data-order-key="createdTime">
                                    订单生成时间
                                </th>
                                <th class="order pagination-reorder table-width-10" data-order-key="thruTime">订单完成时间
                                </th>
                                <th class="order pagination-reorder table-width-10" data-order-key="consumingTime">
                                    订单完成耗时
                                </th>
                                <th class="order pagination-reorder table-width-20" data-order-key="type">订单问题子类</th>
                                <th class="order pagination-reorder table-width-7" data-order-key="employeeName">服务人员
                                </th>
                                <th class="order pagination-reorder table-width-6" data-order-key="estimateStatus">评价
                                </th>
                                <th class="table-width-6">赠送积分</th>
                                <th class="min-width">操作</th>
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