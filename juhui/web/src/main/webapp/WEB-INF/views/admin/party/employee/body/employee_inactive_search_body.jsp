<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<div class="holder">
    <div class="content">
        <h1>查看停用员工列表</h1>

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
                    <a>员工管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看停用员工列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>查看停用员工列表</span>
            </div>
            <div class="box-container clearfix">
                <div class="row-fluid control-group">
                    <div class="col span50">
                        <form class="J_searchForm">
                            <select class="form-control w100" name="item">
                                <option value="0">PIN</option>
                                <option value="1">姓名</option>
                                <option value="2">邮箱</option>
                                <option value="3">手机</option>
                                <option value="4">QQ</option>
                                <option value="5">角色</option>
                            </select>
                            <input type="text" placeholder="关键字..." class="form-control search-input"
                                   name="key"/>
                            <button class="btn-big btn-green btn-big-icon" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>
                    </div>
                    <div class="col span50 ">
                        <div class="pull-right dropdown-container h30 clearfix">
                            <button class="btn dropdown pull-right" id="J_drop" data-dropdown-box="J_dropCnt"
                                    data-dropdown-wait=".8" data-dropdown-evt="click">
                                操作<i class="fa fa-angle-down"></i>
                            </button>
                            <ul class="dropdown-box" id="J_dropCnt">
                                <li><a class="J_abledTrigger" href="javascript:;">启用员工</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <form class="J_employeeList">
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th class="table-width-6"><a class="J_selectAll" href="javascript:;">全选/</a><a
                                    class="J_cancelAll" href="javascript:;">取消</a></th>
                            <th class="min-width">PIN</th>
                            <th>姓名</th>
                            <th>邮箱</th>
                            <th>手机</th>
                            <th>QQ</th>
                            <th>角色</th>
                            <th class="min-width">编辑</th>
                        </tr>
                        </thead>
                        <tbody id="J_template"></tbody>
                    </table>
                    <div id="J_pagination"></div>
                </form>
            </div>
        </div>
    </div>
</div>