<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="wechat">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="extendHead" value="
        <link rel='stylesheet' type='text/css' href='${staticWebsite}css/weixin/module/iscroll.css' />
	    <script src='${staticWebsite}js/weixin/iscroll.js'></script>" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/wechat/maintenance/body/incomplete_order_list_body.jsp" />
</tiles:insertDefinition>

<script src="${staticWebsite}js/weixin/list.js"></script>
<script type="text/javascript">
    $().ready(function () {
        $.list.init({
            //获取分页url
            getListUrl: '${website}wechat/maintenance/order/ajax/list/${openId}',
            //跳转详情url
            detailUrl: '${website}wechat/maintenance/order/${openId}'
        })
    })
</script>