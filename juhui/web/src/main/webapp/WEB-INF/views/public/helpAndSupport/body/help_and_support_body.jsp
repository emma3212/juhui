<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="container hidden-xs help-support">
    <img class="img-responsive" src="${staticWebsite}img/pub/helpsupport/help-support.gif" alt="帮助&支持">
    <div class="introduce">
        <h2>获取网站帮助&支持</h2>
        <ul class="list-unstyled">
            <li><i class="fa fa-check-square"></i>&nbsp;了解博曼IT服务流程</li>
            <li><i class="fa fa-check-square"></i>&nbsp;浏览常见企业IT维护问题及解决方法</li>
            <li><i class="fa fa-check-square"></i>&nbsp;查看服务过程中客户关心的热点问题</li>
            <li><i class="fa fa-check-square"></i>&nbsp;搜索博曼IT维护知识库</li>
        </ul>
    </div>
</div>

<div class="container margin-top-50">
    <div class="row business-list clearfix">
        <h3 class="business-title">企业IT服务业务流程</h3>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 first">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-user"></i>
                </a>
                <a href="#">注册会员与登录会员中心</a>
            </p>
            <p class="business-introduce">企业在博曼网站注册会员是使用服务的第一步，注册会员并成功激活后登录会员中心，所有服务都可在会员中心发起</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 second">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <a href="#">免费IT维护</a>
            </p>
            <p class="business-introduce">博曼服务工程师团队为会员企业提供每月4次的上门免费IT维护服务，保障企业日常业务所需的IT运维</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 third">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-truck"></i>
                </a>
                <a href="#">IT产品直送</a>
            </p>
            <p class="business-introduce">博曼服务工程师团队为会员企业提供IT产品直送服务，在博曼网站购买IT产品1小时内送货上门安装并提供统一售后及技术支持</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 first">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-twitch"></i>
                </a>
                <a href="#">参与活动</a>
            </p>
            <p class="business-introduce">博曼客户经理为会员企业联系各种免费参与或体验的活动，如员工拓展，免费WIFI安装，免费银行POSE机安装等</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 second">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-pencil"></i>
                </a>
                <a href="#">参与培训</a>
            </p>
            <p class="business-introduce">博曼讲师团队为会员企业提供有针对性的培训服务，涉及IT技术Office技巧，财务信息化，管理信息化，互联网趋势等主题</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 third">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-tasks"></i>
                </a>
                <a href="#">购买套餐</a>
            </p>
            <p class="business-introduce">会员企业可以购买博曼提供的业务套餐，将企业自身的部分业务流程外包，由博曼为您提供更为专业细致的服务</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 first">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-at"></i>
                </a>
                <a href="#">委托软件及互联网应用开发</a>
            </p>
            <p class="business-introduce">博曼项目经理会接受会员企业的委托，根据不同企业的个性化需求定制开发软件、网站、手机APP及其它互联网应用</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 second">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-wifi"></i>
                </a>
                <a href="#">委托电子建设工程项目</a>
            </p>
            <p class="business-introduce">博曼项目经理会接受会员企业的委托，承接有线网络、无线网络、智能监控、公共广播等电子建设工程项目，免费绘制施工图纸及编制工程定额概预算</p>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 third">
            <p class="title clearfix">
                <a class="business-icon pull-left" href="#">
                    <i class="fa fa-credit-card"></i>
                </a>
                <a href="#">会员积分兑换</a>
            </p>
            <p class="business-introduce">会员企业可通过评价服务订单、推荐其他企业会员、购买产品、会员中心签到等方式获取积分，积分可用来兑换免费IT维护服务次数和积分产品</p>
        </div>
    </div>
</div>

