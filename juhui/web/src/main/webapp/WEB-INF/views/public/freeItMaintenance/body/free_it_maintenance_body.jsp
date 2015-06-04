<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div class="container">
        <c:if test="${mobile_pc_browser_name != true}" >
            <div class="row small-screen-padding">
                <div class="col-xs-12 no-padding img-responsive">
                    <img src="${staticWebsite}img/pub/freeITmaintainence/middle-big-img.png">
                </div>
            </div>
        </c:if>
        <div class="row problem-row small-screen-padding" >
            <div class="col-xs-12 col-sm-6 col-md-3 problem hardware-problem">
                <div class="row">
                    <div class="col-xs-3 col-xs-offset-2 problem-img no-padding">
                        <img  src="${staticWebsite}img/pub/freeITmaintainence/hardware.png">
                    </div>
                    <div class="col-xs-7  problem-tip no-padding">
                        <p>电脑硬件问题</p>
                        <p>Hardware</p>
                    </div>
                    <div class="col-xs-offset-2 col-xs-10 no-padding ">
                        <ul class="problem-content">
                            <li>台式机显示器维修</li>
                            <li>台式机主机维修</li>
                            <li>笔记本维修</li>
                            <li>硬盘数据恢复</li>
                        </ul>
                    </div>
                    <a class="col-xs-offset-2 col-xs-8 no-padding full-content" href="${website}public/page/1">
                        查看完整服务范围
                    </a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 problem software-problem">
                <div class="row">
                    <div class="col-xs-3 col-xs-offset-2  problem-img no-padding">
                        <img  src="${staticWebsite}img/pub/freeITmaintainence/software.png">
                    </div>
                    <div class="col-xs-7 problem-tip no-padding" >
                        <p>电脑软件问题</p>
                        <p>Software</p>
                    </div>
                    <div class="col-xs-offset-2 col-xs-10 no-padding ">
                        <ul class="problem-content">
                            <li>操作系统安装</li>
                            <li>软件故障解决</li>
                            <li>数据误删除回复</li>
                            <li>数据定期备份</li>
                        </ul>
                    </div>
                    <a class="col-xs-offset-2 col-xs-8 no-padding full-content" href="${website}public/page/1">
                        查看完整服务范围
                    </a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 problem netware-problem">
                <div class="row">
                    <div class="col-xs-3 col-xs-offset-2  problem-img no-padding">
                        <img  src="${staticWebsite}img/pub/freeITmaintainence/internet.png">
                    </div>
                    <div class="col-xs-7 problem-tip no-padding" >
                        <p>网络问题</p>
                        <p>Netware</p>
                    </div>
                    <div class="col-xs-offset-2 col-xs-10 no-padding">
                        <ul class="problem-content">
                            <li>局域网及外网故障</li>
                            <li>路由设备调试</li>
                            <li>VPN配置</li>
                            <li>上网行为管理</li>
                        </ul>
                    </div>
                    <a class="col-xs-offset-2 col-xs-8 no-padding full-content" href="${website}public/page/1">
                        查看完整服务范围
                    </a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 problem print-problem">
                <div class="row">
                    <div class="col-xs-3 col-xs-offset-2  problem-img no-padding">
                        <img  src="${staticWebsite}img/pub/freeITmaintainence/equipment.png">
                    </div>
                    <div class="col-xs-7 problem-tip no-padding" >
                        <p>办公打印问题</p>
                        <p>Print+Others</p>
                    </div>
                    <div class="col-xs-offset-2 col-xs-10 no-padding">
                        <ul class="problem-content">
                            <li>打印机维修及保养</li>
                            <li>打印机配置及共享</li>
                            <li>考勤打卡系统调试</li>
                            <li>安防监控维修</li>
                        </ul>
                    </div>
                    <a class="col-xs-offset-2 col-xs-8 no-padding full-content" href="${website}public/page/1">
                        查看完整服务范围
                    </a>
                </div>
            </div>
        </div>
        <div class="row small-screen-padding">
            <div class="col-xs-12 title no-padding">
                <h3>&nbsp;&nbsp;免费IT维护服务流程</h3>
                <div></div>
            </div>
        </div>
        <div class="row small-screen-padding">
            <div class="col-sm-12 col-md-3  no-padding">
                <div class="row customer">
                    <h4 class="col-xs-12 no-padding customer-title">
                        适用客户
                    </h4>
                    <ul class="col-xs-10 col-xs-offset-2  no-padding customer-tip-ul">
                        <li>中小企业及初创企业</li>
                        <li>业务需要使用计算机</li>
                        <li>业务开展依托网络</li>
                        <li>无独立的IT职能部门</li>
                        <li>有IT维护需求还想节约成本</li>
                        <li>有固定办公地点在博曼服务站点范围内</li>
                    </ul>
                    <a class="col-xs-offset-2 col-xs-8 no-padding full-content green-register" href="${website}registration">
                        立即注册
                    </a>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 no-padding-right">
                <div class="row customer">
                    <h4 class="col-xs-12 no-padding customer-title">
                        使用博曼免费IT维护服务&nbsp;5步轻松搞定
                    </h4>
                    <ul class="col-xs-12 no-padding customer-step-ul">
                        <li>
									<span>
										<i class="fa fa-user"></i>
									</span>
                            <p>注册网站会员</p>
                        </li>
                        <li>
									<span>
										<i class="fa fa-wechat"></i>
									</span>
                            <p>关注博曼微信</p>
                        </li>
                        <li>
									<span>
										<i class="fa fa-envelope-o"></i>
									</span>
                            <p>等待账号激活</p>
                        </li>
                        <li>
									<span>
										<i class="fa fa-wrench"></i>
									</span>
                            <p>发起维护需求</p>
                        </li>
                        <li>
									<span>
										<i class="fa fa-edit"></i>
									</span>
                            <p>评价此次服务</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md-3  no-padding-right">
                <div class="row customer">
                    <h4 class="col-xs-12 no-padding customer-title">
                        还没有账号？
                    </h4>
                    <a class="col-xs-offset-4 col-xs-4  btn register-btn" href="${website}registration">
                        注册
                    </a>
                    <p class="col-xs-12  no-padding register-tip">
                        <i class="fa f a-user"></i>
                        &nbsp;注册会员立刻开始体验免费IT维护服务
                    </p>
                    <div class="col-xs-12 no-padding a">
                        <ul class="register-ul">
                            <li class="register-ul-help">
                                <span>如需帮助请联系客服</span>
                            </li>
                            <li>
                                <i class="fa fa-phone-square"></i>
                                <span>010-88689668 88689968</span>
                            </li>
                            <li>
                                <i class="fa fa-qq"></i>
                                <span>1004646666 1004656666</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row small-screen-padding">
            <div class="col-xs-12 title no-padding">
                <h3>&nbsp;&nbsp;免费IT维护服务特点</h3>
                <div></div>
            </div>
        </div>
        <div class="row small-screen-padding">
            <div class="col-sm-12 col-md-3  no-padding">
                <div class="row customer">
                    <h4 class="col-xs-12 no-padding customer-title">
                        核心优势
                    </h4>
                    <ul class="col-xs-10 col-xs-offset-2  no-padding customer-tip-ul core-ul">
                        <li>免费快捷</li>
                        <li>专业的IT工程师团队</li>
                        <li>7*12小时客服人员值守</li>
                        <li>真正的免费IT维护服务</li>
                        <li>连锁的服务站点快速响应上门</li>
                        <li>服务订单评价跟踪服务质量</li>
                        <li>用心为客户服务的服务心态</li>
                    </ul>
                    <a class="col-xs-offset-2 col-xs-8 no-padding full-content green-register" href="${website}registration">
                        立即注册
                    </a>
                </div>
            </div>
            <div class="col-sm-12 col-md-9 no-padding-right">
                <div class="row customer engineer">
                    <h4 class="col-xs-12 no-padding customer-title engineer-title">
                        最佳服务工程师团队
                    </h4>
                    <ul class="col-xs-12 no-padding">
                        <li>
                            <img src="${staticWebsite}img/pub/freeITmaintainence/xiaobo.png">
                            <p class="engineer-name">高晓博</p>
                            <p class="engineer-position">网络维护工程师</p>
                            <p class="engineer-msg">
                                计算机网络工程硕士<br/>擅长解决各种网络问题及<br/>网络设备的调试与配置
                            </p>
                        </li>
                        <li>
                            <img src="${staticWebsite}img/pub/freeITmaintainence/songtao.png">
                            <p class="engineer-name">宋涛</p>
                            <p class="engineer-position">系统维护工程师</p>
                            <p class="engineer-msg">
                                计算机应用技术研究生<br/>擅长排查Windows<br/>Linux系统常见问题
                            </p>
                        </li>
                        <li>
                            <img src="${staticWebsite}img/pub/freeITmaintainence/xiaoting.png">
                            <p class="engineer-name">李晓婷</p>
                            <p class="engineer-position">系统维护工程师</p>
                            <p class="engineer-msg">
                                计算机应用研究生<br/>能够快速解决系统问题及<br/>软件问题
                            </p>
                        </li>
                        <li>
                            <img src="${staticWebsite}img/pub/freeITmaintainence/xingjie.png">
                            <p class="engineer-name">栗兴杰</p>
                            <p class="engineer-position">网络维护工程师</p>
                            <p class="engineer-msg">
                                计算机网络应用研究生<br/>了解计算机硬件<br/>擅长解决计算机硬件故障
                            </p>
                        </li>
                        <li>
                            <img src="${staticWebsite}img/pub/freeITmaintainence/wangqiang.png">
                            <p class="engineer-name">王强</p>
                            <p class="engineer-position">打印机维护工程师</p>
                            <p class="engineer-msg">
                                原惠普售后技术主管<br/>了解打印机构造<br/>擅长处理打印机故障
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <c:if test="${mobile_pc_browser_name != true}" >
        <div class="row hidden-xs">
            <div class="col-xs-12 title no-padding">
                <h3>&nbsp;&nbsp;免费IT维护服务投效比</h3>
                <div></div>
            </div>
        </div>
        <div class="row hidden-xs">
            <div class="col-xs-12 no-padding">
                <div class="row info">
                    <p class="table-info">客户规模：20人，台式机15台，笔记本5台，打印机2台，复印机1台（样例数据来源于真实企业）<br />信息化应用情况：有基础的内部以太网覆盖用于业务传送文件</p>
                    <table class="table-gray">
                        <thead>
                        <th>序号</th>
                        <th>非会员企业费用支出及利润损失点</th>
                        <th>测算金额</th>
                        <th>备注</th>
                        <th>博曼免费IT维护成本及效益</th>
                        </thead>
                        <tbody>
                        <tr>
                            <td><span class="index">1</span></td>
                            <td>专职维护人员的开支</td>
                            <td>￥48000.00</td>
                            <td>按每月4000工资计算</td>
                            <td>博曼提供免费IT服务</td>
                        </tr>
                        <tr>
                            <td><span class="index">2</span></td>
                            <td>操作不当及硬盘损害导致的数据损失</td>
                            <td>￥5000.00</td>
                            <td>一般数据恢复的市场价格</td>
                            <td>博曼定期检查硬盘状态并制定备份方案，让数据更安全</td>
                        </tr>
                        <tr>
                            <td><span class="index">3</span></td>
                            <td>更换、损坏的IT设备处理不当的损失</td>
                            <td>￥2000.00</td>
                            <td>20%设备淘汰率计算</td>
                            <td>博曼上门帮您废件处理，处理所得收益上缴财务部门</td>
                        </tr>
                        <tr>
                            <td><span class="index">4</span></td>
                            <td>计算机及网络设备出现问题后无法售后的损失</td>
                            <td>￥2000.00</td>
                            <td>一年5次左右</td>
                            <td>博曼提供统一售后服务</td>
                        </tr>
                        <tr>
                            <td><span class="index">5</span></td>
                            <td>设备出现问题后无法快速解决的时间损失</td>
                            <td>￥2000.00</td>
                            <td>一年50次左右</td>
                            <td>博曼能够快速响应并解决问题</td>
                        </tr>
                        </tbody>
                    </table>
                    <p class="table-info table-blue">
                        该客户选择博曼免费IT维护服务每年能节省约6万元成本
                    </p>
                </div>
            </div>
        </div>
        </c:if>

        <div class="row small-screen-padding">
            <div class="col-xs-12 title no-padding">
                <h3>&nbsp;&nbsp;已使用免费IT维护的企业</h3>
                <div></div>
            </div>
        </div>
        <div class="row small-screen-padding">
            <div class="col-xs-12 no-padding">
                <div class="row info">
                    <div class="col-xs-12 col-md-6 no-padding">
                        <div class="col-sm-6 col-xs-12 col-md-6 client-img">
                            <img alt="客户logo" src="${staticWebsite}img/pub/freeITmaintainence/customers/lrsm-customer.png" />
                            <span class="server-tip">北京里仁尚美商业有限公司</span>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 client-img">
                            <img alt="客户logo" src="${staticWebsite}img/pub/freeITmaintainence/customers/hy-customer.png" />
                            <span class="server-tip">北京花印广告有限公司</span>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 client-img">
                            <img alt="客户logo" src="${staticWebsite}img/pub/freeITmaintainence/customers/ds-customer.png" />
                            <span class="server-tip">北京东尚贸易有限公司</span>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 client-img">
                            <img alt="客户logo" src="${staticWebsite}img/pub/freeITmaintainence/customers/dc-customer.png" />
                            <span class="server-tip">北京东川会计事务所</span>
                        </div>
                        <div class="col-sm-6 col-xs126 col-md-6 client-img">
                            <img alt="客户logo" src="${staticWebsite}img/pub/freeITmaintainence/customers/dskj-customer.png" />
                            <span class="server-tip">北京东盛科技有限公司</span>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 client-img">
                            <img alt="客户logo" src="${staticWebsite}img/pub/freeITmaintainence/customers/wsdc-customer.png" />
                            <span class="server-tip">北京万山地产开发有限公司</span>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-6 no-padding person-info">
                        <div class="clearfix">
                            <img  src="${staticWebsite}img/pub/freeITmaintainence/customers/client-info.png">
                            <p>
                                刘跃<br/>
                                北京里仁尚美商业有限公司&nbsp;项目总监
                            </p>
                        </div>
                        <p  class="person-msg " displayLength="">
                            客户说：像我们这种刚刚起步的公司，最大的困难就是在控制成本上。选择博曼的免费IT维护服务后，不但可以将这部分人员开支投入到公司的业务发展中，而且再也不用去电脑城维修电脑了。上门服务速度快，工程师技术好态度好，正是我们所需要的。祝博曼蓬勃发展。
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
