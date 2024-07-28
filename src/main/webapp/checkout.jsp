
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bán Máy Tính</title>  
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">        
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>    
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>        
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>    
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
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
</header>

<div id="header">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- LOGO -->
            <div class="col-md-3">
                <div class="header-logo">
                    <a href="index.jsp" class="logo"> <!-- Thay đổi href tại đây -->
                        <img src="./img/logo.png" alt="TienPC"> <!-- Thay đổi alt tại đây -->
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="header-search">
                    <form action="store.jsp" method="get"> <!-- Thay đổi form action -->
                        <select class="input-select" name="category"> <!-- Thêm name cho select -->
                            <option value="0">Tất cả</option>
                
                        </select>
                        <input class="input" placeholder="Tìm Kiếm" name="search">
                        <button class="search-btn">Tìm</button>
                    </form>
                </div>
            </div>
            <div class="col-md-3 clearfix">
                <div class="header-ctn">
                    <!-- Wishlist -->
                    <div>
                        <a href="#">
                            <i class="fa fa-heart-o"></i>
                            <span> Danh sách yêu thích</span>
                            
                        </a>
                    </div>
                    <div class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Giỏ Hàng</span>
                            
                        </a>
                        <div class="cart-dropdown">
                            
                          
                            <div class="cart-btns">
                                <a href="#">Xem giỏ hàng</a>
                                <a href="checkout.jsp">Thanh Toán  <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /Cart -->

                    <!-- Menu Toogle -->
                    <div class="menu-toggle">
                        <a href="#">
                            <i class="fa fa-bars"></i>
                            <span>Menu</span>
                        </a>
                    </div>
                    <!-- /Menu Toogle -->
                </div>
            </div>
            <!-- /ACCOUNT -->
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</div>
<!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="index.jsp">Home</a></li> <!-- Thay đổi href -->
                <li><a href="store.jsp">Sản Phẩm</a></li> <!-- Thay đổi href -->
                <li><a href="gioithieu.jsp">Giới Thiệu</a></li>
                <li><a href="uudai.jsp">Ưu Đãi</a></li>
                <li><a href="#">Pc Gaming</a></li>
                <li><a href="#">Pc Văn Phòng</a></li>
                <li><a href="#">Phụ Kiện</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">Thanh Toán</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">Thanh Toán</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <div class="col-md-7">
                <!-- Billing Details -->
                <div class="billing-details">
                    <form action="order" method="post"> <!-- Thay đổi ở đây -->
                        <div class="section-title">
                            <h3 class="title">Địa chỉ thanh toán</h3>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="first-name" placeholder="Họ" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="last-name" placeholder="Tên" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="email" name="email" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="address" placeholder="Địa chỉ" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="city" placeholder="Thành phố" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="country" placeholder="Quốc gia" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="zip-code" placeholder="Mã bưu điện" required>
                        </div>
                        <div class="form-group">
                            <input class="input" type="tel" name="tel" placeholder="Điện thoại" required>
                        </div>
                        <div class="form-group">
                            <div class="input-checkbox">
                                <input type="checkbox" id="create-account" name="create-account">
                                <label for="create-account">
                                    <span></span>
                                    Tạo tài khoản?
                                </label>
                                <div class="caption">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                                    <input class="input" type="password" name="password" placeholder="Nhập mật khẩu của bạn">
                                </div>
                            </div>
                        </div>
                        <!-- Shiping Details -->
                        <div class="shiping-details">
                            <div class="section-title">
                                <h3 class="title">Địa chỉ giao hàng</h3>
                            </div>
                            <div class="input-checkbox">
                                <input type="checkbox" id="shiping-address" name="shiping-address">
                                <label for="shiping-address">
                                    <span></span>
                                    Giao đến địa chỉ khác?
                                </label>
                                <div class="caption">
                                    <div class="form-group">
                                        <input class="input" type="text" name="ship-first-name" placeholder="Họ">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="ship-last-name" placeholder="Tên">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="email" name="ship-email" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="ship-address" placeholder="Địa chỉ">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="ship-city" placeholder="Thành phố">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="ship-country" placeholder="Quốc gia">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="ship-zip-code" placeholder="Mã bưu điện">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="tel" name="ship-tel" placeholder="Điện thoại">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Shiping Details -->

                        <!-- Order notes -->
                        <div class="order-notes">
                            <textarea class="input" name="order-notes" placeholder="Ghi chú đơn hàng"></textarea>
                        </div>
                        <!-- /Order notes -->

                        <!-- Order Details -->
                        <div class="order-details">
                            <div class="section-title text-center">
                                <h3 class="title">Đơn hàng của bạn</h3>
                            </div>
                            <div class="order-summary">
                                <div class="order-col">
                                    <div><strong>SẢN PHẨM</strong></div>
                                    <div><strong>TỔNG</strong></div>
                                </div>
                                <div class="order-products">
                                    <div class="order-col">
                                        <div>1x Tên sản phẩm</div>
                                        <div>$980.00</div>
                                    </div>
                                    <div class="order-col">
                                        <div>2x Tên sản phẩm</div>
                                        <div>$980.00</div>
                                    </div>
                                </div>
                                <div class="order-col">
                                    <div>Giao hàng</div>
                                    <div><strong>MIỄN PHÍ</strong></div>
                                </div>
                                <div class="order-col">
                                    <div><strong>TỔNG CỘNG</strong></div>
                                    <div><strong class="order-total">$2940.00</strong></div>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-1" value="direct-bank-transfer" required>
                                    <label for="payment-1">
                                        <span></span>
                                        Chuyển khoản trực tiếp
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-2" value="cheque">
                                    <label for="payment-2">
                                        <span></span>
                                        Thanh toán bằng séc
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <div class="input-radio">
                                    <input type="radio" name="payment" id="payment-3" value="paypal">
                                    <label for="payment-3">
                                        <span></span>
                                        Hệ thống Paypal
                                    </label>
                                    <div class="caption">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="input-checkbox">
                                <input type="checkbox" id="terms" name="terms" required>
                                <label for="terms">
                                    <span></span>
                                    Tôi đã đọc và chấp nhận <a href="blank.jsp">điều khoản & điều kiện</a>
                                </label>
                            </div>
                            <button type="submit" class="primary-btn order-submit">Đặt hàng</button>
                        </div>
                        <!-- /Order Details -->
                    </form>
                </div>
                <!-- /Billing Details -->
            </div>

        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- NEWSLETTER -->
<div id="newsletter" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <div class="newsletter">
                    <p>Đăng ký nhận <strong>BẢN TIN</strong></p>
                    <form>
                        <input class="input" type="email" placeholder="Nhập Email của bạn">
                        <button class="newsletter-btn"><i class="fa fa-envelope"></i> Đăng ký</button>
                    </form>
                    <ul class="newsletter-follow">
                        <li>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /NEWSLETTER -->

		<!-- FOOTER -->
	<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
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
					<!-- row -->
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
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
