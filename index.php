<?php
session_start();
if (!isset($_SESSION["user"])) {
    header("location:account.php");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Coffee House</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap" rel="stylesheet">
    <script src="main.js"></script>
</head>

<body>
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <a href="index.php"><img src="image/logo_header.png" width="300px"></a>
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="product.php">Products</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="">Contact</a></li>
                        <li><a href="">Account</a></li>
                        <?php
                        include "config.php";
                        // $currentUser = $_SESSION['current_user'];
                        // $a = <?= $currentUser['username']
                        ?>
                        <!-- echo "<li>"."Xin chào,".$a."</li>"; -->
                        <!-- <li><b>Hello,<?= $currentUser['username'] ?></b> </li> -->
                        <li><a href="dangxuat.php">Logout</a> </li>

                    </ul>
                </nav>
                <a href="cart.php"><img src="image/cart.png" width="30px" height="30px"></a>
                <img src="image/menu.png" class="menu-icon" onclick="menutoggle()">

            </div>

        </div>
        <div class="row">
            <div class="col-2">
                <h1>THE COFFEE GỬI BẠN CÀ PHÊ VÀ RẤT NHIỀU ÂN CẦN, CHĂM CHÚT</h1>
                <h7>"Mỗi tách cà phê trên tay bạn đều là thành quả của một hành trình đáng tự hào.<br> Hãy cùng The Coffe House lắng nghe câu chuyện về hành trình từ nông trại đến ly cà phê"</h7>
                <a href="product.php" class="btn">Thưởng Thức Ngay &#8594;</a>
            </div>
            <div class="col-2">
                <img src="image/pixlr-bg-result.png" width="100%">

            </div>

        </div>
    </div>

    <!---------- featured categories -------------->
    <div class="categories">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <img src="image/09032019-hinh-anh-ly-ca-phe-buoi-sang-dep-Serano-2-1.jpg">
                </div>
                <div class="col-3">
                    <img src="image/09032019-hinh-anh-ly-ca-phe-buoi-sang-dep-Serano-8.jpg">
                </div>
                <div class="col-3">
                    <img src="image/09032019-hinh-anh-ly-ca-phe-buoi-sang-dep-Serano-5.jpg">
                </div>

            </div>
        </div>

    </div>

    <!---------- featured product -------------->
    <div class="small-container">
        <h2 class="title"><b>NƯỚC UỐNG NỔI BẬT</b> </h2>
        <div class="row">

            <!--NƯỚC UỐNG NỔI BẬT -->
            <?php
            include 'config.php';
            $sql = "SELECT * FROM product";
            $query = mysqli_query($conn, $sql);
            $row = mysqli_fetch_array($query);
            $products = mysqli_query($conn, "SELECT * FROM `product` WHERE type='NB'");
            while ($row = mysqli_fetch_array($products)) {
            ?>
                <div class="col-4">

                    <a href="product_details.php?id=<?= $row['id'] ?>"><img src="image/<?php echo $row['image']; ?>"></a>
                    <h4><b><a href="product_details.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></b></h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>   
                    </div>
                    <br>
                    <span class="product-price">
                        <p><?= number_format($row['price'], 0, ",", ".") ?> </p>
                    </span>
                </div>

            <?php } ?>
        </div>
        <!-- SẢN PHẨM NỔI BẬT -->
        <h2 class="title"><b>SẢN PHẨM NỔI BẬT</b> </h2>
        <div class="row">

            <!--SẢN PHẨM NỔI BẬT -->
            <?php
            include 'config.php';
            $sql = "SELECT * FROM product";
            $query = mysqli_query($conn, $sql);
            $row = mysqli_fetch_array($query);
            $products = mysqli_query($conn, "SELECT * FROM `product` WHERE type='VD'");
            while ($row = mysqli_fetch_array($products)) {
            ?>
                <div class="col-4">

                    <a href="product_details.php?id=<?= $row['id'] ?>"><img src="image/<?php echo $row['image']; ?>"></a>
                    <h4><b><a href="product_details.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></b></h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>  
                    </div><br>
                    <span class="product-price">
                        <p><?= number_format($row['price'], 0, ",", ".") ?> </p>
                    </span>
                </div>

            <?php } ?>
        </div>

        <!-------- testimonial --------->
        <div class="testimonial">
            <div class="small-container">
                <div class="row">
                    <div class="col-3">
                        <i class="fa fa-quote-left"></i>
                        <p>"Quán rộng, nhân viên đông phục vụ khá nhanh và nhiệt tình. 
                            Cảm thấy không gian đã ấm áp rồi gặp nhân viên đáng yêu như quán nữa 
                            thấy 1 ngày khởi đầu như vậy là tuyệt vời rồi."</p>       
                        <!-- <img src="image/user-1.png"> -->
                        <h3>Bảo Trâm</h3>
                    </div>
                    <div class="col-3">
                        <i class="fa fa-quote-left"></i>
                        <p>"Quán được thiết kế với không gian hiện đại, với rất nhiều loại đồ uống 
                            và thực đơn. Điểm cộng cho quán là có đồ uống và thực đơn phong phú.
                             Tuy nhiên, điểm trừ là quán hơi đông và ồn ào."</p>
                        <!-- <img src="image/user-2.png"> -->
                        <h3>Văn Toàn</h3>
                    </div>
                    <div class="col-3">
                        <i class="fa fa-quote-left"></i>
                        <p>"Quán có rất nhiều Cơ sở trên khắp cả nước. Quán rộng,
                             không gian thoáng mát, thỏa mái thích hợp cho mọi người. 
                             Tuy nhiên,giá của các đồ uống khá cao không phù hợp với một số khách hàng"</p> 
                        <!-- <img src="image/user-3.png"> -->
                        <h3>Khánh Ngân</h3>
                    </div>
                </div>
            </div>
        </div>
        <!------------- brands -------------->
        <div class="brands">
            <div class="small-container">
                <div class="row">
                    <div class="col-5">
                        <img src="image/logo-godrej.png">
                    </div>
                    <div class="col-5">
                        <img src="image/logo-oppo.png">
                    </div>
                    <div class="col-5">
                        <img src="image/logo-coca-cola.png">
                    </div>
                    <div class="col-5">
                        <img src="image/logo-paypal.png">
                    </div>
                    <div class="col-5">
                        <img src="image/logo-philips.png">
                    </div>
                </div>
            </div>
        </div>
        <!----------footer----------->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Đặt hàng: 1800 6936</h3>
                        <p style="text-align:left;color:white;font-size:14px;font-weight:100;">
                        Địa chỉ: Tầng 3-4 Hub Building 195/10E Điện Biên Phủ, P.15, Q.Bình Thạnh, TP.Hồ Chí Minh</p>
                        <div class="app-logo">
                            <!-- <img src="image/play-store.png">
                            <img src="image/app-store.png"> -->
                            <img src="image/1639628541.png">
                        </div>
                    </div>
                    <div class="footer-col-2">
                        <img src="image/coffehouse.png">
                    </div>
                    <div class="footer-col-3">
                        <h3>Giới thiệu</h3>
                        <ul>
                            <li>Về chúng tôi</li><br>
                            <li>Khuyễn mãi</li><br>
                            <li>Cửa hàng</li><br>
                            <li>Tuyển dụng</li>
                        </ul>
                    </div>
                    <div class="footer-col-4">
                        <br><h3>Liên hệ</h3>
                        <ul>
                            <li>Facebook</li><br>
                            <li>Twitter</li><br>
                            <li>Instagram</li><br>
                            <li>Discord</li><br>

                        </ul>
                    </div>
                </div>
                <hr>

            </div>
        </div>
        <!---------js for menu--------->
        <script>
            var MenuItems = document.getElementById("MenuItems");

            MenuItems.style.maxHeight = "0px";

            function menutoggle() {
                if (MenuItems.style.maxHeight == "0px") {
                    MenuItems.style.maxHeight = "200px";
                } else {
                    MenuItems.style.maxHeight = "0px";
                }

            }
        </script>

</body>

</html>