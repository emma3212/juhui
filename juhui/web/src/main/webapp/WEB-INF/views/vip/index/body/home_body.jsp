<%@ page contentType="text/html; charset=UTF-8"%>
<div class="holder">
<div class="content">
<h1>会员中心控制面板</h1>
<div class="crumb" id="crumb">
    <button class="btn btn-red time">
        <i class="fa fa-calendar"></i>
        <span>${requestScope.web_date}</span>
    </button>
    <ul class="clearfix">
        <li>
            <i class="icon icon-home"></i>
            <a >会员中心</a>
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <a >控制面板</a>
        </li>
    </ul>
</div>
<div class="container">
    <div class="row-fluid">
        <div class="col span24">
            <div class="dashboard-stat blue">
                <div class="visual">
                    <i class="fa fa-recycle"></i>
                </div>
                <div class="details">
                    <div class="number">
                        ${mNum}次
                    </div>
                    <div class="desc">
                        本月剩余维护次数
                    </div>
                </div>
                <a class="more" href="javascript:alert('该功能暂未开放！');">
                    积分兑换 <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col span24 offset1">
            <div class="dashboard-stat green">
                <div class="visual">
                    <i class="fa fa-bar-chart-o"></i>
                </div>
                <div class="details">
                    <div class="number">
                        ${yNum}次
                    </div>
                    <div class="desc">
                        本年累计已完成维护次数
                    </div>
                </div>
                <a class="more" href="${website}user/maintenance/order/unfinish">
                    查看维护订单 <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col span24 offset1">
            <div class="dashboard-stat purple">
                <div class="visual">
                    <i class="fa fa-truck"></i>
                </div>
                <div class="details">
                    <div class="number">
                        0元
                    </div>
                    <div class="desc">
                        本年累计采购金额
                    </div>
                </div>
                <a class="more" href="javascript:alert('该功能暂未开放！');">
                    查看产品订单 <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col span24 offset1">
            <div class="dashboard-stat yellow">
                <div class="visual">
                    <i class="fa fa-navicon"></i>
                </div>
                <div class="details">
                    <div class="number">
                        0积分
                    </div>
                    <div class="desc">
                        会员积分
                    </div>
                </div>
                <a class="more" href="javascript:alert('该功能暂未开放！');">
                    查看积分记录 <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
    </div>
</div>
<!--
<div class="container">
    <div class="row-fluid">
        <div class="col span49 ">
            <div class="chart-line"></div>
        </div>
        <div class="col span49 offset2">
            <div class="chart-column"></div>
        </div>
    </div>
</div>


<div class="box box-blue" data-fold="fold">
    <div class="box-container clearfix">
        <div class="box-body">
            <div class="container">
                <div class="row-fluid">
                    <div class="col span49 ">
                        <div class="box-title clearfix">
                            <span><i class="fa fa-line-chart"></i>年度产品采购金额统计</span>
                        </div>
                        <div class="chart-pie-red"></div>
                    </div>
                    <div class="col span49 offset2">
                        <div class="box-title clearfix">
                            <span><i class="fa fa-paw"></i>年度产品采购按类别支出统计</span>
                        </div>
                        <div class="chart-pie-blue"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="box box-blue" data-fold="fold">
    <div class="box-container clearfix">
        <div class="box-body">
            <div class="container">
                <div class="row-fluid">
                    <div class="col span51 ">
                        <div class="tab tab-horizon tab-red">
                            <ul class="tab-nav clearfix">
                                <li class="active">
                                    <a href="javascript:;">最新月度报表</a>
                                </li>
                                <li >
                                    <a href="javascript:;">最新活动文档</a>
                                </li>
                                <li >
                                    <a href="javascript:;">最新培训文档</a>
                                </li>
                                <li >
                                    <a href="javascript:;">最新套餐文档</a>
                                </li>
                                <li >
                                    <a href="javascript:;">最新项目文档</a>
                                </li>
                            </ul>
                            <form data-fold="fold" class="box no-margin-box" action="" method="">
                                <div class="tab-panel tab-no-border ">
                                    <div class="tab-content ">
                                        <ul class="month-report">
                                            <li>
                                                <i class="fa fa-paw"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-bullhorn"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-bell-o"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-lemon-o"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-plus"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-star-o"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-indent"></i>
                                                <a href="#">
                                                    最新月度报表内容
                                                </a>
                                                <span>20分钟</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-content ">
                                        22
                                    </div>
                                    <div class="tab-content ">
                                        33
                                    </div>
                                    <div class="tab-content ">
                                        44
                                    </div>
                                    <div class="tab-content ">
                                        55
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col span47 offset2">
                        <ul class="chats">
                            <li class="in">
                                <img class="avatar img-responsive" src="${staticWebsite}img/admin/common/avatar_small.jpg" alt="">
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a class="name" href="#">Bob Nilson</a>
                                    <span class="datetime">at Jul 25, 2012 11:09</span>
                                    <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
                                </div>
                            </li>
                            <li class="out">
                                <img class="avatar img-responsive" src="${staticWebsite}img/admin/common/avatar_small.jpg" alt="">
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a class="name" href="#">Bob Nilson</a>
                                    <span class="datetime">at Jul 25, 2012 11:09</span>
                                    <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
                                </div>
                            </li>
                            <li class="in">
                                <img class="avatar img-responsive" src="${staticWebsite}img/admin/common/avatar_small.jpg" alt="">
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a class="name" href="#">Bob Nilson</a>
                                    <span class="datetime">at Jul 25, 2012 11:09</span>
                                    <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
                                </div>
                            </li>
                        </ul>
                        <div class="chat-form">
                            <div class="input-cont">
                                <input class="form-control" type="text" placeholder="Type a message here...">
                            </div>
                            <div class="btn-cont">
                                <span class="arrow"></span>
                                <a class="btn blue icn-only" href="">
                                    <i class="fa fa-check icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
-->
<div class="box box-blue" data-fold="fold">
    <div class="box-container clearfix">
        <div class="box-body">
            <div class="container">
                <div class="row-fluid">
                    <div class="col span51 contact-us">
                        <h4>PIN:${web_user_name}</h4>
                        <div class="clearfix">
                            <p>
                                PIN是4位数字，博曼会员唯一的身份标识，当您联系客服时只要说PIN客服就可获取您的信息，更好的为您服务。
                            </p>
                            <img src="${staticWebsite}img/admin/common/custom-man.png">
                        </div>
                        <ul class="clearfix">
                        <li>
                                <i class="fa fa-phone"></i>010-88689668
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>010-88689968
                            </li>
                            <li>
                                <i class="fa fa-qq"></i>1004646666
                            </li>
                            <li>
                                <i class="fa fa-qq"></i>1004656666
                            </li>
                        </ul>
                    </div>
                    <div class="col span47 offset2 weixin">
                        <img src="${staticWebsite}img/admin/page/login/barcode_logo.png">
                        <ul>
                            <li>获取最新互联网相关行业动态</li>
                            <li>获取最新博曼免费活动信息</li>
                            <li>实时查询服务及产品订单状态</li>
                            <li>向博曼其他企业会员推荐自身业务产品</li>
                        </ul>
                        <p>首次关注博曼微信公众平台赠送积分</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
