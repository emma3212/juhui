<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link rel="stylesheet" href="${staticWebsite}css/admin/page/site/site.css">
<div class="holder">
    <div class="content">
        <h1>查看服务站点列表</h1>

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
                    <a>服务站点管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>查看服务站点列表</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span>查看服务站点列表</span>
            </div>
            <div class="box-container">
                <div class="box-body clearfix">
                    <div class="row-fluid control-group">
                        <div class="col span50">
                            <button type="button" class="btn-big btn-green btn-back-add J_newSite">
                                添加服务站点 <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <form class="J_form">
                        <table class="table-responsive">
                            <thead>
                            <tr>
                                <th class="table-width-40">服务站点名称</th>
                                <th class="table-width-40">服务站点所属区域</th>
                                <th class="min-width">编辑</th>
                                <th class="table-width-7">停用</th>
                            </tr>
                            </thead>
                            <tbody class="J_tbody" id="J_template">
                            </tbody>
                        </table>
                    </form>
                    <div id="J_pagination"></div>
                    <select class="J_siteRegion hidden" name="regionId">
                        <option value="0">请选择</option>
                        <c:forEach items="${regionList}" var="r">
                            <option value="${r.id}" <c:if test="${r.enabled == 0}">class="J_disable"</c:if>>${r.name}
                                <c:if test="${r.enabled == 0}">(已停用)</c:if></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>