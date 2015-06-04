<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/helpAndSupport/body/help_and_support_result_body.jsp" />
    <tiles:putAttribute name="extendHead" value="<link href='${staticWebsite}css/pub/page/help-search-result.css' rel='stylesheet' />
                                                                                    <script src='${website}resources/public/js/site-config.jsp'></script>
                                                                                    <script src='${staticWebsite}tool/pui/1.1/lib/kissy/seed.js'></script>" />
</tiles:insertDefinition>
<div class="modal fade" id="J_modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close J_close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">问题详情</h4>
            </div>
            <div class="modal-body">
                <div class="form-group clearfix">
                    <div class="col-sm-12">
                        <label>问题描述：</label>
                        <span class="J_desc"></span>
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-sm-6">
                        <label>问题分类：</label>
                        <span class="J_type"></span>
                    </div>
                    <div class="col-sm-6">
                        <label>时间：</label>
                        <span class="J_time"></span>
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-sm-12">
                        <label class="pull-left">工程师回复：</label>
                        <p class="pull-left J_reply"></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary J_close" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<div class="modal-backdrop fade in hidden"></div>
<!--#include file="/pages/pub/common/footer.html"-->
<script type="text/template" id="tpl">
    {@each list as it}
    <li class="list-group-item">
        <a class="J_link desc" href="javascript:;" data-id="&{it.id}">&{it.problem}</a>
        <p>
            <label>时间：</label>
            <span class="time">&{it.time}</span>
            <label>问题类型：</label>
            <span class="type">&{it.type}</span>
        </p>
    </li>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('page/help-search-result',function(){
            PW.page.helpSearchResult({
                // 请求工程师回复的地址
                replyUrl: '${website}public/help/support/ajax/query',
                pagiOpts: {
                    renderTo:'#J_pagination',
                    juicerRender:'#tpl',
                    dataRender:'#J_template',
                    url: '${website}public/help/support/ajax/search',
                    configUrl: function(url,page,me,prevPaginationData){
                        return url+'/'+page;
                    }
                }
            });
        })
    })
</script>