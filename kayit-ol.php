<?php 
include "init.php";

if(isset($_POST['email'])){
    
    //print_r($_POST);
    if($_POST['password']!=$_POST['confirm_password']){
        header("location:kayit-ol.php?durum=no&message=Şifreler uyuşmuyor");
        exit;
    }
    
    $res=$users->setting_user([$_POST['email']],"SELECT * FROM users where user_mail=?");
  //  echo $res;
        if(count($res)!=0){
            header("location:kayit-ol.php?durum=no&message=Mail adresi zaten kullanılıyor.");
            exit;
        }
        
    
    $param=[
            $_POST['first_name'],
            $_POST['last_name'],
            $_POST['email'],
            $_POST['password']
        ];
        $is_added=$users->setting_user($param,"INSERT INTO users set user_first_name=?,user_last_name=?,user_mail=?,user_password=?");
        print_r($is_added);
       
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SEIKO eCommerce HTML 5 Template</title>
    <meta name="author" content="BigSteps">
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Vendor -->
    <link href="js/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="js/vendor/slick/slick.css" rel="stylesheet">
    <link href="js/vendor/swiper/swiper.min.css" rel="stylesheet">
    <link href="js/vendor/magnificpopup/dist/magnific-popup.css" rel="stylesheet">
    <link href="js/vendor/nouislider/nouislider.css" rel="stylesheet">
    <link href="js/vendor/darktooltip/dist/darktooltip.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">

    <!-- Custom -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/mycss.css" rel="stylesheet">
    <link href="css/megamenu.css" rel="stylesheet">

    <!-- Color Schemes -->
    <!-- your style-color.css here  -->


    <!-- Icon Font -->
    <link href="fonts/icomoon-reg/style.css" rel="stylesheet">

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css?family=Oswald:300,400,700|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i"
        rel="stylesheet">
    <style>
    .kadin-ul a {
        color: black;
    }
    </style>

</head>

<body class="boxed">
    <!-- Loader -->
    <div id="loader-wrapper">
        <div class="cube-wrapper">
            <div class="cube-folding">
                <span class="leaf1"></span>
                <span class="leaf2"></span>
                <span class="leaf3"></span>
                <span class="leaf4"></span>
            </div>
        </div>
    </div>
    <!-- /Loader -->
    <div class="fixed-btns">
        <!-- Back To Top -->
        <a href="#" class="top-fixed-btn back-to-top"><i class="icon icon-arrow-up"></i></a>
        <!-- /Back To Top -->
    </div>
    <div id="wrapper">
        <!-- Page -->
        <div class="page-wrapper">
            <!-- Header -->

            <!-- Header Top Row -->
            <?php include "./components/header.php"; ?>
            <!-- /Header Top Row -->

            <!-- /Header -->
            <!-- Sidebar -->

            <!-- /Sidebar -->
            <!-- Page Content -->
            <main class="page-main">
                <div class="block">
                    <div class="container">
                        <ul class="breadcrumbs">
                            <li><a href="index.html"><i class="icon icon-home"></i></a></li>
                            <li>/<span></span></li>
                        </ul>
                    </div>
                </div>
                
                <div class="container">
                    <!-- Two columns -->
                    <div class="row row-table" style="justify-content:space-evenly;">
                        <!-- Left column -->
                    <div class="signup-form">
    <form action="kayit-ol.php" method="post">
		<h2>Kayıt Ol</h2>
		<div class="col-md-12">
                        <div class="alert" style="">
                            <h3 style="text-transform:none; color:red;">
                            <?php
                                if(isset($_GET['message'])&& !empty($_GET['message'])){
                                    
                                    echo $_GET['message'];
                                }
                            ?>
                            </h3>
                        </div>
                    
                    
                </div>
	
		<hr>
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6"><input type="text" class="form-control" name="first_name" placeholder="Ad" required="required"></div>
				<div class="col-xs-6"><input type="text" class="form-control" name="last_name" placeholder="Soyad" required="required"></div>
			</div>        	
        </div>
        <div class="form-group">
        	<input type="email" class="form-control" name="email" placeholder="Email" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Şifre" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="confirm_password" placeholder="Şifre Tekrar" required="required">
        </div>        
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"><a href="#">Kullanım koşulları</a> ve <a href="#">gizlilik politikasını</a> kabul ediyorum.</label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">Kayıt Ol</button>
        </div>
    </form>
	<div class="hint-text">Zaten hesabın var mı? <a href="giris.php">Giriş Yap</a></div>
</div>



                        <!-- /Left column -->
                        <!-- Center column -->

                        <!-- /Center column -->
                    </div>
                    <div class="ymax"></div>
                    <!-- /Two columns -->
                </div>
            </main>
            <!-- /Page Content -->
            <!-- Footer -->
            <?php include "components/footer.php"; ?>
            <!-- /Footer -->
        </div>
        <!-- Page Content -->
    </div>
    <!-- ProductStack -->
    <div class="productStack disable hide_on_scroll"> <a href="#" class="toggleStack"><i class="icon icon-cart"></i> (6)
            items</a>
        <div class="productstack-content">
            <div class="products-list-wrapper">
                <ul class="products-list">
                    <li>
                        <a href="product.html" title="Product Name Long Name"><img class="product-image-photo"
                                src="images/products/product-10.jpg" alt=""></a> <span class="item-qty">3</span>
                        <div class="actions"> <a href="#" class="action edit" title="Edit item"><i
                                    class="icon icon-pencil"></i></a> <a class="action delete" href="#"
                                title="Delete item"><i class="icon icon-trash-alt"></i></a>
                            <div class="edit-qty">
                                <input type="number" value="3">
                                <button type="button" class="btn">Apply</button>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="product.html" title="Product Name Long Name"><img class="product-image-photo"
                                src="images/products/product-11.jpg" alt=""></a> <span class="item-qty">3</span>
                        <div class="actions"> <a class="action edit" href="#" title="Edit item"><i
                                    class="icon icon-pencil"></i></a> <a class="action delete" href="#"
                                title="Delete item"><i class="icon icon-trash-alt"></i></a>
                            <div class="edit-qty">
                                <input type="number" value="3">
                                <button type="button" class="btn">Apply</button>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="product.html" title="Product Name Long Name"><img class="product-image-photo"
                                src="images/products/product-12.jpg" alt=""></a> <span class="item-qty">3</span>
                        <div class="actions"> <a class="action edit" href="#" title="Edit item"><i
                                    class="icon icon-pencil"></i></a> <a class="action delete" href="#"
                                title="Delete item"><i class="icon icon-trash-alt"></i></a>
                            <div class="edit-qty">
                                <input type="number" value="3">
                                <button type="button" class="btn">Apply</button>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="product.html" title="Product Name Long Name"><img class="product-image-photo"
                                src="images/products/product-13.jpg" alt=""></a> <span class="item-qty">3</span>
                        <div class="actions"> <a class="action edit" href="#" title="Edit item"><i
                                    class="icon icon-pencil"></i></a> <a class="action delete" href="#"
                                title="Delete item"><i class="icon icon-trash-alt"></i></a>
                            <div class="edit-qty">
                                <input type="number" value="3">
                                <button type="button" class="btn">Apply</button>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="product.html" title="Product Name Long Name"><img class="product-image-photo"
                                src="images/products/product-14.jpg" alt=""></a> <span class="item-qty">3</span>
                        <div class="actions"> <a class="action edit" href="#" title="Edit item"><i
                                    class="icon icon-pencil"></i></a> <a class="action delete" href="#"
                                title="Delete item"><i class="icon icon-trash-alt"></i></a>
                            <div class="edit-qty">
                                <input type="number" value="3">
                                <button type="button" class="btn">Apply</button>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="product.html" title="Product Name Long Name"><img class="product-image-photo"
                                src="images/products/product-15.jpg" alt=""></a> <span class="item-qty">3</span>
                        <div class="actions"> <a class="action edit" href="#" title="Edit item"><i
                                    class="icon icon-pencil"></i></a> <a class="action delete" href="#"
                                title="Delete item"><i class="icon icon-trash-alt"></i></a>
                            <div class="edit-qty">
                                <input type="number" value="3">
                                <button type="button" class="btn">Apply</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="action-cart">
                <button type="button" class="btn" title="Checkout"> <span>Checkout</span> </button>
                <button type="button" class="btn" title="Go to Cart"> <span>Go to Cart</span> </button>
            </div>
            <div class="total-cart">
                <div class="items-total">Items <span class="count">6</span></div>
                <div class="subtotal">Subtotal <span class="price">2.150</span></div>
            </div>
        </div>
    </div>
    <!-- /ProductStack -->

    <!-- Modal Quick View -->
    <div class="modal quick-view zoom" id="quickView">
        <div class="modal-dialog">
            <div class="modalLoader-wrapper">
                <div class="modalLoader bg-striped"></div>
            </div>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">&#10006;</button>
            </div>
            <div class="modal-content">
                <iframe></iframe>
            </div>
        </div>
    </div>
    <!-- /Modal Quick View -->

    <!-- jQuery Scripts  -->
    <script src="js/vendor/jquery/jquery.js"></script>
    <script src="js/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="js/vendor/swiper/swiper.min.js"></script>
    <script src="js/vendor/slick/slick.min.js"></script>
    <script src="js/vendor/parallax/parallax.js"></script>
    <script src="js/vendor/isotope/isotope.pkgd.min.js"></script>
    <script src="js/vendor/magnificpopup/dist/jquery.magnific-popup.js"></script>
    <script src="js/vendor/countdown/jquery.countdown.min.js"></script>
    <script src="js/vendor/nouislider/nouislider.min.js"></script>
    <script src="js/vendor/ez-plus/jquery.ez-plus.js"></script>
    <script src="js/vendor/tocca/tocca.min.js"></script>
    <script src="js/vendor/bootstrap-tabcollapse/bootstrap-tabcollapse.js"></script>
    <script src="js/vendor/scrollLock/jquery-scrollLock.min.js"></script>
    <script src="js/vendor/darktooltip/dist/jquery.darktooltip.js"></script>
    <script src="js/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="js/vendor/instafeed/instafeed.min.js"></script>
    <script src="js/megamenu.min.js"></script>
    <script src="js/app.js"></script>

</body>

</html>