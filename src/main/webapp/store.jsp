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
<!-- Cart Icon -->
<div class="header-cart">
  <a href="cart.html">
    <i class="fa fa-shopping-cart"></i>
    <span id="cart-count">0</span>
  </a>
</div>

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
<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">Sản Phẩm</a></li>
							<li><a href="#">Loại</a></li>
							<li class="active">Tai Nghe (227,490 Results)</li>
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
					<!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Loại</h3>
							<div class="checkbox-filter">

								<div class="input-checkbox">
									<input type="checkbox" id="category-1">
									<label for="category-1">
										<span></span>
										Laptops
										<small>(120)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-2">
									<label for="category-2">
										<span></span>
										Điện Thoại
										<small>(740)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-3">
									<label for="category-3">
										<span></span>
										Máy Ảnh 
										<small>(1450)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-4">
									<label for="category-4">
										<span></span>
										Loại
										<small>(578)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-5">
									<label for="category-5">
										<span></span>
										Laptops
										<small>(120)</small>
									</label>
								</div>

								<div class="input-checkbox">
									<input type="checkbox" id="category-6">
									<label for="category-6">
										<span></span>
										Điện Thoại
										<small>(740)</small>
									</label>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Giá</h3>
							<div class="price-filter">
								<div id="price-slider"></div>
								<div class="input-number price-min">
									<input id="price-min" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
								<span>-</span>
								<div class="input-number price-max">
									<input id="price-max" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Thương Hiệu</h3>
							<div class="checkbox-filter">
								<div class="input-checkbox">
									<input type="checkbox" id="brand-1">
									<label for="brand-1">
										<span></span>
										SAMSUNG
										<small>(578)</small>
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-2">
									<label for="brand-2">
										<span></span>
										LG
										<small>(125)</small>
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-3">
									<label for="brand-3">
										<span></span>
										SONY
										<small>(755)</small>
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-4">
									<label for="brand-4">
										<span></span>
										SAMSUNG
										<small>(578)</small>
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-5">
									<label for="brand-5">
										<span></span>
										LG
										<small>(125)</small>
									</label>
								</div>
								<div class="input-checkbox">
									<input type="checkbox" id="brand-6">
									<label for="brand-6">
										<span></span>
										SONY
										<small>(755)</small>
									</label>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Bán Chạy Nhất</h3>
							<div class="product-widget">
								<div class="product-img">
									<img src="./img/product01.png" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Loại</p>
									<h3 class="product-name"><a href="#">LapTop</a></h3>
									<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
								</div>
							</div>

							<div class="product-widget">
								<div class="product-img">
									<img src="./img/product02.png" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Loại</p>
									<h3 class="product-name"><a href="#">LapTop</a></h3>
									<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
								</div>
							</div>

							<div class="product-widget">
								<div class="product-img">
									<img src="./img/product03.png" alt="">
								</div>
								<div class="product-body">
									<p class="product-category">Loại</p>
									<h3 class="product-name"><a href="#">LapTop</a></h3>
									<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->
					</div>
					<!-- /ASIDE -->

					<!-- STORE -->
					<div id="store" class="col-md-9">
						<!-- store top filter -->
						<div class="store-filter clearfix">
							<div class="store-sort">
								<label>
									Sắp xếp theo:
									<select class="input-select">
										<option value="0">Phổ Biến</option>
										<option value="1">Chức vụ</option>
									</select>
								</label>

								<label>
									Xem:
									<select class="input-select">
										<option value="0">20</option>
										<option value="1">50</option>
									</select>
								</label>
							</div>
							<ul class="store-grid">
								<li class="active"><i class="fa fa-th"></i></li>
								<li><a href="#"><i class="fa fa-th-list"></i></a></li>
							</ul>
						</div>
						<!-- /store top filter -->

						<!-- store products -->
						<div class="row">
							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product01.png" alt="">
										<div class="product-label">
											<span class="sale">-30%</span>
											<span class="new">Mới</span>
										</div>
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
										<div class="product-label">
											<span class="new">NEW</span>
										</div>
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										 <div class="add-to-cart">
                            <button class="add-to-cart-btn" data-product-id="1"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
                        </div>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-o"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<div class="clearfix visible-sm visible-xs"></div>

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
										</div>
									<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<div class="clearfix visible-lg visible-md"></div>

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<div class="clearfix visible-sm visible-xs"></div>

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product05.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product06.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-o"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product07.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product08.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->

							<div class="clearfix visible-sm visible-xs"></div>

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="./img/product09.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Loại</p>
										<h3 class="product-name"><a href="#">LapTop</a></h3>
										<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
										<div class="product-rating">
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm vào danh sách yêu thích</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Lướt Qua</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
								</div>
							</div>
							<!-- /product -->
						</div>
						<!-- /store products -->

						<!-- store bottom filter -->
						<div class="store-filter clearfix">
							<span class="store-qty">Hiển thị 20-100 sản phẩm</span>
							<ul class="store-pagination">
								<li class="active">1</li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
							</ul>
						</div>
						<!-- /store bottom filter -->
					</div>
					<!-- /STORE -->
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
							<p>Đăng ký cho <strong>BẢN TIN</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
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
		<script>
  // Giỏ hàng
  let cart = [];

  // Hàm hiển thị thông báo
  function showNotification() {
    const notification = document.getElementById('notification');
    notification.style.display = 'block';
    setTimeout(() => {
      notification.style.display = 'none';
    }, 3000);
  }

  // Hàm thêm sản phẩm vào giỏ hàng
  function addToCart(product) {
    cart.push(product);
    showNotification();
    updateCartCount();
  }

  // Hàm cập nhật số lượng sản phẩm trong giỏ hàng
  function updateCartCount() {
    const cartCount = document.getElementById('cart-count');
    cartCount.textContent = cart.length;
  }

  // Gắn sự kiện cho các nút thêm vào giỏ hàng
  document.querySelectorAll('.add-to-cart-btn').forEach(button => {
    button.addEventListener('click', (e) => {
      const product = {
        name: e.target.closest('.product').querySelector('.product-name a').textContent,
        price: e.target.closest('.product').querySelector('.product-price').textContent
      };
      addToCart(product);
    });
  });
</script>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<div id="notification" class="notification" style="display:none;">
  Sản phẩm đã được thêm vào giỏ hàng!
</div>
<style>
    .notification {
      position: fixed;
      top: 10px;
      right: 10px;
      background-color: #28a745;
      color: #fff;
      padding: 10px;
      border-radius: 5px;
      z-index: 1000;
    }
  </style>
	</body>
</html>
