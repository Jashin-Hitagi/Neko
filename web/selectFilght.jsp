<%--
  Created by IntelliJ IDEA.
  User: MECHREVO
  Date: 2019/9/20
  Time: 11:26
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
    <div class="container" style="width: 1400px">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>航班查询</h2>
                    <p>可以根据城市查询或航班号查询</p>
                </div>
            </div>
        </div>
        <div style="width: 150px;height: 400px;float: left">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="selectFilght.do">航班查询</a></li>
                <li><a href="selectCity.do">城市名</a></li>
                <li><a href="selectFilghtId.do">航班号</a></li>
            </ul>
        </div>
        <div style="float: left;margin-left: 50px">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>航班编号</th>
                    <th>起飞城市</th>
                    <th>到达城市</th>
                    <th>登机机场</th>
                    <th>着陆机场</th>
                    <th>起飞时间</th>
                    <th>到达时间</th>
                    <th>航空公司</th>
                    <th>飞机型号</th>
                    <th>票   价</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${f_list}" var="f">
                    <tr>
                        <td style="vertical-align: middle">${f.f_id}</td>
                        <td style="vertical-align: middle">${f.s_place}</td>
                        <td style="vertical-align: middle">${f.a_place}</td>
                        <td style="vertical-align: middle">${f.s_airport}</td>
                        <td style="vertical-align: middle">${f.a_airport}</td>
                        <td style="vertical-align: middle">${f.s_time}</td>
                        <td style="vertical-align: middle">${f.a_time}</td>
                        <td style="vertical-align: middle">${f.company}</td>
                        <td style="vertical-align: middle">${f.f_type}</td>
                        <td style="vertical-align: middle">${f.price}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination" style="margin-left: 35%">
                <c:if test="${f_index>1}">
                    <li class="page-item"><a class="page-link" href="selectFilght.do?f_index=1">首页</a></li>
                    <li class="page-item"><a class="page-link" href="selectFilght.do?f_index=${f_index-1}">&laquo;</a></li>
                </c:if>
                <c:forEach var="num" begin="1" end="${f_total}">
                    <li class="page-item"><a class="page-link" href="selectFilght.do?f_index=${num}">${num}</a></li>
                </c:forEach>
                <c:if test="${f_index<f_total}">
                    <li class="page-item"><a class="page-link" href="selectFilght.do?f_index=${f_index+1}">&raquo;</a></li>
                    <li class="page-item"><a class="page-link" href="selectFilght.do?f_index=${f_total}">末页</a></li>
                </c:if>
            </ul>
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
