<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- {IT维护知识库 start }-->
    <div class="container">
        <div class="row clearfix">
            <div class="maintainence-knowledge clearfix">
                <div class="col-lg-7">
                    <h4>您可以在下方搜索博曼企业IT维护知识库</h4>
                    <form class="form-horizontal J_searchForm" role="form">
                        <input type="text" name="search" value="" />
                        <input type="hidden" class="J_subId" name="subId" value="0" />
                        <button class="btn btn-success" type="submit">
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
    <div class="container search-result margin-top-40">
        <div class="row">
            <div class="col-md-2 col-lg-2 no-padding">
                <div class="list-group menu">
                    <a href="javascript:;" class="list-group-item"><i class="fa fa-tag"></i>&nbsp;按分类查看</a>
                    <a href="javascript:;" data-subId="0" class="list-group-item active">所有分类</a>
                    <c:forEach items="${categoryList}"  var="s">
                        <a href="javascript:;" data-subId="${s.id}" class="J_sub list-group-item">${s.name}</a>
                    </c:forEach>
                </div>
            </div>
            <div class="col-md-10 col-lg-10 no-padding-right">
                <ul class="list-group" id="J_template">
                </ul>
                <div id="J_pagination"></div>
            </div>
        </div>
    </div>