<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>修改自定义菜单</h1>

        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>系统配置管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>修改微信自定义菜单</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>修改自定义菜单</span>
            </div>
            <div class="box-container">
                <div class="box-body clearfix">
                    <div class="row-fluid control-group">
                        <div class="alert alert-warning alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                            <strong>提示：</strong>菜单修改之后，由于微信客户端有缓存，需有一段时间才能在微信客户端看到修改之后的菜单。
                        </div>
                        <c:if test="${code == 0}">
                            <div class="alert alert-success alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                                <strong>${msg}</strong>
                            </div>
                        </c:if>
                        <c:if test="${code == 1}">
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                                <strong>${msg}</strong>
                            </div>
                        </c:if>
                    </div>
                    <form class="J_form" action="${website}admin/wechat/menu" method="post">
                        <input type="hidden" name="_method" value="put" />
                        <div class="control-group">
                            <div class="controls">
                                <textarea name="menu" class="w800" type="text">${menu}</textarea>
                            </div>
                        </div>
                        <div class="form-footer">
                            <button class="btn btn-blue btn-ok btn-margin-right btn1" type="submit">保存</button>
                            <button class="btn  btn-yellow btn-cancel" type="reset">重置</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>