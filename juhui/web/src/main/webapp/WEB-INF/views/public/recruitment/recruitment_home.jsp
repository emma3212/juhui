<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/recruitment/body/recruitment_body.jsp" />
    <tiles:putAttribute name="extendHead"
                        value="<link href='${staticWebsite}css/pub/page/recruitment.css' rel='stylesheet' />" />
</tiles:insertDefinition>
<script type="text/javascript" src="${staticWebsite}js/pub/ellipsis.js"></script>
<script type="text/javascript" src="${staticWebsite}js/pub/recruitment.js"></script>
<script type="text/javascript" src="${staticWebsite}js/pub/ZoomPic.js"></script>
<script type="text/javascript" src="${staticWebsite}js/pub/module/jquery.validate.js"></script>
<script type="text/javascript" src="${staticWebsite}js/pub/module/valid-message.js"></script>
<script type="text/javascript" src="${staticWebsite}js/pub/module/additional-methods.js"></script>
<script type="text/javascript">
    $(function(){
        $.recruitment.init({
            // 岗位申请提交地址
            url: '${website}public/recruitment/ajax/add'
        });
    });
</script>