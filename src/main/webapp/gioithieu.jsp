<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Giới Thiệu Về Electro</title>  
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">        
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>    
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>        
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>    
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/> <!-- Add custom CSS file -->
</head>
<body>
<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fa fa-phone"></i> +086-22-07-165</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i> 141 Nguyễn Văn Bảo</a></li>
            </ul>
            <ul class="header-links pull-right">
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <li><a href="#"><i class="fa fa-user-o"></i> ${sessionScope.user}</a></li>
                        <li><a href="logout"><i class="fa fa-sign-out"></i> Đăng Xuất</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="login.jsp"><i class="fa fa-user-o"></i> Đăng Nhập</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>

    <div id="header">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="index.jsp" class="logo">
                            <img src="./img/logo.png" alt="TienPC">
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="header-search">
                        <form action="store.jsp" method="get">
                            <select class="input-select" name="category">
                                <option value="0">Tất cả</option>
                                <option value="1">Pc 01</option>
                                <option value="2">Pc 02</option>
                            </select>
                            <input class="input" placeholder="Tìm Kiếm" name="search">
                            <button class="search-btn">Tìm</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <div>
                            <a href="#">
                                <i class="fa fa-heart-o"></i>
                                <span> Danh sách yêu thích</span>
                                <div class="qty">2</div>
                            </a>
                        </div>
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Giỏ Hàng</span>
                                <div class="qty">3</div>
                            </a>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product01.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">Lap Top Lenovo </a></h3>
                                            <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>
                                    </div>

                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">Tên Sản Phẩm</a></h3>
                                            <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>
                                    </div>
                                </div>
                                <div class="cart-summary">
                                    <small>3 Item(s) selected</small>
                                    <h5>SUBTOTAL: $2940.00</h5>
                                </div>
                                <div class="cart-btns">
                                    <a href="#">Xem giỏ hàng</a>
                                    <a href="checkout.jsp">Thanh Toán  <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- /HEADER -->

<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Giới Thiệu Về Electro</h3>
                <ul class="breadcrumb-tree">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Giới Thiệu Về Electro</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div id="about" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="section-title">Chào Mừng Đến Với Electro</h2>
                <p class="section-description">
                    <strong>Electro</strong> là một trong những nhà cung cấp máy tính hàng đầu với sứ mệnh mang đến cho khách hàng những sản phẩm công nghệ tiên tiến và dịch vụ hỗ trợ tận tâm. Chúng tôi cung cấp một loạt các sản phẩm máy tính, từ laptop, desktop đến các phụ kiện và linh kiện máy tính, tất cả đều được chọn lọc kỹ càng từ các thương hiệu uy tín hàng đầu.
                </p>
                <p class="section-description">
                    Tại <strong>Electro</strong>, chúng tôi hiểu rằng việc chọn mua một sản phẩm công nghệ không chỉ đơn thuần là về tính năng và giá cả, mà còn về sự hỗ trợ và dịch vụ khách hàng. Chính vì vậy, chúng tôi cam kết cung cấp dịch vụ hỗ trợ khách hàng xuất sắc, giúp bạn giải quyết mọi vấn đề và cung cấp những giải pháp tối ưu nhất cho nhu cầu của bạn.
                </p>
                <p class="section-description">
                    Chúng tôi tự hào với đội ngũ nhân viên chuyên nghiệp, giàu kinh nghiệm và đam mê công nghệ. Họ sẵn sàng tư vấn và hỗ trợ bạn từ giai đoạn lựa chọn sản phẩm đến quá trình sau khi mua hàng. Bạn có thể hoàn toàn yên tâm khi mua sắm tại <strong>Electro</strong> vì chúng tôi cam kết cung cấp các sản phẩm chính hãng với chất lượng tốt nhất và giá cả hợp lý nhất.
                </p>
                <p class="section-description">
                    <strong>Electro</strong> không chỉ là một cửa hàng trực tuyến; chúng tôi là đối tác tin cậy của bạn trong hành trình khám phá công nghệ. Hãy trải nghiệm dịch vụ của chúng tôi và cảm nhận sự khác biệt mà chúng tôi mang lại.
                </p>
                <div class="row">
                    <div class="col-md-4">
                        <div class="about-box">
                            <i class="fa fa-laptop fa-3x"></i>
                            <h4 class="about-title">Sản Phẩm Chất Lượng</h4>
                            <p class="about-text">Chúng tôi cung cấp các sản phẩm máy tính và phụ kiện chính hãng, đảm bảo chất lượng và hiệu suất tối ưu. Mỗi sản phẩm đều được kiểm tra nghiêm ngặt trước khi đến tay bạn.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="about-box">
                            <i class="fa fa-cogs fa-3x"></i>
                            <h4 class="about-title">Dịch Vụ Hỗ Trợ</h4>
                            <p class="about-text">Đội ngũ hỗ trợ khách hàng của chúng tôi sẵn sàng giúp đỡ bạn 24/7, đảm bảo mọi vấn đề của bạn đều được giải quyết nhanh chóng và hiệu quả.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="about-box">
                            <i class="fa fa-dollar fa-3x"></i>
                            <h4 class="about-title">Giá Cả Hợp Lý</h4>
                            <p class="about-text">Chúng tôi cam kết cung cấp các sản phẩm với giá cả cạnh tranh, mang lại giá trị tốt nhất cho bạn mà không làm giảm chất lượng sản phẩm.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /SECTION -->

<!-- FOOTER -->
<footer id="footer">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Về Chúng Tôi</h3>
                        <p>Cảm Ơn !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>141 Nguyễn Văn Bảo</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>+086-22-07-165</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Thể Loại</h3>
                        <ul class="footer-links">
                            <li><a href="#">Ưu đãi lớn</a></li>
                            <li><a href="#">Laptops</a></li>
                            <li><a href="#">Pc Gaming</a></li>
                            <li><a href="#">Pc Văn Phòng</a></li>
                            <li><a href="#">Phụ kiện</a></li>
                        </ul>
                    </div>
                </div>

                <div class="clearfix visible-xs"></div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Thông Tin</h3>
                        <ul class="footer-links">
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Liên hệ chúng tôi </a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Đơn đặt hàng và trả lại</a></li>
                            <li><a href="#">Điều khoản và điều kiện</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Dịch vụ</h3>
                        <ul class="footer-links">
                            <li><a href="#">Tài Khoản Của Tôi</a></li>
                            <li><a href="#">Giỏ Hàng</a></li>
                            <li><a href="#">Danh Sách Yêu Thích</a></li>
                            <li><a href="#">Đơn Hàng</a></li>
                            <li><a href="#">Hỗ Trợ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="bottom-footer" class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                    <span class="copyright">
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Bản quyền ©2024 Mọi quyền được bảo lưu | Mẫu này được thực hiện bởi <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://www.facebook.com/tien.trong.397948/" target="_blank">Trọng Tiến</a>
                    </span>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- /FOOTER -->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>