<div class="container margin-top-50">
    <div class="row problem-list clearfix">
        <h3 class="problem-title">热点问题</h3>
        <div class="hot-problem-list clearfix">
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="problem">
                    <h5 class="text-center">注册及登录</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">如何获得推荐人PIN？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 second">
                <div class="problem">
                    <h5 class="text-center">免费IT维护</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">免费IT维护是否限制次数？</a></li>
                        <li><a href="#">免费IT维护次数用完了怎么办？</a></li>
                        <li><a href="#">如何获得积分？</a></li>
                        <li><a href="#">如何申请免费IT维护？</a></li>
                        <li><a href="#">都哪些IT维护是免费的？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="problem">
                    <h5 class="text-center">IT产品直送</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">什么是IT产品直送？</a></li>
                        <li><a href="#">如何申请IT产品直送？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 last">
                <div class="problem">
                    <h5 class="text-center">参与培训</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">博曼都有那些培训项目？</a></li>
                        <li><a href="#">如何申请培训？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
        </div>
        <div class="hot-problem-list clearfix">
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="problem">
                    <h5 class="text-center">参与活动</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">什么叫做活动？</a></li>
                        <li><a href="#">如何申请活动？</a></li>
                        <li><a href="#">我是第三方产品商，怎么才能与博曼合作？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 second">
                <div class="problem">
                    <h5 class="text-center">购买套餐</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">博曼都有哪些产品？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="problem">
                    <h5 class="text-center">委托项目</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">博曼都具备实施什么项目的资质？</a></li>
                        <li><a href="#"> 如何申请项目？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 last">
                <div class="problem">
                    <h5 class="text-center">其    它</h5>
                    <ul class="list-unstyled ul-height">
                        <li><a href="#">什么是PIN？</a></li>
                        <li><a href="#"> PIN是干什么用的？</a></li>
                        <li><a href="#"> 博曼都有哪些IT服务站点？</a></li>
                        <li><a href="#"> 博曼IT服务站点的覆盖范围是多少？</a></li>
                        <li><a href="#"> 博曼IT服务是否支持加盟？如何加盟？</a></li>
                    </ul>
                    <a class="more" href="#">查看更多</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container margin-top-50 hidden-xs">
    <div class="row maintainence-knowledge-list clearfix">
        <h3 class="maintainence-knowledge-title">IT维护知识库</h3>
        <div class="maintainence-knowledge clearfix">
            <div class="col-lg-7">
                <h4>您可以在下方搜索博曼企业IT维护知识库</h4>
                <form class="form-horizontal" role="form">
                    <input class="" type="text">
                    <button class="btn btn-success">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
                <h5>搜索热词</h5>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <a class="col-lg-4 hot-word" href="#">网页打不开</a>
                            <a class="col-lg-4 hot-word" href="#">word</a>
                            <a class="col-lg-4 hot-word" href="#">excel</a>
                            <a class="col-lg-4 hot-word" href="#">电脑黑屏</a>
                            <a class="col-lg-4 hot-word" href="#">开不开机</a>
                            <a class="col-lg-4 hot-word" href="#">打印机</a>
                            <a class="col-lg-4 hot-word" href="#">路由器</a>
                            <a class="col-lg-4 hot-word" href="#">网络</a>
                            <a class="col-lg-4 hot-word" href="#">windows</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <h4>企业IT维护常见问题及解决方法</h4>
                <div class="problem-solution">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active text-center">
                            <a data-toggle="tab" role="tab" href="#tab1">电脑硬件问题</a>
                        </li>
                        <li role="presentation" class="text-center">
                            <a data-toggle="tab" role="tab" href="#tab2">操作系统问题</a>
                        </li>
                        <li role="presentation" class="text-center">
                            <a data-toggle="tab" role="tab" href="#tab3">电脑软件问题</a>
                        </li>
                        <li role="presentation" class="text-center">
                            <a data-toggle="tab" role="tab" href="#tab4">网络问题</a>
                        </li>
                        <li role="presentation" class="text-center last">
                            <a data-toggle="tab" role="tab" href="#tab5">打印机问题</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab1" class="tab-pane fade in active">
                            <ul class="list-unstyled">
                                <li><a href="#">电脑开机出现“滴滴滴”的响声</a></li>
                                <li><a href="#">开机后显示器依然是黑屏</a></li>
                                <li><a href="#">按开机键没有任何反应</a></li>
                                <li><a href="#">为什么开机1-2个小时后就自动关机了？</a></li>
                                <li><a href="#">为什么我的win7系统经常蓝屏？</a></li>
                            </ul>
                        </div>
                        <div id="tab2" class="tab-pane fade">
                            <ul class="list-unstyled">
                                <li><a href="#">进不了系统</a></li>
                                <li><a href="#">为什么开机一直黑屏？</a></li>
                                <li><a href="#">win7*.Vxd文件未找到</a></li>
                                <li><a href="#"> 为什么每次关机都是重新启动？</a></li>
                                <li><a href="#">win7系统打印机打出字乱码</a></li>
                            </ul>
                        </div>
                        <div id="tab3" class="tab-pane fade">
                            <ul class="list-unstyled">
                                <li><a href="#"> 如何设置Word文档的快速保存</a></li>
                                <li><a href="#">为什么我打不开别人给我的Word和Excel文档？</a></li>
                                <li><a href="#">系统文件缺失导致office运行异常</a></li>
                                <li><a href="#">Word 2003菜单栏和工具栏界面混乱丢失</a></li>
                                <li><a href="#"> office不能正常启动</a></li>
                            </ul>
                        </div>
                        <div id="tab4" class="tab-pane fade">
                            <ul class="list-unstyled">
                                <li><a href="#">QQ能聊天网页却打不开？</a></li>
                                <li><a href="#">为什么只有我的电脑能上网，其他人的都上不去？</a></li>
                                <li><a href="#">我换了工位后电脑就无法上网了？</a></li>
                                <li><a href="#"> 网速为什么有时快有时慢？</a></li>
                                <li><a href="#">网络为什么会经常掉线？</a></li>
                            </ul>
                        </div>
                        <div id="tab5" class="tab-pane fade">
                            <ul class="list-unstyled">
                                <li><a href="#">连接不上打印机</a></li>
                                <li><a href="#">打印机总是显示脱机</a></li>
                                <li><a href="#">已经连接上打印机总是打印失败</a></li>
                                <li><a href="#">打印输出空白纸</a></li>
                                <li><a href="#">打印出来的内容乱码</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
