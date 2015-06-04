<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>查看服务区域列表</h1>

        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>组织管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>服务区域管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看服务区域列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span>查看服务区域列表</span>
            </div>
            <div class="box-container clearfix">
                <form class="J_save-form">
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th class="table-width-30 ">服务区域名称</th>
                            <th class="table-width-15 ">客户数量</th>
                            <th class="table-width-15">排序</th>
                            <th class="table-width-10">是否开通核心产品</th>
                            <th class="min-width">编辑</th>
                            <th class="table-width-7">停用</th>
                        </tr>
                        </thead>
                        <tbody id="J_template">
                        </tbody>
                    </table>
                </form>
                <div id="J_pagination"></div>
            </div>
        </div>
    </div>
</div>