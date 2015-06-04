<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="holder">
    <div class="content">
        <h1>查看申请列表</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>招聘管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a href="javascript:;">查看申请列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>查看申请列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="control-group">
                    <div class="pull-right dropdown-container h30 clearfix">
                        <button class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt" data-dropdown-wait=".8" data-dropdown-evt="click">
                            操作<i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-box" id="J_dropCnt">
                            <li><a href="${website}admin/post/application/export/post/application" class="J_excel">导出Excel</a></li>
                            <li><a class="J_del" href="javascript:;">删除</a></li>
                        </ul>
                    </div>
                </div>
                <div class="box-body">
                    <form class="J_operForm">
                        <table class="table-responsive">
                            <thead>
                            <tr>
                                <th class="table-width-7"><a class="J_selectAll" href="javascript:;">全选/</a><a class="J_cancelAll" href="javascript:;">取消</a></th>
                                <th class="order pagination-reorder table-width-10" data-order-key="postName">岗位名称</th>
                                <th class="table-width-8">岗位ID</th>
                                <th class="order pagination-reorder table-width-10" data-order-key="name">申请人姓名</th>
                                <th class="table-width-10">申请人手机</th>
                                <th class="order pagination-reorder table-width-8" data-order-key="name">申请时间</th>
                                <th class="min-width">备注</th>
                                <th class="min-width">是否联系</th>
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