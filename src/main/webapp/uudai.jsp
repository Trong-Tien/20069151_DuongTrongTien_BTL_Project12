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
                <li><a href="PCGaming.jsp">Pc Gaming</a></li>
                <li><a href="PCVanPhong.jsp">Pc Văn Phòng</a></li>
                <li><a href="phukien.jsp">Phụ Kiện</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div id="offers" class="section">
    <div class="container">
        <div class="row">
            <!-- Sản phẩm 1 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product04.png" alt="Laptop ASUS VivoBook" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop ASUS VivoBook</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">15%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">15,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">12,750,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="1">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 2 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product02.png" alt="Laptop Dell XPS 13" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Dell XPS 13</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">20%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">22,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">17,600,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="2">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 3 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product01.png" alt="Laptop HP Pavilion" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop HP Pavilion</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">10%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">18,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">16,200,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="3">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 4 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product09.png" alt="Laptop Lenovo ThinkPad" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Lenovo ThinkPad</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">12%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">19,500,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">17,160,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="4">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 5 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product08.png" alt="Laptop Acer Aspire" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Acer Aspire</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">18%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">14,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">11,480,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="5">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 6 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product07.png" alt="Laptop MSI Gaming" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop MSI Gaming</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">25%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">30,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">22,500,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="6">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 7 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product06.png" alt="Laptop Razer Blade" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Razer Blade</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">22%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">26,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">20,280,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="7">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 8 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product05.png" alt="Laptop Microsoft Surface" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Microsoft Surface</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">14%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">22,500,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">19,350,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="8">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 9 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product04.png" alt="Laptop Huawei MateBook" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Huawei MateBook</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">16%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">20,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">16,800,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="9">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 10 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product03.png" alt="Laptop Samsung Galaxy Book" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Samsung Galaxy Book</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">8%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">18,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">16,560,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="10">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 11 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product02.png" alt="Laptop LG Gram" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop LG Gram</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">19%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">24,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">19,440,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="11">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 12 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product01.png" alt="Laptop Alienware" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Alienware</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">28%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">35,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">25,200,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="12">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 13 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product09.png" alt="Laptop ROG Strix" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop ROG Strix</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">21%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">28,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">22,140,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="13">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 14 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product08.png" alt="Laptop Gigabyte AORUS" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Gigabyte AORUS</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">17%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">27,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">22,410,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="14">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 15 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product07.png" alt="Laptop Omen by HP" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Omen by HP</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">13%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">20,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">17,400,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="15">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 16 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product06.png" alt="Laptop Asus TUF" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Asus TUF</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">11%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">16,500,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">14,685,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="16">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 17 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product05.png" alt="Laptop Surface Laptop" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Surface Laptop</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">9%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">19,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">17,290,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="17">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 18 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product03.png" alt="Laptop Apple MacBook Pro" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Apple MacBook Pro</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">23%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">40,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">30,800,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="18">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 19 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product02.png" alt="Laptop Apple MacBook Air" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Apple MacBook Air</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">14%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">25,000,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">21,500,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="19">Mua Ngay</a>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm 20 -->
            <div class="col-md-3">
                <div class="offer-box">
                    <img src="./img/product01.png" alt="Laptop Xiaomi Mi Notebook" class="offer-img">
                    <div class="offer-info">
                        <h4 class="offer-title">Laptop Xiaomi Mi Notebook</h4>
                        <p class="offer-discount">Giảm giá: <span class="discount-percentage">26%</span></p>
                        <p class="offer-old-price">Giá cũ: <span class="old-price">13,500,000 VNĐ</span></p>
                        <p class="offer-new-price">Giá sau giảm: <span class="new-price">9,990,000 VNĐ</span></p>
                        <a href="#" class="offer-btn" data-id="20">Mua Ngay</a>
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

<script>
// Giả lập giỏ hàng
let cart = [];

// Hàm để thêm sản phẩm vào giỏ hàng
function addToCart(productId) {
    // Đây là nơi bạn sẽ thực hiện logic thêm sản phẩm vào giỏ hàng thực tế
    cart.push(productId);
    console.log("Sản phẩm với ID", productId, "đã được thêm vào giỏ hàng.");
}

// Xử lý sự kiện khi nhấp vào nút "Mua Ngay"
document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.offer-btn').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault(); // Ngăn không để link thực hiện hành động mặc định

            const productId = this.getAttribute('data-id');
            addToCart(productId);

            // Điều hướng đến trang thanh toán
            window.location.href = 'checkout.jsp';
        });
    });
});
</script>
<script>
    function addToCart(productId, productName, productPrice) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AddToCartServlet", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                showToast();
            }
        };
        xhr.send("id=" + productId + "&name=" + productName + "&price=" + productPrice);
    }

    document.querySelectorAll('.add-to-cart-btn').forEach(function(button) {
        button.addEventListener('click', function() {
            var productId = this.dataset.id;
            var productName = this.dataset.name;
            var productPrice = this.dataset.price;
            addToCart(productId, productName, productPrice);
        });
    });
</script>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<div id="toast" style="position: fixed; top: 20px; right: 20px; z-index: 1000; display: none; background-color: #5bc0de; color: white; padding: 10px 20px; border-radius: 5px;">Thêm vào giỏ hàng thành công!</div>

</body>
</html>
