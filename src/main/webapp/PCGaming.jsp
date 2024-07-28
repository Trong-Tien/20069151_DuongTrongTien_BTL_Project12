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
     <style>
        .product {
            margin-bottom: 30px;
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }
        .product-img {
            position: relative;
            overflow: hidden;
        }
        .product-img img {
            width: 100%;
            height: auto;
            display: block;
        }
        .product-body {
            padding: 15px;
            text-align: center;
        }
        .product-name {
            font-size: 18px;
            margin: 10px 0;
            color: #333;
            font-weight: 700;
        }
        .product-price {
            font-size: 16px;
            color: #d9534f;
            margin-bottom: 10px;
        }
        .add-to-cart-btn {
            background-color: #5bc0de;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .add-to-cart-btn:hover {
            background-color: #31b0d5;
        }
        .product:hover {
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
    </style>
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
<div class="section">
    <div class="container">
        <div class="row">
            <!-- Product 1 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 1">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 1</h3>
                        <h4 class="product-price">$1,299.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i7, 16GB RAM, 512GB SSD, NVIDIA GTX 1660 Ti</p>
                        <button class="add-to-cart-btn" data-product-id="1">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 2 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 2">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 2</h3>
                        <h4 class="product-price">$1,499.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 7, 16GB RAM, 1TB SSD, NVIDIA RTX 2060</p>
                        <button class="add-to-cart-btn" data-product-id="2">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 3 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 3">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 3</h3>
                        <h4 class="product-price">$1,799.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i9, 32GB RAM, 1TB SSD, NVIDIA RTX 3070</p>
                        <button class="add-to-cart-btn" data-product-id="3">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 4 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 4">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 4</h3>
                        <h4 class="product-price">$1,999.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 9, 32GB RAM, 1TB SSD, NVIDIA RTX 3080</p>
                        <button class="add-to-cart-btn" data-product-id="4">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 5 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 5">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 5</h3>
                        <h4 class="product-price">$1,399.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i7, 16GB RAM, 1TB SSD, NVIDIA GTX 1660 Super</p>
                        <button class="add-to-cart-btn" data-product-id="5">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 6 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 6">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 6</h3>
                        <h4 class="product-price">$1,549.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 5, 16GB RAM, 512GB SSD, NVIDIA RTX 2060 Super</p>
                        <button class="add-to-cart-btn" data-product-id="6">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 7 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 7">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 7</h3>
                        <h4 class="product-price">$1,399.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i7, 16GB RAM, 256GB SSD, NVIDIA GTX 1650</p>
                        <button class="add-to-cart-btn" data-product-id="7">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 8 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 8">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 8</h3>
                        <h4 class="product-price">$1,699.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 7, 16GB RAM, 1TB SSD, NVIDIA RTX 3070</p>
                        <button class="add-to-cart-btn" data-product-id="8">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 9 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 9">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 9</h3>
                        <h4 class="product-price">$1,299.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i5, 8GB RAM, 512GB SSD, NVIDIA GTX 1650</p>
                        <button class="add-to-cart-btn" data-product-id="9">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 10 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 10">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 10</h3>
                        <h4 class="product-price">$1,599.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 7, 32GB RAM, 512GB SSD, NVIDIA RTX 2060</p>
                        <button class="add-to-cart-btn" data-product-id="10">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 11 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 11">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 11</h3>
                        <h4 class="product-price">$1,749.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i9, 16GB RAM, 1TB SSD, NVIDIA RTX 2080</p>
                        <button class="add-to-cart-btn" data-product-id="11">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 12 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 12">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 12</h3>
                        <h4 class="product-price">$1,899.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 9, 32GB RAM, 1TB SSD, NVIDIA RTX 3080</p>
                        <button class="add-to-cart-btn" data-product-id="12">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 13 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 13">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 13</h3>
                        <h4 class="product-price">$1,399.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i7, 16GB RAM, 512GB SSD, NVIDIA GTX 1660</p>
                        <button class="add-to-cart-btn" data-product-id="13">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 14 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming1.png" alt="Gaming PC 14">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 14</h3>
                        <h4 class="product-price">$1,549.00</h4>
                        <p><strong>Cấu hình:</strong> AMD Ryzen 5, 16GB RAM, 1TB SSD, NVIDIA RTX 2060</p>
                        <button class="add-to-cart-btn" data-product-id="14">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
            <!-- Product 15 -->
            <div class="col-md-3">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/pcgaming2.png" alt="Gaming PC 15">
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">Gaming PC 15</h3>
                        <h4 class="product-price">$1,699.00</h4>
                        <p><strong>Cấu hình:</strong> Intel Core i9, 32GB RAM, 1TB SSD, NVIDIA RTX 3070</p>
                        <button class="add-to-cart-btn" data-product-id="15">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /SECTION -->
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
    function showToast() {
        var toast = document.getElementById("toast");
        toast.style.display = "block";
        setTimeout(function() {
            toast.style.display = "none";
        }, 3000); // Thông báo sẽ biến mất sau 3 giây
    }

    document.querySelectorAll('.add-to-cart-btn').forEach(function(button) {
        button.addEventListener('click', function() {
            // Giả lập việc thêm vào giỏ hàng
            // Ở đây bạn có thể thêm mã để thực hiện việc thêm vào giỏ hàng thực tế

            // Hiển thị thông báo
            showToast();
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
