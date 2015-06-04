<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${mobile_pc_browser_name != true}">
<div class="row margin-top-40 hidden-xs clearfix user-story">
    <div class="col-sm-6">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a data-toggle="tab" role="tab" href="#tab1">分类名称</a></li>
            <li role="presentation"><a data-toggle="tab" role="tab" href="#tab2">分类名称</a></li>
            <li role="presentation"><a data-toggle="tab" role="tab" href="#tab3">分类名称</a></li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div id="tab1" class="tab-pane fade in active">
                <div class="extra-str"></div>
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object img-responsive" src="${staticWebsite}img/pub/index/user-story/category.gif" alt="分类">
                    </a>
                    <div class="media-body">
                        <p class="introduce" displayLength="240">IT服务产品包括：硬件集成、软件集成(统称：系统集成)、通用解决方案、行业解决方案和IT综合服务，服务过程是指IT需求得以满足的全过程，从IT服务商为用户提供IT咨询开始，到定义IT需求，再到挑选合适的IT服务商和服务产品，实施IT项目，检测验收与评估IT服务效果，到定义IT需求，再到挑选合适的IT服务商和服务产品，实施IT项目，检测验收与评估IT服务效果，以及后期维护与升级由于一个组织的IT需求总是在为这个组织提供的IT服务。</p>
                        <a href="javascript:;">更多></a>
                    </div>
                </div>
            </div>
            <div id="tab2" class="tab-pane fade">
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object img-responsive" src="${staticWebsite}img/pub/index/user-story/category.gif" alt="分类">
                    </a>
                    <div class="media-body">
                        <p class="introduce" displayLength="240">IT服务产品包括：硬件集成、软件集成(统称：系统集成)、通用解决方案、行业解决方案和IT综合服务，服务过程是指IT需求得以满足的全过程，从IT服务商为用户提供IT咨询开始，到定义IT需求，再到挑选合适的IT服务商和服务产品，实施IT项目，检测验收与评估IT服务效果，到定义IT需求，再到挑选合适的IT服务商和服务产品，实施IT项目，检测验收与评估IT服务效果，以及后期维护与升级由于一个组织的IT需求总是在为这个组织提供的IT服务。</p>
                        <a class="pull-right" href="javascript:;">更多></a>
                    </div>
                </div>
            </div>
            <div id="tab3" class="tab-pane fade">
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object img-responsive" src="${staticWebsite}img/pub/index/user-story/category.gif" alt="分类">
                    </a>
                    <div class="media-body">
                        <p class="introduce" displayLength="240">IT服务产品包括：硬件集成、软件集成(统称：系统集成)、通用解决方案、行业解决方案和IT综合服务，服务过程是指IT需求得以满足的全过程，从IT服务商为用户提供IT咨询开始，到定义IT需求，再到挑选合适的IT服务商和服务产品，实施IT项目，检测验收与评估IT服务效果，到定义IT需求，再到挑选合适的IT服务商和服务产品，实施IT项目，检测验收与评估IT服务效果，以及后期维护与升级由于一个组织的IT需求总是在为这个组织提供的IT服务。</p>
                        <a class="pull-right" href="javascript:;">更多></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div id="userStoryCarousel" class="carousel slide" data-ride="carousel" change-bg="false">
            <ol class="carousel-indicators">
                <li data-target="#userStoryCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#userStoryCarousel" data-slide-to="1"></li>
                <li data-target="#userStoryCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="${staticWebsite}img/pub/index/user-story/small-carousel.gif" alt="客户故事1">
                </div>
                <div class="item">
                    <img src="${staticWebsite}img/pub/index/user-story/small-carousel.gif" alt="客户故事2">
                </div>
                <div class="item">
                    <img src="${staticWebsite}img/pub/index/user-story/small-carousel.gif" alt="客户故事3">
                </div>
            </div>
        </div>
    </div>
</div>
</c:if>