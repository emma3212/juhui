<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>查看岗位列表</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员列表</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>招聘管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看岗位管理列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>岗位管理列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="row-fluid control-group">
                    <div class="col span50">
                        <button class="btn-big btn-green btn-back-add J_add">添加岗位<i class="fa fa-plus"></i></button>
                    </div>
                </div>
                <form class="J_operForm">
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th class="order pagination-reorder table-width-40" data-order-key="name">岗位名称</th>
                            <th class="table-width-40 order pagination-reorder" data-order-key="id">岗位ID</th>
                            <th class="min-width">编辑</th>
                            <th class="table-width-6">删除</th>
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