<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header">
<c:if test="${mobile_pc_browser_name != true}">
    <div class="loginbar hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 col-sm-7 col-xs-12 boman-info">
                    <span class="IT-institution-grid">企业IT一站式服务连锁机构</span>
                    <img class="time-img-grid" src="${staticWebsite}img/pub/common/phone-24.jpg" alt="支持24/7"  />
                    <span class="boman-telephone-grid">&nbsp;18600030200</span>
                    <span class="boman-email-grid">
                        <i class="fa fa-envelope-o boman-email"></i>
                        info@boman.net
                    </span>
                </div>
                <c:if test="${empty web_party_name}">
                    <div class="col-lg-4 col-md-5 col-sm-6 col-xs-12 col-lg-offset-4 col-md-offset-2  login-tip">
                        <p class="col-xs-4 login-register login-register-grid">
                            <a class="col-xs-4 show-video">演示</a>
                            <a href="${website}login" class="col-xs-4">登录</a>
                            <a href="${website}registration" class="col-xs-4">注册</a>
                        </p>
                        <ul class="col-xs-5 icon-group icon-group-grid">
                            <li class="col-xs-3"><a class="fa fa-weibo" href="#"></a></li>
                            <li class="col-xs-3"><a class="fa fa-tencent-weibo" href="#"></a></li>
                            <li class="col-xs-3 dropdown">
                                <i class="fa fa-weixin" data-toggle="dropdown"></i>

                                <div class="dropdown-menu weixin-content">
                                    关注博曼微信公共平台<br/>
                                    获得企业信息化最新咨询<br/>
                                    <img src="${staticWebsite}img/pub/common/boman-code.png">
                                </div>
                            </li>
                            <li class="col-xs-3 dropdown">
                                <img class="baidu-to-number" src="${staticWebsite}img/pub/common/zhida.png"
                                     data-toggle="dropdown">

                                <div class="dropdown-menu baidu-content">
                                    在手机百度搜索博曼IT服务<br/>
                                    可以直接访问网站<br/>
                                    <img src="${staticWebsite}img/pub/common/baidu-content.jpg">
                                </div>
                            </li>
                        </ul>
                        <div class="col-xs-3 shortcut-menu <%--dropdown--%> shortcut-menu-grid">
                            <div <%--data-toggle="dropdown"--%>>
                                <div class="orange-bar">
                                    <p></p>

                                    <p></p>

                                    <p></p>
                                </div>
                                <span>网站导航</span>
                            </div>
                            <%--<div class="dropdown-menu orange-content">
                                <ul class="orange-content-ul">
                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="orange-content-ul">
                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="orange-content-ul">
                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="orange-content-ul">
                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>--%>
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty web_party_name}">
                    <div class="col-lg-8 col-md-10 col-sm-12 col-xs-12   login-tip">
                        <p class=" success-register user-grid">
                            <span class="col-lg-9 user-name">欢迎，${web_party_name}</span>
                                        <span class="col-lg-2 user-center">
                                            <i class="fa fa-user"></i>
                                            <a href="${website}home">会员中心</a>
                                        </span>
                            <a class="col-lg-1 exit" href="${website}logout">退出</a>
                        </p>
                        <ul class=" icon-group success-icons-grid">
                            <li class="col-xs-3"><a class="fa fa-weibo" href="#"></a></li>
                            <li class="col-xs-3"><a class="fa fa-tencent-weibo" href="#"></a></li>
                            <li class="col-xs-3 dropdown">
                                <i class="fa fa-weixin dropdown-title" data-toggle="dropdown"></i>

                                <div class="dropdown-menu weixin-content">
                                    关注博曼微信公共平台<br/>
                                    获得企业信息化最新咨询<br/>
                                    <img src="${staticWebsite}img/pub/common/boman-code.png">
                                </div>
                            </li>
                            <li class="col-xs-3 dropdown">
                                <img class="baidu-to-number dropdown-title" src="${staticWebsite}img/pub/common/zhida.png"
                                     data-toggle="dropdown">

                                <div class="dropdown-menu baidu-content">
                                    在手机百度搜索博曼IT服务<br/>
                                    可以直接访问网站<br/>
                                    <img src="${staticWebsite}img/pub/common/baidu-content.jpg">
                                </div>
                            </li>
                        </ul>
                        <div class="shortcut-menu <%--dropdown--%> user-menu-grid">
                            <div role="button" <%--data-toggle="dropdown"--%> <%--class="dropdown-title"--%> href="javascript:;">
                                <div class="orange-bar">
                                    <p></p>

                                    <p></p>

                                    <p></p>
                                </div>
                                <span>网站导航</span>
                            </div>
                            <%--<div class="dropdown-menu orange-content">
                                <ul class="orange-content-ul clearfix">
                                    <li class="orange-content-ul-li">
                                        <h1><a href="" class="J_navFirst">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>

                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>


                                    <li class="orange-content-ul-li">
                                        <h1><a href="">一级菜单</a></h1>
                                        <ul>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                            <li><a href="">二级菜单</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>--%>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>

    </div>
</c:if>
    <div class="container">
        <div class="row">
            <a class="col-md-3 col-xs-12  boman-logo"></a>

            <div class="col-md-9  col-xs-12  navbar">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-responsive-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav">
                        <li class="home-page <c:if test="${MethodModule eq 'Pub:Index'}">active</c:if>">
                            <a href="${website}index">首&nbsp;&nbsp;页</a>
                        </li>
                        <li <c:if test="${MethodModule eq 'Pub:FreeMaintenance'}">class="active"</c:if>>
                            <a href="${website}public/free/it/maintenance">免费IT维护</a>
                        </li>
                        <li><a href="${website}public/page/1">IT产品直送</a></li>
                        <li class="IT"><a href="${website}public/page/1">IT咨询&amp;实施</a></li>
                        <li><a href="${website}public/page/1">企业培训</a></li>
                        <li <c:if test="${MethodModule eq 'Pub:HelpAndSupport'}">class="active"</c:if>>
                            <a href="${website}public/help/support">帮助&amp;支持</a>
                        </li>
                        <li <c:if test="${MethodModule eq 'Pub:SiteAndJoin'}">class="active"</c:if>>
                            <a href="${website}public/site/join">站点&amp;加盟</a>
                        </li>
                        <li <c:if test="${MethodModule eq 'Pub:Recruitment'}">class="active"</c:if>>
                            <a href="${website}public/recruitment">招聘专区</a>
                        </li>
                        <li <c:if test="${MethodModule eq 'Pub:Partner'}">class="active"</c:if>>
                            <a href="${website}public/partner">合作伙伴</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<div class="hidden contact">
    <div class="text-left">
        <i class="fa fa-user person-name"></i>
        <span>高晓博</span>
    </div>
    <div class="text-left">
        <i class="fa fa-phone-square person-phone-email"></i>
        <span>13901059509</span>
    </div>
    <div class="text-left">
        <i class="fa fa-envelope person-phone-email"></i>
        <span>job@boman.net</span>
    </div>
</div>
<div class="modal fade video-modal" id="showVideoModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <iframe height="400" width="100%" src="http://player.youku.com/embed/XODM5MjM1NDA0" frameborder="0" allowfullscreen></iframe>
                <button type="button" class="close"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('.dropdown-title').dropdown();
        $('.show-video').on('click', function(){
            $('#showVideoModal').modal();
        });
    })
</script>
