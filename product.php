<?php

include "init.php";
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

</head>

<body class="boxed" style="background:white;">
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
                            <li>/<span>WOMEN’S</span></li>
                        </ul>
                    </div>
                </div>
                <div class="container">
                    <!-- Two columns -->
                    <div class="row row-table">
                        <!-- Left column -->
                        <div class="product-filter-bar">
                            <ul>
                                <li>
                                    <img class="_3S0vR" src="//st.mngbcn.com/static/assets/img/submenu.min.svg"
                                        style="width:20px;" alt="Navigation sidebar">
                                    <label>Giyim</label>
                                    <div class="filter-giyim">
                                        <a>asdasd</a>
                                        <a>asdasd</a>
                                        <a>asdasd</a>
                                        <a>asdasd</a>
                                        <a>asdasd</a>
                                        <a>asdasd</a>
                                    </div>

                                </li>
                                <li>
                                    <img src="https://www.iconfinder.com/data/icons/photo-editing-outline/32/adjust_filter_setting-128.png"
                                        style="width:20px;">
                                    <label>Filitre</label>

                                </li>
                            </ul>

                        </div>
                        <div class="product-main">
                            <ul>
                                <?php
                                $query = "SELECT * FROM products where product_category_id = ? and product_main_id = ?";
                                if (isset($_GET['main_id']) && isset($_GET['sub_id'])) {
                                    $param = [
                                        $_GET['sub_id'],
                                        $_GET['main_id']

                                    ];
                                    $result = $product->getProductList($param, $query);
                                }

                                foreach ($result as $key) {
                                    $name = $key['product_name'];

                                    $price = number_format($key['product_price'], 2);
                                    $picture = $key['product_picture'];
                                ?>

                                <li class="product-list">
                                    <a href="product-detail.php?id=<?php echo $key['product_id']; ?>">
                                        <img class="product product-image _2eK3_"  style="width:360px; height:240px; object-fit:scale-down;"src="<?php echo $picture; ?>"
                                            alt="<?php echo $name; ?>">
                                        <div class="_1ehjN"><span aria-label="İstek listene ekle"
                                                class="icon-favorite Db81q icon-outline-favorites" role="button"
                                                tabindex="0"></span>
                                            <div class="_2y5JN"><span
                                                    class="product-name sg-text-body-small _2uGDp"><?php echo $name; ?>
                                                </span></div>
                                            <div class="prices-container"><span
                                                    aria-label="Güncel fiyat <?php echo $price; ?> TL"
                                                    class="price-sale sg-body-small _2P5os"><?php echo $price; ?>
                                                    TL</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <?php
                                }

                                ?>


                            </ul>

                        </div>
                        <!-- /Left column -->
                        <!-- Center column -->

                    </div>
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