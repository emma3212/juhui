<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/other/post/body/post_list_body.jsp"/>
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-list-id="&{it.id}">
        <td class="J_name">&{it.name}</td>
        <td class="J_jobId">&{it.id}</td>
        <td>
            <a class="J_edit" href="javascript:;">编辑</a>
        </td>
        <td>
            <a class="J_del" href="javascript:;">删除</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/template" id="editTpl">
    <tr data-list-id="&{job.id}" data-oper-type="&{job.type}">
        <td>
            <input type="hidden" name="id" value="&{job.id}" />
            <input type="text" class="form-control input-small valid-icon J_jobName" data-valid-rule="notNull & length(0,11)" name="name" value="&{job.name}" /></td>
        <td class="J_jobId">&{job.jobId}</td>
        <td><a class="J_save" href="javascript:;">保存</a>
        </td>
        <td> <a class="J_cancel" href="javascript:;">取消</a></td>
    </tr>
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('page/recruitment/job-list',function(){
            PW.page.recruitment.JobList({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                themeCss: '.J_pagination_theme2',
                pageSize: 10,
                url: '${website}admin/post/ajax/list',
                configUrl: function(url,page,me,prevPaginationData){
                      return url+'/'+ page;
                }
            });
        })
    })
</script>