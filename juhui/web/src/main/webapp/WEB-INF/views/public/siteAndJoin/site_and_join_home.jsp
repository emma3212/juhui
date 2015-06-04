<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/siteAndJoin/body/site_and_join_body.jsp" />
    <tiles:putAttribute name="extendHead"
                        value="<link href='${staticWebsite}css/pub/page/site-and-join.css' rel='stylesheet' />
                                <script type='text/javascript' src='${staticWebsite}js/pub/shiftzoom.js'></script> " />
</tiles:insertDefinition>

<script type="text/javascript">
    $(function(){
        shiftzoom.defaultButtons = false;
        shiftzoom.defaultXpos = 10;
        shiftzoom.defaultYpos = 50;
        shiftzoom.parentWidth = $('.in.active .site-map-addr').width();
        shiftzoom.parentHeight = $('.in.active .site-map-addr').height();
    })
    function loadMap(el){
        el.width = shiftzoom.parentWidth;
        el.height = shiftzoom.parentHeight;
        shiftzoom.add(el,{showcoords:true,zoom:100});
    }
</script>