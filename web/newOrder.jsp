<%--
  Created by IntelliJ IDEA.
  User: MECHREVO
  Date: 2019/9/20
  Time: 11:24
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
                    <a class="page-scroll" href="myOrder.jsp">个人中心</a>
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
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>订单提交</h2>
                    <p>请确认订单信息</p>
                </div>
                <div class="col-lg-12" style="position: relative;left: 35%">
                    <div class="col-md-6">
                        <form action="addOrder.do" method="post">
                            <div class="input-group">
                                <span class="input-group-addon"> 姓&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名 </span>
                                <input type="text" class="form-control" style="width: 180px" value="${u.u_name}" name="u_name" readonly="readonly">
                            </div><br>
                            <div class="input-group">
                                <span class="input-group-addon">出发城市</span>
                                <input type="text" class="form-control" style="width: 180px" value="${f.s_place}" name="s_place" readonly="readonly">
                            </div><br>
                            <div class="input-group">
                                <span class="input-group-addon">到达城市</span>
                                <input type="text" class="form-control" style="width: 180px" value="${f.a_place }" name="a_place" readonly="readonly">
                            </div><br>
                            <div class="input-group">
                                <span class="input-group-addon">起飞时间</span>
                                <input type="text" class="form-control" style="width: 180px" value="${f.s_time}" name="s_time" readonly="readonly">
                            </div><br>
                            <div class="input-group">
                                <span class="input-group-addon">到达时间</span>
                                <input type="text" class="form-control" style="width: 180px" value="${f.a_time}" name="a_time" readonly="readonly">
                            </div><br>
                            <div class="input-group">
                                <span class="input-group-addon"> 余&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;票 </span>
                                <input type="text" class="form-control" style="width: 180px" value="${f.seat}" name="seat" readonly="readonly">
                            </div><br>
                            <div class="input-group">
                                <span class="input-group-addon">购票数量</span>
                                <input type="text" class="form-control" placeholder="数量 *" id="amount" name="amount" style="width: 180px" data-validation-required-message="请输入购票数量">
                                <p class="help-block text-danger"></p>
                            </div> <br>
                            <div class="input-group" style="width: 260px">
                                        <span class="input-group-addon">
                                                <input type="radio" name="o_type" value="头等舱">头等舱
                                        </span>
                                <span class="input-group-addon" >
                                                <input type="radio" name="o_type" value="经济舱">经济舱
                                        </span>
                            </div><br>
                            <div class="row" >
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <button type="submit" class="btn">提交</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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
