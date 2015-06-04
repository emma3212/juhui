<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/systemConfig/body/statistic_setting_body.jsp"/>
</tiles:insertDefinition>

<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/btn, widget/tab, widget/dialog',function(){
            var $ = S.all,
                    form = S.DOM.get('.J_operForm'),
                    errMsg = $('.J_errMsg').val();
            if(errMsg != ''){
                PW.widget.Dialog.alert(errMsg);
            }
            $('.J_save').data('btn').on('loading', function(e){
                form.submit();
            });
        })
    })
</script>

