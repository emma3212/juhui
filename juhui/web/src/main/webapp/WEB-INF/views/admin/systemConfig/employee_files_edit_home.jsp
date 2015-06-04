<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/systemConfig/body/employee_files_edit_body.jsp" />
</tiles:insertDefinition>

<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/box, page/user/edit, widget/tab',function(){
            PW.page.user.Edit();
        })
    })
</script>