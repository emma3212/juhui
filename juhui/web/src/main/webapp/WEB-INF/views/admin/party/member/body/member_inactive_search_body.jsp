<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<div class="holder">
    <div class="content">
        <h1>查看未激活会员列表</h1>

        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>会员管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看未激活会员列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-paw"></i>筛选条件</span>
            </div>
            <div class="box-container clearfix">
                <div class="box-body">
                    <form class="J_searchForm">
                        <div class="control-group">
                            <label class="control-label">搜索</label>

                            <div class="controls">
                                <select class="w100" name="item">
                                    <option value="1" selected="selected">PIN</option>
                                    <option value="2">公司全称</option>
                                    <option value="3">联系人</option>
                                    <option value="4">推荐人</option>
                                    <option value="5">客户经理</option>
                                </select>
                                <input type="text" placeholder="关键字..." class="w182 no-bgimg" name="key"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">开始时间</label>

                            <div class="controls">
                                <input type="text" data-type="date" data-format="YYYY-MM-DD HH:mm" class="w300"
                                       name="startTime"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">结束时间</label>

                            <div class="controls">
                                <input type="text" data-type="date" data-format="YYYY-MM-DD HH:mm" class="w300"
                                       name="endTime"/>
                            </div>
                        </div>
                        <div class="form-footer form-footer-reset">
                            <button class="btn btn-blue btn-search" type="submit">搜索</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>查看未激活会员列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="control-group">
                    <div class="pull-right dropdown-container h30 clearfix">
                        <button class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt"
                                data-dropdown-wait=".8" data-dropdown-evt="click">
                            操作<i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-box" id="J_dropCnt">
                            <li><a class="J_active" href="javascript:;">激活会员</a></li>
                            <li><a class="J_del" href="javascript:;">删除会员</a></li>
                        </ul>
                    </div>
                </div>
                <form class="J_operForm">
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th class="table-width-6"><a class="J_selectAll" href="javascript:;">全选/</a><a
                                    class="J_cancelAll" href="javascript:;">取消</a></th>
                            <th class="order pagination-reorder min-width" data-order-key="pin">PIN</th>
                            <th>公司全称</th>
                            <th class="table-width-8">联系人</th>
                            <th>联系人手机</th>
                            <th class="order pagination-reorder table-width-8" data-order-key="recommender">推荐人</th>
                            <th>客户经理</th>
                            <th class="order pagination-reorder" data-order-key="time">注册日期</th>
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