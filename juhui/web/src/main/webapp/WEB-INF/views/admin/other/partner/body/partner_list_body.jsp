<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="holder">
    <div class="content">
        <h1>查看合作列表</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>合作意向管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看合作列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>查看合作列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="control-group">
                    <div class="pull-right dropdown-container h30 clearfix">
                        <button class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt" data-dropdown-wait=".8" data-dropdown-evt="click">
                            操作<i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-box" id="J_dropCnt">
                            <li><a href="${website}admin/partner/export/partner" >导出Excel</a></li>
                            <li><a href="javascript:;" class="J_del" >删除</a></li>
                        </ul>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th class="table-width-7"><a class="J_selectAll" href="javascript:;">全选/</a><a class="J_cancelAll" href="javascript:;">取消</a></th>
                            <th class="order pagination-reorder " data-order-key="name">合作人姓名</th>
                            <th class="order pagination-reorder " data-order-key="mobilePhone">合作人手机</th>
                            <th class="order pagination-reorder " data-order-key="createdTime">合作时间</th>
                            <th class="order pagination-reorder table-width-10" data-order-key="cooperateIntention">合作意向</th>
                        </tr>
                        </thead>
                        <tbody id="J_template"></tbody>
                    </table>
                    <div id="J_pagination"></div>
                </div>
            </div>
        </div>
    </div>
</div>