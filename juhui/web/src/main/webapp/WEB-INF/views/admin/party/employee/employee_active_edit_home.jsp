<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/employee/body/employee_active_edit_body.jsp" />
</tiles:insertDefinition>

<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/box, page/employee/add, widget/tab',function(){
            PW.page.employee.Add();
        })
    })
</script>