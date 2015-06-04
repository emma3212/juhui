<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="page">
<c:if test="${mobile_pc_browser_name != true}" >
<div id="carouselBoman" class="carousel slide hidden-xs" data-ride="carousel" change-bg="false">
    <div class="container">
        <ol class="carousel-indicators">
            <li data-target="#carouselBoman" data-slide-to="0" class="active"></li>
            <li data-target="#carouselBoman" data-slide-to="1"></li>
            <li data-target="#carouselBoman" data-slide-to="2"></li>
            <li data-target="#carouselBoman" data-slide-to="3"></li>
        </ol>

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="${staticWebsite}img/pub/index/carousel/01.jpg" alt="IT服务因我们而不同">
            </div>
            <div class="item">
                <img src="${staticWebsite}img/pub/index/carousel/02.jpg" alt="承接定制软件开发项目">
            </div>
            <div class="item">
                <img src="${staticWebsite}img/pub/index/carousel/03.jpg" alt="移动互联网整体解决方案">
            </div>
            <div class="item">
                <img src="${staticWebsite}img/pub/index/carousel/04.jpg" alt="综合布线系统工程我们很专业">
            </div>
        </div>
    </div>
</div>
</c:if>
<div class="container">
<div class="row">
<div class="col-xs-12">
<jsp:include page="../../inc/news.jsp"></jsp:include>
<div class="row margin-top-40">
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="ads clearfix">
            <div class="img-search">
                <img src="${staticWebsite}img/pub/index/ads/free_maintain.gif" alt="免费IT维护" class="img-responsive">
                <div class="search hidden">
                    <a href="${website}public/free/it/maintenance">
                        <span class="ads-icon-search">
					           <i class="fa fa-search-plus"></i>
					    </span>
                    </a>
                </div>
            </div>
            <a href="${website}public/free/it/maintenance"  class="pull-left">免费IT维护</a>
            <a href="${website}public/free/it/maintenance" class="pull-left hidden-xs explain">为网站注册会员提供每月4次免费上门IT维护</a>
            <a href="${website}public/free/it/maintenance" class="pull-right enter glyphicon glyphicon-play-circle"></a>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="ads clearfix">
            <div class="img-search">
                <img src="${staticWebsite}img/pub/index/ads/IT_send.gif" alt="IT产品直送" class="img-responsive">
                <div class="search hidden">
                    <a href="${website}public/page/1">
		                            		<span class="ads-icon-search">
					                    		<i class="fa fa-search-plus"></i>
					                    	</span>
                    </a>
                </div>
            </div>
            <a class="pull-left" href="${website}public/page/1">IT产品直送</a>
            <a class="pull-left hidden-xs explain" href="${website}public/page/1">为网站注册会员提供IT产品上门送货安装服务</a>
            <a class="pull-right enter glyphicon glyphicon-play-circle" href="${website}public/page/1"></a>
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-4">
        <div class="row register-consult">
            <div class="col-xs-5 col-sm-12 col-md-12 col-lg-5 text-center register">
                <p class="tip">还没有帐号？</p>
                <p>立即注册博曼IT帐号</p>
                <c:if test="${web.user.name == null}">
                <a href="${website}registration" class="btn btn-primary">注册</a>
                </c:if>
                <c:if test="${web.user.name != null}">
                    <a href="#" class="btn btn-primary">用户中心</a>
                </c:if>
            </div>
            <div class="col-xs-7 col-sm-12 col-md-12 col-lg-7 text-center consult">
                <p class="tip">咨询博曼</p>
                <p>您身边的IT服务专家</p>
                <p class="phone">
                    <i class="glyphicon glyphicon-phone-alt text-left"></i>&nbsp;010-88689668 88689968
                </p>
                <p class="qq">
                    <i class="fa fa-qq text-left"></i>&nbsp;1004646666 100465666
                </p>
            </div>
            <img src="${staticWebsite}img/pub/index/boman-logo.gif" alt="博曼logo">
        </div>
        <div class="row business-tag hidden-xs hidden-sm hidden-md">
            <h5 class="tag-title">业务标签</h5>
            <p class="title-line"></p>
            <div change-bg="false" data-ride="carousel" class="carousel slide hidden-xs carouselTagLg" id="carouselTagLg">
                <div role="listbox" class="carousel-inner">
                    <c:forEach items="${bizTag}" var="tag" varStatus="l">
                        <c:if test="${l.index%8==0}" ><div class="item <c:if test="${l.index==0}"> active</c:if>"> </c:if>
                        <a href="${tag.link}" class="btn btn-success">${tag.name}</a>
                        <c:if test="${l.index%8==7 || l.last}"></div></c:if>
                    </c:forEach>
                </div>
            </div>
            <div class="angle-left-right">
                <a data-slide="prev" role="button" href="#carouselTagLg" class="carouselTag-left">
                    <span class="fa fa-angle-left"></span>
                    <span class="sr-only">前一标签</span>
                </a>
                <a data-slide="next" role="button" href="#carouselTagLg" class="carouselTag-right">
                    <span class="fa fa-angle-right"></span>
                    <span class="sr-only">后一标签</span>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="row business-tag hidden-lg">
    <h5 class="tag-title">业务标签</h5>
    <p class="title-line"></p>
    <div change-bg="false" data-ride="carousel" class="carousel slide carouselTagXs" id="carouselTagXs">
        <div role="listbox" class="carousel-inner">
            <c:forEach items="${bizTag}" var="tag" varStatus="l">
                <c:if test="${l.index%8==0}" ><div class="item <c:if test="${l.index==0}"> active</c:if>"> </c:if>
                <a href="${tag.link}" class="btn btn-success">${tag.name}</a>
                <c:if test="${l.index%8==7 || l.last}"></div></c:if>
            </c:forEach>
        </div>
    </div>
    <div class="angle-left-right">
        <a data-slide="prev" role="button" href="#carouselTagXs" class="carouselTag-left">
            <span class="fa fa-angle-left"></span>
            <span class="sr-only">前一标签</span>
        </a>
        <a data-slide="next" role="button" href="#carouselTagXs" class="carouselTag-right">
            <span class="fa fa-angle-right"></span>
            <span class="sr-only">后一标签</span>
        </a>
    </div>
</div>
<!-- 信息化套餐 -->
<jsp:include page="../../inc/package.jsp"></jsp:include>
<!-- 近期业绩 -->
<jsp:include page="../../inc/recent.jsp"></jsp:include>
<!-- 客户故事 -->
 <jsp:include page="../../inc/story.jsp"></jsp:include>
<!-- 在建项目 -->
<jsp:include page="../../inc/project.jsp"></jsp:include>
<!-- 视频 -->
<c:if test="${mobile_pc_browser_name != true}">
<div class="row margin-top-40 margin-bottom-40 hidden-xs clearfix">
    <div class="col-sm-12">
        <img src="${staticWebsite}img/pub/index/video.gif" alt="博曼视频" class="video">
    </div>
</div>
    <div class="modal fade video-modal" id="videoModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <iframe height="400" width="100%" src="http://player.youku.com/embed/XODM5MjM1NDA0" frameborder="0" allowfullscreen></iframe>
                    <button type="button" class="close"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                </div>
            </div>
        </div>
    </div>
</c:if>
</div>
</div>
</div>
</div>
