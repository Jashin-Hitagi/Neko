<%--
  Created by IntelliJ IDEA.
  User: MECHREVO
  Date: 2019/9/20
  Time: 11:13
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
    <title>欢迎登录Neko航空</title>
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
                    <a class="page-scroll" href="#about">航班总览</a>
                </li>
                <li>
                    <a class="page-scroll" href="selectFilght.do">航班查询</a>
                </li>
                <li>
                    <a class="page-scroll" href="#portfolio">航空公司</a>
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

<section id="about" class="light-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>航班信息总览</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
</section>
<section >
    <div class="container" style="width: 1500px">
        <div class="row">
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
                    <td><button type="button" class="btn" id="myButton4" onclick="location.href='newOrder.do?id=${f.f_id}'">直接订票
                    </button></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="row" style="margin-left: 35%">
                <ul class="pagination">
                    <c:if test="${f_index>1}">
                        <li class="page-item"><a class="page-link" href="findPage.do?f_index=1">首页</a></li>
                        <li class="page-item"><a class="page-link" href="findPage.do?f_index=${f_index-1}">&laquo;</a></li>
                    </c:if>
                    <c:forEach var="num" begin="1" end="${f_total}">
                        <li class="page-item"><a class="page-link" href="findPage.do?f_index=${num}">${num}</a></li>
                    </c:forEach>
                    <c:if test="${f_index<f_total}">
                        <li class="page-item"><a class="page-link" href="findPage.do?f_index=${f_index+1}">&raquo;</a></li>
                        <li class="page-item"><a class="page-link" href="findPage.do?f_index=${f_total}">末页</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</section>
<section class="overlay-dark bg-img1 dark-bg short-section">
    <div class="container text-center">
        <div class="row">
            <div class="col-md-3 mb-sm-30">
                <div class="counter-item">
                    <h2 data-count="59">38</h2>
                    <h6>遍布城市</h6>
                </div>
            </div>
            <div class="col-md-3 mb-sm-30">
                <div class="counter-item">
                    <h2 data-count="1054">504</h2>
                    <h6>直达航线</h6>
                </div>
            </div>
            <div class="col-md-3 mb-sm-30">
                <div class="counter-item">
                    <h2 data-count="34">214</h2>
                    <h6>民运飞机</h6>
                </div>
            </div>
            <div class="col-md-3 mb-sm-30">
                <div class="counter-item">
                    <h2 data-count="154">18</h2>
                    <h6>优质服务</h6>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="portfolio" class="light-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>航空公司直连</h2>
                    <p>本公司与多家航空公司已达成合作，可点击查看各航空公司简介</p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- start portfolio item -->
            <div class="col-md-4">
                <div class="ot-portfolio-item">
                    <figure class="effect-bubba">
                        <img src="images/demo/air_china.jpg" alt="img02" class="img-responsive" />
                        <figcaption>
                            <h2></h2>
                            <p>中国国际航空</p>
                            <a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <!-- end portfolio item -->
            <!-- start portfolio item -->
            <div class="col-md-4">
                <div class="ot-portfolio-item">
                    <figure class="effect-bubba">
                        <img src="images/demo/portfolio-2.jpg" alt="img02" class="img-responsive" />
                        <figcaption>
                            <h2></h2>
                            <p>中国东方航空</p>
                            <a href="#" data-toggle="modal" data-target="#Modal-2">View more</a>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <!-- end portfolio item -->
            <!-- start portfolio item -->
            <div class="col-md-4">
                <div class="ot-portfolio-item">
                    <figure class="effect-bubba">
                        <img src="images/demo/portfolio-3.jpg" alt="img02" class="img-responsive" />
                        <figcaption>
                            <h2></h2>
                            <p>海南航空</p>
                            <a href="#" data-toggle="modal" data-target="#Modal-3">View more</a>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <!-- end portfolio item -->
        </div>
        <div class="row">
            <!-- start portfolio item -->
            <div class="col-md-4">
                <div class="ot-portfolio-item">
                    <figure class="effect-bubba">
                        <img src="images/demo/portfolio-4.jpg" alt="img02" class="img-responsive" />
                        <figcaption>
                            <h2></h2>
                            <p>中國南方航空</p>
                            <a href="#" data-toggle="modal" data-target="#Modal-4">View more</a>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <!-- end portfolio item -->
            <!-- start portfolio item -->
            <div class="col-md-4">
                <div class="ot-portfolio-item">
                    <figure class="effect-bubba">
                        <img src="images/demo/portfolio-5.jpg" alt="img02" class="img-responsive" />
                        <figcaption>
                            <h2></h2>
                            <p>上海航空</p>
                            <a href="#" data-toggle="modal" data-target="#Modal-5">View more</a>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <!-- end portfolio item -->
            <!-- start portfolio item -->
            <div class="col-md-4">
                <div class="ot-portfolio-item">
                    <figure class="effect-bubba">
                        <img src="images/demo/portfolio-6.jpg" alt="img02" class="img-responsive" />
                        <figcaption>
                            <h2></h2>
                            <p>四川航空</p>
                            <a href="#" data-toggle="modal" data-target="#Modal-6">View more</a>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <!-- end portfolio item -->
        </div>
    </div><!-- end container -->
