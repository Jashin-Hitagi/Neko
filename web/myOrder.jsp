<%--
  Created by IntelliJ IDEA.
  User: MECHREVO
  Date: 2019/9/20
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Neko航空票务</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.default.min.css"  rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body id="page-top">
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top"><img src="images/logo.png" alt="Lattes theme logo"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="findPage.do">航班总览</a>
                </li>
                <li>
                    <a class="page-scroll" href="selectFilght.do">航班查询</a>
                </li>
                <li>
                    <a class="page-scroll" href="findPage.do">航空公司</a>
                </li>
                <li>
                    <a class="page-scroll" href="myOrder.do">个人中心</a>
                </li>
                <li>
                    <a class="page-scroll" href="exit.do">退出登录</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<!-- Header -->
<header>
    <div style="background-image: url('images/demo/amazon-prime-air.jpg');background-repeat: no-repeat">
        <div class="container">
            <div class="slider-container">
                <div class="intro-text">
                    <div class="intro-lead-in">欢迎来到Neko航空票务网！</div>
                    <div class="intro-heading">祝您旅途愉快,一路顺风!</div>
                </div>
            </div>
        </div>
    </div>
</header>



<section id="contact">
    <div class="container" style="width: 1200px">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>个人中心</h2>
                    <p>可以选择修改密码,申请退订服务和改签服务</p>
                </div>
            </div>
        </div>
        <div style="width: 150px;height: 500px;float: left">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="myOrder.do">订单中心</a></li>
                <li><a href="change.jsp">改签</a></li>
                <li><a href="cancel.jsp">退订</a></li>
                <li><a href="passwordChange.jsp">修改密码</a></li>
            </ul>
        </div>
        <div style="float: left;margin-left: 50px">
            <div style="width: 700px">
                <nav id="navbar-example" class="navbar navbar-default navbar-static" role="navigation" style="background-color: #337ab7">
                    <div class="container-fluid">
                        <p style="vertical-align: middle;font-size: 20px;color: white">温馨提示</p>
                    </div>
                </nav>
                <div data-spy="scroll" data-target="#navbar-example" data-offset="0"
                     style="height:120px;overflow:auto; position: relative;">
                    <p>您可在Neko航线上渠道办理一次改期或退票，具体如下：</p>

                    <p>一、仅限票号为888开头的Neko航实际承运国内航班的电子客票；</p>

                    <p>二、仅可改期至原航班起飞日期前后5天（含）内的Neko航实际承运航班；</p>

                    <p>三、支持单程、往返航班客票进行退改，不支持国际客票；</p>

                    <p>四、支持航司营业部、售票处（含B2C官网）、代理人客票进行退改，未使用航段须同时申请退票；</p>

                    <p>五、支持乘机人用自己的银行卡操作退改，但必须在流程中通过实名认证的校验；</p>

                    <p>六、购买包含保险、预付费选座等附加服务的客票，需先提交附加服务申退后，再办理改期、退票；</p>

                    <p>七、已办理乘机手续的客票需先行取消乘机手续；</p>

                    <p>八、如果乘机人重新绑定银行卡进行退票，票款将退回新的银行卡上，否则退票票款款将退至原支付渠道。</p>

                    <p>九、以下情况暂不支持：</p>

                    <p>（一）改期服务：</p>

                    <P>1、申请了无成人陪伴儿童、轮椅、担架服务、特殊餐食等特殊服务的客票；</P>

                    <p>2、婴儿旅客及与婴儿同行成人客票；</p>

                    <p>3、团队客票；</p>

                    <p>4、超过客票有效期的客票；</p>

                    <p>（二）退票服务：</p>

                    <p>1、婴儿旅客及同行成人的客票；</p>

                    <P>2、团队客票；</P>

                    <P>3、公务员客票；</P>

                    <p>4、积分兑换免票；</p>

                    <p>5、变更换开新票的客票；</p>

                    <p>6、超过客票有效期的客票；</p>

                    <p>7、其它预付卡、协议类、 “机加酒”、“随意飞”等产品客票；</p>

                    <p>8、多目的航班客票，一个乘机人将生成2张以上客票的订单客票；</p>

                    <p>操作过程中遇到任何问题，可联系首页的在线客服或致电Neko航直销服务热线123456咨询。</p>
                </div>

            </div>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>订单编号</th>
                    <th>航 班 号</th>
                    <th>起飞城市</th>
                    <th>到达城市</th>
                    <th>起飞时间</th>
                    <th>票   座</th>
                    <th>票   数</th>
                    <th>总 票 价</th>
                    <th>乘机人员</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${o_list}" var="f">
                    <tr>
                        <td style="vertical-align: middle">${f.o_id}</td>
                        <td style="vertical-align: middle">${f.filght.f_id}</td>
                        <td style="vertical-align: middle">${f.filght.s_place}</td>
                        <td style="vertical-align: middle">${f.filght.a_place}</td>
                        <td style="vertical-align: middle">${f.filght.s_time}</td>
                        <td style="vertical-align: middle">${f.o_type}</td>
                        <td style="vertical-align: middle">${f.amount}</td>
                        <td style="vertical-align: middle">${f.total_price}</td>
                        <td style="vertical-align: middle">${f.u_name}</td>
                        <td><button type="button" class="btn" id="myButton4" onclick="location.href='change.do?id=${f.o_id}'">改签
                        </button></td>
                        <td><button type="button" class="btn" id="myButton6" onclick="location.href='cancel.do?id=${f.o_id}'">退订
                        </button></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
<p id="back-top">
    <a href="#top"><i class="fa fa-angle-up"></i></a>
</p>
<footer>
    <div class="container text-center">
        <p>最终解释权由 <a href="#"><span>Neko</span></a>所有</p>
    </div>
</footer>


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>
<script src="js/theme-scripts.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
