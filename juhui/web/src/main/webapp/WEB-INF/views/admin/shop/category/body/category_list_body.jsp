<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<div class="holder">
    <div class="content">
        <h1>产品分类管理</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a href="index.html">产品管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a href="#">配置管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a href="#">产品分类管理</a>
                </li>
            </ul>
        </div>
        <div class="box box-blue" data-fold="fold">
            <div class="box-title clearfix">
                <span><i class="fa fa-table"></i>产品分类管理</span>
            </div>
            <div class="box-container clearfix">
                <div class="row-fluid control-group">
                    <div class="col span50">
                        <button type="button" class="btn-big btn-green btn-back-add J_add">添加产品分类<i class="fa fa-plus"></i></button>
                        <button type="button" class="btn-big btn-green btn-back-add J_back">返回上级分类<i class="fa fa-undo"></i></button>
                    </div>
                </div>
                <form class="J_operForm">
                    <table class="table-responsive">
                        <thead>
                        <tr>
                            <th>分类名称</th>
                            <th>上级分类</th>
                            <th>排序</th>
                            <th class="min-width">编辑</th>
                            <th>停用</th>
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
