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
</head>
<body id="page-top">
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top"  style="background-color: #2D2D2D">
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
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="manager.do">管理中心</a>
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
<br><br>



<section id="contact">
    <div class="container" style="width: 1400px">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>管理中心</h2>
                    <p>审核订单申请，管理用户与航班</p>
                </div>
            </div>
        </div>
        <div style="width: 150px;height: 400px;float: left">
            <ul class="nav nav-pills nav-stacked">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        订单管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="changeApply.do">改签申请</a></li>
                        <li><a href="cancelApply.do">退订申请</a></li>
                    </ul>
                </li>
                <li><a href="userManager.do">用户管理</a></li>
                <li><a href="filghtManager.do">航班管理</a></li>
                <li class="active"><a href="managerPassword.jsp">修改密码</a></li>
            </ul>
        </div>
        <div style="float: left;margin-left: 50px">
            <nav class="navbar navbar-default" role="navigation" style="background-color: white">
                <div class="container-fluid">
                    <form class="navbar-form navbar-left" action="userPassword.do" method="post">
                        <div class="form-group">
                            原密码:  &nbsp;&nbsp;&nbsp; <input type="password" class="form-control" style="width: 180px" name="old_u_pwd" placeholder="输入原密码">
                        </div><br><br>
                        <div class="form-group">
                            新密码:  &nbsp;&nbsp;&nbsp; <input type="password" class="form-control" style="width: 180px" name="new_u_pwd" placeholder="输入新密码">
                        </div><br><br><br>
                        <button type="submit" class="btn" style="margin-left: 100px">修改</button>
                    </form>
                </div>
            </nav>
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
