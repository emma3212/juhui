<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>维护订单问题类型管理</h1>

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
                    <a>维护订单问题类型管理</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>维护订单问题类型管理</span>
            </div>
            <div class="box-container clearfix">
                <div class="row-fluid control-group">
                    <div class="col span50">
                        <button type="button" class="btn-big btn-green btn-back-add J_add">添加维护订单问题类型<i
                                class="fa fa-plus"></i></button>
                        <button type="button" class="btn-big btn-green btn-back-add J_back">返回上级分类<i
                                class="fa fa-undo"></i></button>
                    </div>
                </div>
                <form class="J_operForm">
                    <input type="hidden" id="parentId" value="${parentId}"/>
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th class="table-width-20">类型名称</th>
                            <th class="table-width-10">上级类型</th>
                            <th>类型描述</th>
                            <th class="min-width">编辑</th>
                            <th class="min-width">停用</th>
                            <th class="min-width enter">进入</th>
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