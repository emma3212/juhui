<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="footer">
    <div class="container">
        <div class="row footer-holder">
            <div class="col-md-5 col-lg-3 widget-bg">
                <h5>联系我们</h5>
                <ul class="widget-nav">
                    <li><i class="fa fa-phone"></i>  010-88689668 88689968</li>
                    <li><i class="fa fa-qq"></i>  1004646666 1004656666</li>
                    <li><i class="fa fa-envelope"></i>  info@boman.net</li>
                    <li><i class="fa fa-map-marker"></i>  北京市东城区崇文门外大街18号国瑞购物中心B2层广德办公室</li>
                </ul>
            </div>

            <c:if test="${mobile_pc_browser_name != true}">
            <div class="col-md-7 col-lg-4  hidden-xs">
                <div class="row widget-bg footer-campany-info" >
                    <div class="col-sm-3 col-xs-6">
                        <h5>关于我们</h5>
                        <ul>
                            <li><a href="#">站点故事</a></li>
                            <li><a href="#">客户感恩</a></li>
                            <li><a href="#">合作伙伴</a></li>
                            <li><a href="#">家庭成员</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <h5>博曼服务</h5>
                        <ul>
                            <li><a href="#">免费IT服务</a></li>
                            <li><a href="#">IT产品直送</a></li>
                            <li><a href="#">活动</a></li>
                            <li><a href="#">培训</a></li>
                            <li><a href="#">套餐</a></li>
                            <li><a href="#">项目</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <h5>网站声明</h5>
                        <ul>
                            <li><a href="#">法律声明</a></li>
                            <li><a href="#">维护说明</a></li>
                            <li><a href="#">直送说明</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <h5>加入我们</h5>
                        <ul>
                            <li><a href="#">岗位空缺</a></li>
                            <li><a href="#">实习计划</a></li>
                            <li><a href="#">发送简历</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-5 col-lg-3 widget-bg hidden-xs">
                <h5>友情链接</h5>
                <div class="row footer-logo">
                    <c:forEach items="${friendlyLink}"  var="link">
                    <div class="col-sm-4 col-xs-6"><a href="${link.linkAddress}"><img src="${uploadStaticWebsite}${link.logoPath}" alt="${link.name}"></a></div>
                    </c:forEach>
                </div>
                <div class="row">
                    <div class="col-md-12 logo-btn">
                        <button>开放友情链接交换，请联系客服</button>
                    </div>
                </div>
            </div>
            </c:if>
            <div class="col-md-7 col-lg-2 char-code">
                <h5>关注博曼微信公共平台</h5>
                <div class="row">
                    <div class="col-md-12 code-img"><img src="${staticWebsite}img/pub/common/scan-code.png" alt=""></div>
                    <div class="col-md-12 code-info">关注博曼IT服务微信公众平台，为中小企业IT服务量身定制的自媒体平台</div>
                </div>
            </div>
        </div>
    </div>
</div>
    <div class="copyright">
        北京广德腾建博曼科技有限公司    京I<span title="${version}">C</span>P备13048413号    开发者团队
    </div>

<c:if test="${mobile_pc_browser_name == true}">
    <script type="text/javascript">
        (function(){
            var script = document.createElement("script");
            script.type = "text/javascript";
            script.charset = "utf-8";
            var date = new Date();
            var version = date.getFullYear()+""+date.getMonth()+""+date.getDate()+""+date.getHours();
            script.src = "http://m.baidu.com/static/search/siteapp/lego/seed.js?t="+version;
            script.setAttribute("data-appid","4376014");
            document.head.appendChild(script);
        })();
    </script>
</c:if>
<%  // 统计脚本 %>
${statistics_script}