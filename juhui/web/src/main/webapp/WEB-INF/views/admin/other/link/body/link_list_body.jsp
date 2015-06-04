<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>查看友情链接列表</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>友情链接管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看友情链接列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>查看友情链接列表</span>
            </div>
            <div class="box-container clearfix">
                <table class="table-responsive">
                    <thead>
                    <tr>
                        <th>链接名称</th>
                        <th>链接地址</th>
                        <th>链接LOGO</th>
                        <th class="min-width">排序</th>
                        <th class="min-width">编辑</th>
                        <th class="min-width">停用</th>
                    </tr>
                    </thead>
                    <tbody id="J_template"></tbody>
                </table>
                <div id="J_pagination"></div>
            </div>
        </div>
    </div>
</div>