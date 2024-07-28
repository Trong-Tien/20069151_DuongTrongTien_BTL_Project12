<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Giỏ Hàng - Bán Máy Tính</title>  
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

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
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
                        <!-- Wishlist -->
                        <div>
                            <a href="#">
                                <i class="fa fa-heart-o"></i>
                                <span>Your Danh sách yêu thích</span>
                                <div class="qty">2</div>
                            </a>
                        </div>
                        <!-- Cart -->
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Giỏ Hàng</span>
                                <div class="qty"><c:out value="${cart.size()}"/></div>
                            </a>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <c:forEach var="item" items="${cart}">
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="path-to-image" alt="Product Image"> <!-- Change this -->
                                            </div>
                                            <div class="product-body">
                                                <h3 class="product-name"><a href="#">${item.name}</a></h3>
                                                <h4 class="product-price"><span class="qty">${item.quantity}x</span>${item.price}</h4>
                                            </div>
                                            <button class="delete"><i class="fa fa-close"></i></button>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="cart-summary">
                                    <small><c:out value="${cart.size()}"/> Item(s) selected</small>
                                    <h5>SUBTOTAL: <c:out value="${cartTotal}"/></h5> <!-- Add cartTotal variable in servlet -->
                                </div>
                                <div class="cart-btns">
                                    <a href="cart.jsp">Xem giỏ hàng</a>
                                    <a href="checkout.jsp">Thanh Toán <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- Menu Toggle -->
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

<!-- NAVIGATION -->
<nav id="navigation">
    <div class="container">
        <div id="responsive-nav">
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="product.jsp">Sản Phẩm</a></li>
                <li><a href="#">Thể loại</a></li>
                <li><a href="#">Ưu Đãi</a></li>
                <li><a href="#">Pc Gaming</a></li>
                <li><a href="#">Pc Văn Phòng</a></li>
                <li><a href="#">Phụ Kiện</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- /NAVIGATION -->

<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Giỏ Hàng</h3>
                <ul class="breadcrumb-tree">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Giỏ Hàng</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<<!-- SECTION -->
<div class="section">
    <div class="container">
        <h2>Giỏ Hàng</h2>
        <div id="cart-items">
            <c:choose>
                <c:when test="${not empty sessionScope.cart}">
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <div class="cart-item">
                            <div class="cart-item-img">
                                <img src="${item.image}" alt="${item.name}">
                            </div>
                            <div class="cart-item-info">
                                <h3 class="cart-item-name">${item.name}</h3>
                                <p class="cart-item-price">${item.price}</p>
                                <p class="cart-item-quantity">Số lượng: ${item.quantity}</p>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="cart-summary">
                        <h5>Tổng tiền: <c:out value="${sessionScope.cartTotal}"/></h5> <!-- Add cartTotal variable in servlet -->
                    </div>
                </c:when>
                <c:otherwise>
                    <p>Giỏ hàng của bạn hiện tại đang trống.</p>
                </c:otherwise>
            </c:choose>
        </div>
        <a href="checkout.jsp" class="btn btn-primary">Thanh toán</a>
    </div>
</div>
<!-- /SECTION -->
<!-- /SECTION -->

<!-- NEWSLETTER -->
<div id="newsletter" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="newsletter">
                    <p>Nhận tin mới nhất từ chúng tôi</p>
                    <form>
                        <input class="input" type="email" placeholder="Nhập email của bạn">
                        <button class="newsletter-btn">Đăng ký</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /NEWSLETTER -->

<!-- FOOTER -->
<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="footer-logo">
                    <a href="#" class="logo">
                        <img src="./img/logo.png" alt="TienPC">
                    </a>
                </div>
                <div class="footer-payment">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <div class="row">
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Liên hệ</h3>
                                <ul class="footer-links">
                                    <li><a href="#"><i class="fa fa-map-marker"></i> 141 Nguyễn Văn Bảo</a></li>
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
    // Lấy giỏ hàng từ localStorage
    function getCart() {
        let cart = localStorage.getItem('cart');
        return cart ? JSON.parse(cart) : {};
    }

    // Hiển thị sản phẩm trong giỏ hàng
    function displayCart() {
        let cart = getCart();
        let cartItemsDiv = document.getElementById('cart-items');
        cartItemsDiv.innerHTML = '';

        if (Object.keys(cart).length === 0) {
            cartItemsDiv.innerHTML = '<p>Giỏ hàng của bạn hiện tại đang trống.</p>';
            return;
        }

        // Dữ liệu sản phẩm (thay thế bằng dữ liệu thực tế từ server hoặc API)
        let products = {
            '1': { name: 'Gaming PC 1', price: '$1,299.00', image: './img/pcgaming2.png' },
            '2': { name: 'Gaming PC 2', price: '$1,499.00', image: './img/pcgaming1.png' },
            '3': { name: 'Gaming PC 3', price: '$1,799.00', image: './img/pcgaming2.png' },
            '4': { name: 'Gaming PC 4', price: '$1,999.00', image: './img/pcgaming1.png' },
            '5': { name: 'Gaming PC 5', price: '$1,399.00', image: './img/pcgaming2.png' },
            '6': { name: 'Gaming PC 6', price: '$1,549.00', image: './img/pcgaming1.png' },
            '7': { name: 'Gaming PC 7', price: '$1,399.00', image: './img/pcgaming2.png' },
            '8': { name: 'Gaming PC 8', price: '$1,699.00', image: './img/pcgaming1.png' },
            '9': { name: 'Gaming PC 9', price: '$1,299.00', image: './img/pcgaming2.png' },
            '10': { name: 'Gaming PC 10', price: '$1,599.00', image: './img/pcgaming1.png' },
            '11': { name: 'Gaming PC 11', price: '$1,749.00', image: './img/pcgaming2.png' },
            '12': { name: 'Gaming PC 12', price: '$1,899.00', image: './img/pcgaming1.png' },
            '13': { name: 'Gaming PC 13', price: '$1,399.00', image: './img/pcgaming2.png' },
            '14': { name: 'Gaming PC 14', price: '$1,549.00', image: './img/pcgaming1.png' },
            '15': { name: 'Gaming PC 15', price: '$1,699.00', image: './img/pcgaming2.png' },
        };

        // Hiển thị các sản phẩm trong giỏ hàng
        for (let productId in cart) {
            let product = products[productId];
            if (product) {
                cartItemsDiv.innerHTML += `
                    <div class="cart-item">
                        <div class="cart-item-img">
                            <img src="${product.image}" alt="${product.name}">
                        </div>
                        <div class="cart-item-info">
                            <h3 class="cart-item-name">${product.name}</h3>
                            <p class="cart-item-price">${product.price}</p>
                            <p class="cart-item-quantity">Số lượng: ${cart[productId]}</p>
                        </div>
                    </div>
                `;
            }
        }
    }

    // Xử lý sự kiện khi trang được tải
    document.addEventListener('DOMContentLoaded', function() {
        displayCart();
    });
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>
