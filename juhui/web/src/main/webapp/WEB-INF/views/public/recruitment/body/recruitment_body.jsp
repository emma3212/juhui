<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <c:if test="${mobile_pc_browser_name != true}" >
    <div class="container hidden-xs recruitment">
        <img class="img-responsive" src="${staticWebsite}img/pub/recruitment/recruitment.gif" alt="招聘专区">
        <div class="introduce">
            <h2>我是慢吞吞&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但求踏实实</h2>
            <p class="introduce-p" displayLength="">狮子座，完美主义者，轻微强迫症，和我一起工作很累，努力也未必成功，不需要证明给谁看，只想对自己有交代，我需要伙伴，即使性格全然不同，也能结伴而行，共享一窗风景....</p>
            <a href="#" class="btn btn-empty">请加入我们吧</a>
        </div>
    </div>
    </c:if>
    <div class="container situation text-center">
        <h3 class="text-center">近期招聘岗位情况</h3>
        <p class="text-center">北京广德腾建博曼科技有限公司是一家专门为企业会员提供IT服务的公司。</p>
        <p class="text-center">为扩大公司业务发展，现需招聘以下职位。博曼团队期待你的加入。</p>
        <div class="row situation-icon-list margin-left-80 margin-right-80">
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="situation-icon">
                    <div class="situation-icon-inner text-center">
                        <p>
                            <i class="fa fa-bullhorn"></i>
                            <span>14</span>
                        </p>
                        <p>岗位数量</p>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 second">
                <div class="situation-icon">
                    <div class="situation-icon-inner text-center">
                        <p>
                            <i class="fa fa-user"></i>
                            <span>30</span>
                        </p>
                        <p>招聘人数</p>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="situation-icon">
                    <div class="situation-icon-inner text-center">
                        <p>
                            <i class="fa fa-wrench"></i>
                            <span>14</span>
                        </p>
                        <p>服务工程师</p>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 second">
                <div class="situation-icon">
                    <div class="situation-icon-inner text-center">
                        <p>
                            <i class="fa fa-file-text-o"></i>
                            <span>04</span>
                        </p>
                        <p>客户经理</p>
                    </div>
                </div>
            </div>
        </div>
        <button class="btn btn-primary btn-contact" type="button">立即联系招聘负责人</button>
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
    </div>
    <div class="container margin-top-50">
        <div class="row job-list clearfix">
            <h3 class="job-title">招聘岗位列表</h3>
            <div class="col-sm-12 col-md-12 col-lg-8">
                <div class="row job-name-apply text-center">
                    <div class="col-xs-6 col-sm-6 active">
                        <h4 class="job-name-lg"><i class="fa fa-bullhorn"></i>&nbsp;岗位名称</h4>
                    </div>
                    <div class="col-xs-6 col-sm-6">
                        <h4 class="job-apply"><i class="fa fa-heart"></i>&nbsp;申请岗位</h4>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix">
                                <div class="row">
                                    <button class="name">服务工程师</button>
                                    <input class="job-id" type="hidden"  name="postId" value="1">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;服务工程师</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>负责上门解决企业会员办公电脑软硬件设备故障及网络故障。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>大专以上学历，计算机相关专业，1年以上计算机支持工作经验；</li>
                                            <li>具有良好的服务意识、团队合作和沟通能力； </li>
                                            <li>了解主流厂商计算机软硬件产品，熟练掌握计算机软硬件维护知识 ；</li>
                                            <li>有较强的计算机系统软硬件故障决绝能力；</li>
                                            <li>持有IT相关认证者优先。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-orange clearfix">
                            <a class="btn-apply btn-orange-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-orange-number pull-right">
                                <span class="number">3000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">客户经理</button>
                                    <input class="job-id" type="hidden"  name="postId" value="2">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;客户经理</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>作为公司和客户的桥梁，积极与客户保持联系，为客户提供“一站式”服务；</li>
                                            <li>维持客户关系，积极开发现有客户潜在需求，定期有针对性地向客户主动建议和推荐适用的产品；</li>
                                            <li>客户档案的建立和保管，客户信息的利用与开发；</li>
                                            <li>收集客户反馈意见，提出产品改善建议。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>大专以上学历，计算机相关专业，1年以上计算机支持工作经验；</li>
                                            <li>具有良好的服务意识、团队合作和沟通能力； </li>
                                            <li>了解主流厂商计算机软硬件产品，熟练掌握计算机软硬件维护知识 ；</li>
                                            <li>有较强的计算机系统软硬件故障决绝能力；</li>
                                            <li>持有IT相关认证者优先。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-blue clearfix">
                            <a class="btn-apply btn-blue-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-blue-number pull-right">
                                <span class="number">3500元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">供应商专员</button>
                                    <input class="job-id" type="hidden"  name="postId" value="3">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;供应商专员</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>对市场上IT产品进行选型和品牌筛选；</li>
                                            <li>负责IT产品的采购、招标和谈判；</li>
                                            <li>能够控制成本，及时有效协调处理与供应商运作间的问题；</li>
                                            <li>能够控制成本，及时有效协调处理与供应商运作间的问题；</li>
                                            <li>有效维护与供应商关系；</li>
                                            <li>与公司内外相关业务部门的协作。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>大学本科以上学历，以及5年以上供应商管理经验；</li>
                                            <li>信息管理系统、供应商管理和绩效管理等；</li>
                                            <li>熟练操作常用办公软件，熟练运用Excel、Access等数据分析工具；</li>
                                            <li>较强的逻辑判断能力和数据分析能力；</li>
                                            <li>较强的沟通协调能力、谈判能力、团队合作精神和责任心。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-green clearfix">
                            <a class="btn-apply btn-green-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-green-number pull-right">
                                <span class="number">3500元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">电子建设工程项目经理</button>
                                    <input class="job-id" type="hidden"  name="postId" value="4">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;电子建设工程项目经理</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>承担电子建设项目的项目管理工作；</li>
                                            <li>制定和实施项目计划，推动项目进程与关键决策的实施；</li>
                                            <li>估算项目实施成本与周期以及项目的风险控制；</li>
                                            <li>负责项目中与用户和相关部门的沟通、关键问题解决、协调及谈判工作；</li>
                                            <li>负责推动项目的具体执行和过程监督；</li>
                                            <li>培养团队文化，激发团队成员的主动性，积极性。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>本科或以上学历；</li>
                                            <li>2年以上项目管理经验，5年以上IT从业经验，熟悉主流技术框架；</li>
                                            <li>精通项目管理方法和相关理论，熟悉整个项目周期的各项工作内容和操作技巧；</li>
                                            <li>能够独立完成或组织完成项目计划，项目范围、进度、成本、质量、风险控制工作，及项目汇报等工作；</li>
                                            <li>具有优秀的沟通能力，能够与项目客户、合作单位保持良好的沟通，具有一定的谈判和说服能力；</li>
                                            <li>公司安排的其他任务，配合公司的技术积累与项目交付，以适应业务的持续发展。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-orange clearfix">
                            <a class="btn-apply btn-orange-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-orange-number pull-right">
                                <span class="number">8000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">软件产品经理</button>
                                    <input class="job-id" type="hidden"  name="postId" value="5">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;软件产品经理</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>制定产品管理相关制度，推动落实工作目标；</li>
                                            <li>负责产品需求调研的相关工作，完成产品需求分析文档的编写；</li>
                                            <li>跟据业务需求和产品发展方向，进行产品规划，设计产品模型，定义相关功能模块；</li>
                                            <li>制定产品开发计划、跟踪产品开发进度；</li>
                                            <li>配合业务部门进行产品验收相关工作，对业务部门进行培训；</li>
                                            <li>负责产品上线后的需求变更和BUG解决,确保支持工作保障到位。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>本科及以上学历，计算机相关专业毕业；</li>
                                            <li>三年以上企业业务系统软件产品经理工作经验；</li>
                                            <li>三年以上团队管理经验或第三方项目实施经验；</li>
                                            <li>具有较强的业务分析能力，有丰富的交互设计经验；</li>
                                            <li>具有清晰的思路，良好的沟通和表达能力，能编制需求分析文档；</li>
                                            <li>熟悉运用office visio、axure等工具进行原型制作，并最终形成产品设计；</li>
                                            <li>有良好的项目计划能力，拥有良好的团队协作能力，能主动积极的去解决问题，能承受较大的工作压力。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-blue clearfix">
                            <a class="btn-apply btn-blue-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-blue-number pull-right">
                                <span class="number">8000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">软件项目经理</button>
                                    <input class="job-id" type="hidden"  name="postId" value="6">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;软件项目经理</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>负责软件开发项目的管理工作；</li>
                                            <li>组织、协调和管理项目组内成员工作任务，以保质保量的完成研发任务；</li>
                                            <li>独立完成项目的调研、需求分析和系统设计等，制定合理的开发计划和项目管理流程，撰写项目开发文档；</li>
                                            <li>把控项目进度，督促研发人员按时完成研发目标；</li>
                                            <li>指导、解决开发实施过程中遇到的技术问题。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>计算机相关专业本科及以上学历；</li>
                                            <li>5年以上J2EE企业级应用开发经验,具有金融类项目经验者优先考虑；</li>
                                            <li>熟练掌握基于Struts、Spring、IBatis、Hibernate等开源框架的应用开发；</li>
                                            <li>熟悉使用html,css,javascript,jquery,extjs等相关技术；</li>
                                            <li>熟悉Eclipse等主流IDE开发环境；</li>
                                            <li>至少熟练掌握一种主流数据库，具备较好的SQL功底；</li>
                                            <li>主要负责项目团队管理，带领成员按时完成开发工作，并对成员进行考核；</li>
                                            <li>负责项目的用户需求分析、概要/详细设计、数据库设计，并编写相关文档及方案；</li>
                                            <li>参与项目开发进程管理亲自参与J2EE技术框架构建。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-green clearfix">
                            <a class="btn-apply btn-green-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-green-number pull-right">
                                <span class="number">8000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">前端程序员</button>
                                    <input class="job-id" type="hidden"  name="postId" value="7">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;前端程序员</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>与设计师配合，高效率高质量地完成页面的实现工作；</li>
                                            <li>协助商务、执行编写页面制作、优化、用户体验等相关的技术文档；</li>
                                            <li>实现网站页面特效、JS效果；</li>
                                            <li>网站的页面优化。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>精通HTML、DIV+CSS、JavaScript、Ajax等页面技术，能够手工编写和修改javascript脚本代码，确保页面代码对各种浏览器的良好兼容性；</li>
                                            <li>有主流JS框架的使用经验，有二次发开经验者优先，熟悉网站SEO标准；</li>
                                            <li>熟练掌握基于Struts、Spring、IBatis、Hibernate等开源框架的应用开发；</li>
                                            <li>精通Dreamweaver，Photoshop，fireworks，flash等工具，熟悉html5、css3者优先；</li>
                                            <li>二年以上相关工作经验，有大型门户网站、商城、论坛、社区制作经验者优先；</li>
                                            <li>具备强烈的进取心、求知欲及团队合作精神，有较强的沟通能力；</li>
                                            <li>性格耐心细致，责任心强，能承受较强的工作压力，具备良好的敬业精神。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-orange clearfix">
                            <a class="btn-apply btn-orange-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-orange-number pull-right">
                                <span class="number">5000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">Java程序员</button>
                                    <input class="job-id" type="hidden"  name="postId" value="8">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;Java程序员</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>独立承担关键功能模块的设计和开发；</li>
                                            <li>根据需求进行概要设计及详细设计以及模块的实现；</li>
                                            <li>系统模块开发及模块测试；</li>
                                            <li>配合项目经理完成项目实施的技术工作。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>软件工程、计算机相关专业本科以上学历；</li>
                                            <li>2年以上软件项目开发工作经验，有至少两个以上大型项目经验；</li>
                                            <li>掌握软件分析、设计方法及设计模式，熟练使用Rational Rose 、 viso 建模工具；</li>
                                            <li>熟悉 ajax、javaScript、workflow技术；熟练掌握 Weblogic、Websphere、Tomcat 等一种以上应用服务器；</li>
                                            <li>较强的技术文档编写能力；具有B2C B2B电子商务项目经验的优先。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-blue clearfix">
                            <a class="btn-apply btn-blue-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-blue-number pull-right">
                                <span class="number">5000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">平面设计师</button>
                                    <input class="job-id" type="hidden"  name="postId" value="9">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;平面设计师</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>根据项目需求负责网站设计、更新改版、专题设计、维护工作； </li>
                                            <li>负责网页广告和相关图片、动画的制作，准确传达信息；</li>
                                            <li>根据网络推广需要进行相应的宣传品设计，制作Flash动画、Flash广告等；</li>
                                            <li>完成公司其他需要的网络视觉美化方面的工作。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>本科学历，丰富的网站设计相关工作经验，能够独立完成工作，有门户网站设计经验；</li>
                                            <li>熟练运用Photoshop、Dreamweaver、Illustrator、Flash等设计软件；具有良好的美术功底和创意构思能力，优秀的设计理念和思维；</li>
                                            <li>有较强的平面设计能力，美工设计及用色技巧，能胜任网页与宣传画册等印刷品的规划和制作；</li>
                                            <li>熟悉Html语言，熟练使用DIV+CSS布局编写网页；</li>
                                            <li>能够和程序员及其它同事进行默契的配合，团队合作意识强；</li>
                                            <li>发送简历时请附带个人作品，可供浏览的案例网址及相关作品。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-green clearfix">
                            <a class="btn-apply btn-green-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-green-number pull-right">
                                <span class="number">5000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">法务</button>
                                    <input class="job-id" type="hidden"  name="postId" value="10">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;法务</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>负责英文及中文合同的审核，出具英文及中文法律意见；</li>
                                            <li>负责处理各类项目合作过程中的法律事务；</li>
                                            <li>为各业务部门提供法律咨询，进行法律风险分析；</li>
                                            <li>负责处理突发法律事件。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>法学本科以上学历；</li>
                                            <li>5年以上专业工作经验；</li>
                                            <li>熟悉互联网相关法律法规和管理规定；</li>
                                            <li>英文读写能力较强；</li>
                                            <li>工作积极主动，时间观念强，学习能力强；</li>
                                            <li>通过司法考试；</li>
                                            <li>适应高强度的工作压力，独立处理事务能力强；</li>
                                            <li>沟通和团队协作能力强。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-orange clearfix">
                            <a class="btn-apply btn-orange-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-orange-number pull-right">
                                <span class="number">2500元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">会计</button>
                                    <input class="job-id" type="hidden"  name="postId" value="11">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;会计</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>负责编制、审核、装订各类会计凭证；</li>
                                            <li>负责登记并保管各种明细账、总分类账，做好财务账簿的建立、记录和管理工作；</li>
                                            <li>负责登记并保管各种明细账、总分类账，做好财务账簿的建立、记录和管理工作；</li>
                                            <li>负责费用报销、款项支付、财务核算等日常财务审核流程；</li>
                                            <li>负责比对账目、完善帐套等公司日常会计核算，定期出具公司内部管理报表及税务报表；</li>
                                            <li>负责协助上级完成财务相关制度流程的建立和完善。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>熟悉国家财务税法规范、国家会计法规，了解税务法规和相关税收政策；</li>
                                            <li>会计相关专业优先，有会计资格从业证；</li>
                                            <li>熟悉操作Excel、Word办公软件，会独立制表；</li>
                                            <li>勤劳诚恳，思路清晰，态度端正，服从管理；</li>
                                            <li>有2年以上工作经验；</li>
                                            <li>熟悉使用财务软件；</li>
                                            <li>大专以上学历。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-blue clearfix">
                            <a class="btn-apply btn-blue-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-blue-number pull-right">
                                <span class="number">3500元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">出纳</button>
                                    <input class="job-id" type="hidden"  name="postId" value="12">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;出纳</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>负责日常收支的管理和核对；</li>
                                            <li>办公室基本账务的核对；</li>
                                            <li>负责收集和审核原始凭证，保证报销手续及原始单据的合法性、准确性；</li>
                                            <li>负责登记现金、银行存款日记账并准确录入系统，按时编制银行存款余额调节表；</li>
                                            <li>负责记账凭证的编号、装订；保存、归档财务相关资料；</li>
                                            <li>负责开具各项票据；</li>
                                            <li>配合负责办公室财务管理统计汇总。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>大学专科以上学历，会计学或财务管理专业毕业，有从业资格证书；</li>
                                            <li>具有1年以上出纳工作经验，年龄22-35岁；</li>
                                            <li>熟悉操作财务软件、Excel、Word等办公软件；</li>
                                            <li>记账要求字迹清晰、准确、及时，账目日清月结，报表编制准确、及时；</li>
                                            <li>工作认真，态度端正，具有良好的职业道德和团队合作精神；</li>
                                            <li>了解国家财经政策和会计、税务法规，熟悉银行结算业务。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-green clearfix">
                            <a class="btn-apply btn-green-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-green-number pull-right">
                                <span class="number">2500元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">行政</button>
                                    <input class="job-id" type="hidden"  name="postId" value="13">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;行政</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>参与制定公司行政管理制度，完善和细化办公管理体系；</li>
                                            <li>组织制定行政部工作发展规划与预算方案；</li>
                                            <li>负责固定资产及办公用品的采购、分配、维护与管理，有效控制公司后勤成本；</li>
                                            <li>定期组织做好办公职能检查，及时发现问题、解决问题，督促纠正，做好预防措施工作；</li>
                                            <li>接待公司重要来访客人，处理行政方面的重要函件及重大活动的组织筹备及各类会务的安排；</li>
                                            <li>做好员工、各部门及上级之间的沟通工作。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>行政管理等相关专业专科以上学历，至少3年以上同岗位工作经验；</li>
                                            <li>熟悉公司管理体系与制度建设，对行政规范管理等方面有丰富的实践经验；</li>
                                            <li>良好的团队协作精神，品行端正，有亲和力，具有很强的判断与决策能力，计划和协调能力、组织及公关能力；</li>
                                            <li>熟悉使用办公软件和办公自动化设备。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-orange clearfix">
                            <a class="btn-orange-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-apply btn-orange-number pull-right">
                                <span class="number">3000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row job-name">
                    <div class="col-sm-6">
                        <div class="row margin-bottom-10">
                            <div class="col-md-2 hidden-xs hidden-sm clearfix photo">
                    					<span class="photo-icon">
                    						<i class="fa fa-user"></i>
                    					</span>
                            </div>
                            <div class="col-sm-12 col-md-10 clearfix ">
                                <div class="row">
                                    <button class="name">客服</button>
                                    <input class="job-id" type="hidden"  name="postId" value="14">
                                    <div class="hidden job-introduce">
                                        <h5 class="margin-bottom-15"><i class="fa fa-user"></i>&nbsp;客服</h5>
                                        <p class="text-left">岗位介绍</p>
                                        <ol class="text-left">
                                            <li>、在线处理公司网络、电话等来访客人的咨询，给予亲切专业解答；</li>
                                            <li>通过公司专业培训，不断提高本行业专业知识，分析咨询者的需求，做好咨询及预约等工作；</li>
                                            <li>通过网络平台发送软文。</li>
                                        </ol>
                                        <p class="text-left">任职要求</p>
                                        <ol class="text-left">
                                            <li>头脑灵活、反应敏捷、善于交流，做过其他行业咨询人员均可；</li>
                                            <li>具备良好的营销意识和沟通能力；</li>
                                            <li>有一定的语言组织能力。</li>
                                        </ol>
                                    </div>
                                    <p>
                    							<span class="pull-left">
                    								<i class="fa fa-suitcase"></i>&nbsp;鲁谷服务站
                    							</span>
                    							<span class="area">
                    								<i class="fa fa-map-marker"></i>&nbsp;北京地区
                    							</span>
                    							<span class="time">
                    								<i class="fa fa-calendar-o"></i>&nbsp;两天前发布
                    							</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="btn-blue clearfix">
                            <a class="btn-apply btn-blue-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-blue-number pull-right">
                                <span class="number">3000元+</span>
                                <span class="unit">/月</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-4">
                <h4 class="require-job-title text-center">
                    <i class="fa fa-star"></i>&nbsp;急缺岗位
                </h4>
                <div class="row require-job border-bottom-2">
                    <div class="col-sm-12 require-job-list">
                        <img class="img-responsive require-job-bg" src="${staticWebsite}img/pub/recruitment/require-job.gif" alt="急缺岗位">
                        <div class="btn-orange-lg clearfix">
                            <a class="btn-apply btn-orange-lg-text pull-left" href="javascript:;">申请此岗位</a>
                            <div class="btn-orange-lg-number">
                                <span class="number">3000元+/月</span>
                            </div>
                        </div>
                    </div>
                    <h4 class="col-sm-12 text-center margin-top-40">IT服务工程师</h4>
                    <input class="job-id" type="hidden"  name="postId" value="1">
                    <p class="text-center">
                    			<span>
                    				<i class="fa fa-suitcase"></i>&nbsp;
                    				鲁谷服务站
                    			</span>
                    			<span>
                    				<i class="fa fa-map-marker"></i>&nbsp;
                    				北京
                    			</span>
                    </p>
                    <p>主要负责对博曼IT服务站点所覆盖的服务区域内的企业会员进行上门IT服务。主要工作内容为处理突发的计算机软件、硬件及网络问题。</p>
                </div>
                <div class="row job-demand border-bottom-2">
                    <h4 class="text-center job-demand-title border-bottom-2">岗位要求与知识结构</h4>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 margin-top-32 padding-bottom-30">
                        <h5>岗位要求</h5>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i>&nbsp;全职单休</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;良好的服务心态</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;喜欢学习新知识</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;做事认真负责</li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 margin-top-32 padding-bottom-30">
                        <h5>知识结构</h5>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i>&nbsp;能够独立装机</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;熟练操作系统</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;掌握基本网络知识</li>
                        </ul>
                    </div>
                </div>
                <div class="row pay-experience">
                    <div class="col-sm-12 clearfix pay border-bottom-2">
                        <p class="pull-left">工资3000元+/月</p>
                        <img class="pull-right" src="${staticWebsite}img/pub/recruitment/pay.gif" alt="">
                    </div>
                    <div class="col-sm-12 clearfix experience border-bottom-2">
                        <p class="pull-left">工作经验0年</p>
                        <img class="pull-right" src="${staticWebsite}img/pub/recruitment/work-experience.gif" alt="">
                    </div>
                </div>
                <div class="row border-bottom-2 padding-bottom-30 plan">
                    <h5 class="margin-top-43 margin-left-15">职业生涯规划</h5>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 margin-top-10 padding-bottom-30">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i>&nbsp;定期企业内部培训</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;公平的内部晋升机制</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;激励的绩效评估标准</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;全员营销锻炼销售能力</li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 margin-top-10 padding-bottom-30">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-check-square"></i>&nbsp;活动实践锻炼组织能力</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;项目实践锻炼管理能力</li>
                            <li><i class="fa fa-check-square"></i>&nbsp;培训实践锻炼表达能力</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- {市场推广合作 start }-->
    <div class="container margin-top-50">
        <div class="row cooperation-list clearfix">
            <h3 class="cooperation-title">市场推广合作</h3>
            <div class="col-md-12 col-lg-6 member">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>推荐企业项目</h4>
                        <p class="member-introduce">博曼为企业会员提供每月4次免费IT维护及其他多项增值服务，帮助我们推荐一个企业会员您可以获得现金奖励，推荐的越多获取的奖金越多。</p>
                    </div>
                    <div class="col-sm-6 no-padding-left">
                        <div class="border-9">
                            <p class="phone text-center">
                                <span>客服电话：</span>
                                <span>010-88689668  88689968</span>
                            </p>
                            <p class="qq text-center">
                                <span>客服 QQ：</span>
                                <span>1004646666 1004656666</span>
                            </p>
                            <div class="pin text-center">
                                <form>
                                    <label>推荐人PIN：</label>
                                    <input type="text" disabled="disabled" />
                                    &nbsp;<i class="fa fa-lock"></i>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="btn btn-empty-blue more" href="">了解更多</a>
            </div>
            <div class="col-md-12 col-lg-6 project">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>推荐企业会员</h4>
                        <p class="project-introduce">向我们推荐的企业项目，我们愿与您共享利润，您只需介绍项目意向，剩下的都交由博曼项目经理跟进。</p>
                    </div>
                    <div class="col-sm-6 no-padding-left">
                        <img class="img-responsive border-9" src="${staticWebsite}img/pub/recruitment/partner.gif" alt="合作图片">
                    </div>
                </div>
                <a class="btn btn-empty-blue more" href="#">了解更多</a>
            </div>
        </div>
    </div>
    <!-- {我们的团队 start }-->
    <div class="container margin-top-50 hidden-xs">
        <div class="row team-list clearfix">
            <h3 class="team-title">我们的团队</h3>
            <div class="col-sm-12 no-padding-left no-padding-right">
                <h4 class="text-right padding-right-15">加入博曼团队与我们一起</h4>
                <div class="staff" id="jswbox">
                    <pre class="prev">prev</pre>
                    <pre class="next">next</pre>
                    <ul>
                        <li>
                            <img class="img-icon img-responsive" src="${staticWebsite}img/pub/recruitment/staff/wangq.jpg" alt="王强" />
                        </li>
                        <li>
                            <img class="img-icon img-responsive" src="${staticWebsite}img/pub/recruitment/staff/songt.jpg" alt="宋涛" />
                        </li>
                        <li>
                            <img class="img-icon img-responsive" src="${staticWebsite}img/pub/recruitment/staff/gaoxb.jpg" alt="高晓博" />
                        </li>
                        <li>
                            <img class="img-icon img-responsive" src="${staticWebsite}img/pub/recruitment/staff/lixj.jpg" alt="栗兴杰" />
                        </li>
                        <li>
                            <img class="img-icon img-responsive" src="${staticWebsite}img/pub/recruitment/staff/lixt.jpg" alt="李晓婷" />
                        </li>
                    </ul>
                    <div class="staff-introduce clearfix" id="staff-introduce1">
                        <div class="staff-name text-center clearfix">
                            <h5>王强  </h5>
                        </div>
                        <div class="staff-experience text-center clearfix">
                            <p>计算机应用硕士</p>
                            <p>对计算机操作系统有着深入的了解</p>
                            <p>擅长配置各种计算机、服务器系统软件</p>
                        </div>
                    </div>
                    <div class="staff-introduce clearfix" id="staff-introduce2">
                        <div class="staff-name text-center clearfix">
                            <h5>宋涛 </h5>
                        </div>
                        <div class="staff-experience text-center clearfix">
                            <p>计算机网络工程研究生</p>
                            <p>擅长解决各种网络问题及局域网规划</p>
                            <p>熟悉各种网络设备的调试与配置</p>
                        </div>
                    </div>
                    <div class="staff-introduce clearfix" id="staff-introduce3">
                        <div class="staff-name text-center clearfix">
                            <h5>高晓博 </h5>
                        </div>
                        <div class="staff-experience text-center clearfix">
                            <p>计算机应用技术硕士</p>
                            <p>擅长软件项目需求分析，电子建设工程需求分析</p>
                            <p>有网络管理工作经验和ERP实施工作经验</p>
                        </div>
                    </div>
                    <div class="staff-introduce clearfix" id="staff-introduce4">
                        <div class="staff-name text-center clearfix">
                            <h5>栗兴杰 </h5>
                        </div>
                        <div class="staff-experience text-center clearfix">
                            <p>计算机系统结构研究生</p>
                            <p>对计算机硬件有着较深的了解</p>
                            <p>擅长排查计算机硬件故障</p>
                        </div>
                    </div>
                    <div class="staff-introduce clearfix" id="staff-introduce0">
                        <div class="staff-name text-center clearfix">
                            <h5>李晓婷 </h5>
                        </div>
                        <div class="staff-experience text-center clearfix">
                            <p>计算机应用研究生</p>
                            <p>了解计算机桌面系统</p>
                            <p>能够快速解决各种桌面系统及软件问题</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="modal fade" id="jobModal">
            <form class="form-horizontal J_appForm" role="form">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="jobModalLabel">申请“<span class="name"></span>”岗位</h4>
                        </div>
                        <div class="modal-body">
                            <div class="alert alert-danger hidden" role="alert">
                                <button type="button" class="close">
                                    <span aria-hidden="true">&times;</span>
                                    <span class="sr-only">Close</span>
                                </button>
                                <span class="tip-msg"></span>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">姓名</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="name" placeholder="请输入您的姓名" name="name" required>
                                    <input type="hidden" class="job-id" name="postId" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">电话</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="phone" placeholder="请输入您的电话" name="phone" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">验证码</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="valid" placeholder="请输入验证码" name="valid" required>
                                </div>
                                <a class="col-sm-2">
                                    <img class="valid-img" id="validImg" src="${website}Kaptcha.jpg" alt="验证码图片" />
                                </a>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="submit" class="btn btn-primary submit">提交</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div class="modal fade" id="tipModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title">提示</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-success" role="alert">
                            <span class="tip-msg">申请岗位成功！</span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>