</section>


<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>联系客服</h2>
                    <p>如果遇到问题，请联系我们客服!<br>我们将真诚地为您提供服务</p>
                </div>
            </div>
        </div>
        <div style="position: relative;left: 31%">
            <div class="col-md-3">
                <h3>联系方式</h3>
                <p><i class="fa fa-phone"></i> 123456</p>
                <p><i class="fa fa-envelope"></i> mail@noke.com</p>
            </div>
            <div class="col-md-3">
                <h3>工作时间</h3>
                <p><i class="fa fa-clock-o"></i> <span class="day"></span><span>9am to 8pm</span></p>
            </div>
        </div>
    </div>
</section>

<p id="back-top">
    <a href="#top"><i class="fa fa-angle-up"></i></a>
</p>
<footer>
    <div class="container text-center">
        <p>Designed by <a href="http://moozthemes.com"><span>MOOZ</span>Themes.com</a></p>
    </div>
</footer>

<!-- Modal for portfolio item 1 -->
<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-1">中国航空公司</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/air_china.jpg" alt="img01" class="img-responsive" />
                <p>中国国际航空股份有限公司，简称国航，是中国大陆第三大的国有航空企业，也是中国大陆唯一的载旗民用航空公司，总部设在北京，以北京首都国际机场为基地。</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='http://www.airchina.com.cn/'">前往</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 2 -->
<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-2">中国东方航空集团有限公司</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
                <p>中国东方航空集团有限公司是一家总部设在上海的中国大型中央企业，简称东航，为中国三大航空公司之一，设有飞行常客计划东方万里行。</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='http://www.ceair.com/'">前往</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 3 -->
<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-3">海南航空控股股份公司</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />

                <p>海南航空控股股份公司，简称海航控股、海航、HNA，是继中国南方航空公司、中国国际航空公司及中国东方航空公司后中国第四大的航空公司。</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='https://www.hnair.com/'">前往</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 4 -->
<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-4">中国南方航空集团有限公司</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
                <p>中国南方航空集团有限公司是一家总部设在中国广州的中央企业，与中国国际航空股份有限公司和中国东方航空集团有限公司合称中国三大航空集团。</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='https://www.csair.com/cn/index.shtml'">前往</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 5 -->
<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-5">上海航空有限公司</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
                <p>上海航空有限公司，原名上海航空公司、上海航空股份公司，简称上航，成立于1985年12月30日，是中国大陆改革开放后，首批以地方政府资金支持创立的航空公司之一。</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='http://www.ceair.com/fm.jsp'">前往</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 6 -->
<div class="modal fade" id="Modal-6" tabindex="-1" role="dialog" aria-labelledby="Modal-label-6">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-6">四川航空有限公司</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-6.jpg" alt="img01" class="img-responsive" />
                <p>四川航空股份有限公司，简称川航，成立于1986年9月19日，总部设在中国四川成都，由四川航空公司为主联合四川航空集团有限责任公司、中国南方航空、中国东方航空、山东航空、成都银杏餐饮公司共同发起设立四川航空股份公司。</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='https://www.sichuanair.com/'">前往</button>
            </div>
        </div>
    </div>
</div>

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
