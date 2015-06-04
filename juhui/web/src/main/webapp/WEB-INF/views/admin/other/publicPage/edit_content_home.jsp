<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html class="no-js" lang="en-US">
<head>
    <title>页面编辑</title>
    <link rel='stylesheet' id='laika-css-css' href='${staticWebsite}tool/redaktor/css/laika.css'
          type='text/css' />
    <script type='text/javascript' src='${staticWebsite}tool/jquery/jquery.js?ver=1.10.2'></script>
    <script type="text/javascript">
        var analyticsFileTypes = [''];
        var analyticsSnippet = 'enabled';
        var analyticsEventTracking = 'enabled';
    </script>
    <%@ include file="../../../public/common/head.jsp"%>
</head>
<body>
    <%@ include file="../../../public/common/header.jsp"%>
<div class="page" id="laika-editor">
    ${publicPage.content}
</div>

<div id="editor-wrapper">
    <div id="editor"></div>
    <div id="editor-buttons">
        <form id="laika-submit" method="post" action="${website}admin/public/page/content">
            <input type="hidden" name="_method" value="put" />
            <input type="hidden" name="id" value="${publicPage.id}" />
            <input type="hidden" id="content-submit" name="content-submit" value="5025ad5c2c" />
            <input type="hidden" name="_wp_http_referer" value="/demo/" /> <input type="hidden" name="id" value="5" />
            <input type="hidden" id="laika-submit-content" name="content" value="" />
            <button type="submit" class="btn btn-default" id="laika-save" name="laika-submit">保存</button>
            <button id="laika-undo" class="btn btn-danger">撤销</button>
            <a href="${website}admin/public/page/content/${publicPage.id}/del" class="btn btn-danger">清空内容</a>
            <a id="laika-show-editable" class="btn btn-blue btn-ok btn-margin-right">高亮</a>
        </form>
        <ul id="laika-window-controls">
            <li><a href="#" class="btn btn-link" id="laika-window">&Pi;</a></li>
            <li><a href="#" class="btn btn-link" id="laika-close">X</a></li>
        </ul>
    </div>
</div>
<%@ include file="../../../public/common/footer.jsp"%>
<script type='text/javascript' src='${staticWebsite}tool/redaktor/js/emmet.js'></script>
<script type='text/javascript'
        src='${staticWebsite}tool/jquery-ui/ui/jquery.ui.core.js?ver=1.10.3'></script>
<script type='text/javascript'
        src='${staticWebsite}tool/jquery-ui/ui/jquery.ui.widget.js?ver=1.10.3'></script>
<script type='text/javascript'
        src='${staticWebsite}tool/jquery-ui/ui/jquery.ui.mouse.js?ver=1.10.3'></script>
<script type='text/javascript'
        src='${staticWebsite}tool/jquery-ui/ui/jquery.ui.draggable.js?ver=1.10.3'></script>
<script type='text/javascript'
        src='${staticWebsite}tool/jquery-ui/ui/jquery.ui.resizable.js?ver=1.10.3'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var LaikaParams = {"keyCode": "192", "enableKeyboard": "1"};
    /* ]]> */
</script>
<script type='text/javascript' src='${staticWebsite}tool/redaktor/js/laika.min.js'></script>
<script type="text/javascript">

</script>
</body>
</html>