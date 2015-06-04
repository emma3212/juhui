<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/regist/body/regist_body.jsp" />
    <tiles:putAttribute name="extendHead"
                        value="<link href='${staticWebsite}css/pub/page/register.css' rel='stylesheet' />
                                <link href='${staticWebsite}tool/base-widget/css/form.css' rel='stylesheet' />
                                <script src='${website}resources/public/js/site-config.jsp'></script>
                                <script src='${staticWebsite}tool/pui/1.1/lib/kissy/seed.js'></script> "/>
</tiles:insertDefinition>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('page/register',function(){
            PW.page.Register();
        })
    })
</script>