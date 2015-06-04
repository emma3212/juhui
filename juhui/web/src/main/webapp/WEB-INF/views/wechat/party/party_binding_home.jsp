<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="wechat">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/wechat/party/body/party_binding_body.jsp" />
</tiles:insertDefinition>

<script type="text/javascript">
    $().ready(function () {
        $('.J_validForm').on('submit', function () {
            var pin = $('.J_pin').val(),
                    pwd = $('.J_pwd').val();

            if (pin.length != 4 || !(/^\d+$/.test(pin))) {
                $("#popupBasic p").html("pin码输入有误！");
                $("#popupBasic").popup("open");
                return false;
            }
            if (pwd.length < 8) {
                $("#popupBasic p").html("密码输入有误！");
                $("#popupBasic").popup("open");
                return false;
            }
            $.mobile.loading("show", {
                text: '提交中，请耐心等候',
                textVisible: false,
                textonly: false
            });
        });
    })
</script>