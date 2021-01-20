<?php
include "init.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Marsel</title>
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
    <link rel="stylesheet" type="text/css" href="slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css?family=Oswald:300,400,700|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i"
        rel="stylesheet">
    <style>
    .myClass img {
        width: 550px;
        object-fit: scale-down;
        max-height: 550px;
        border: solid 1px #d9d9d9;
        padding: 10px 20px;

    }

    .myClass {
        max-width: 550px;
        overflow: hidden;
        max-height: 550px;

    }

    .product-image {
        width: 70%;
        max-height: 550px;
        display: flex;
    }

    .slider-nav .slick-slide {
        width: 60% !important;
        margin: 5px;
        padding: 5px;
        border: 1px solid #d9d9d9;
    }

    .slick-slide {
        width: 100%;
    }

    .slider-nav .slick-track {
        display: flex;
        flex-direction: column;
        width: 100%;


    }

    .product-detail__info__top,
    .product-combine-main__info__top {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .product-detail__info__bottom__accordion--title,
    .product-combine-main__info__bottom__accordion--title {
        display: flex;
        justify-content: space-between;
        align-items: center;
        cursor: pointer;
        font-family: ProximaNova;
    }

    .product-detail .product-detail__info__top__season,
    .product-combine-main .product-detail__info__top__season {
        font-family: Bodoni;
        font-size: 16px;
        line-height: 1.38;
        letter-spacing: 1.6px;
        color: #c9a970;
        margin-bottom: 11px;
    }

    .product-detail__info__mid__sizes__title,
    .product-combine-main__info__mid__sizes__title {
        display: flex;
        justify-content: space-between;
    }

    .product-detail span {
        color: #7a7a7a;
        line-height: 2.5;
        letter-spacing: 1.2px;
        font-size: 12px;
    }

    .beden {
        display: flex;
        padding: 15px;
        margin: 5px;
        justify-content: center;
    }

    .beden .sizes {
        color: black;
        cursor: pointer;
        padding: 0 12px;
        border: 1px solid #000;
        height: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 5px;
    }

    .product-title {
        font-size: 34px;
        color: #000;
        font-weight: 500;
        text-align: center;
    }

    .product-price {
        color: #000;
        font-size: 16px;
        font-weight: 100;
        margin: auto;
    }

    .col-md-12 {
        text-align: center;
    }

    .sizes:hover {
        color: white;
        background-color: #000;
    }







    .product-detail__info__bottom__accordion--item,
    .product-combine-main__info__bottom__accordion--item {
        border-top: 1px solid #ddd;
        padding-top: 15px;
        padding-bottom: 15px;
    }

    .product-detail__info__bottom__accordion--title,
    .product-combine-main__info__bottom__accordion--title {
        display: flex;
        justify-content: space-between;
        align-items: center;
        cursor: pointer;
        font-family: ProximaNova;
    }

    .product-detail__info__bottom__accordion--title--span,
    .product-combine-main__info__bottom__accordion--title--span {
        color: #1d1d1d !important;
        font-size: 14px !important;
        line-height: 1 !important;
        letter-spacing: 1.2px;
        font-weight: 100;
    }

    .accordion--details ul li span {
        font-weight: 700;
        color: #1d1d1d;
        line-height: 18px;
        letter-spacing: .96px;
    }

    .accordion--details ul li {
        font-size: 12px;
        color: #1d1d1d;
        letter-spacing: .96px;
        line-height: 18px;
    }

    .accordion--details ul li ul {
        list-style-type: circle;
    }

    ul {
        list-style-type: none;
        text-align: start;
    }

    .accordion--details {
        display: none;
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
            <?php
            if (isset($_GET['id'])) {
                $product_id = $_GET['id'];
            }

            ?>
            <!-- /Sidebar -->
            <!-- Page Content -->
            <main class="page-main">
                <div class="block">
                    <div class="container">
                        <ul class="breadcrumbs">
                            <li><a href="index.html"><i class="icon icon-home"></i></a></li>

                        </ul>
                    </div>
                </div>
                <div class="container">
                    <!-- Two columns -->
                    <div class="row row-table" style="display:flex; margin-bottom:15%;">
                        <!-- Left column -->
                        <div style="width:70%; display:flex;">
                            <div style="width:20%; " class="zoomResim">
                                <div class="slider-nav">
                                    <?php
                                    //ürün genel özellikleri
                                    $result = $product->getProduct($product_id);
                                    $name = $result['product_name'];
                                    $price = number_format($result['product_price'], 2);
                                    $product_code = $result['product_code'];
                                    $description = $result['product_description'];

                                    //resimler
                                    $getProductAllImg = $product->getImages($product_id);
                                    ?>

                                    <?php
                                    foreach ($getProductAllImg as $key) {
                                    ?>
                                    <img class="img-responsive" style=" width: 100%; margin:5;"
                                        src="<?php echo $key['image_url']; ?>">
                                    <?php

                                    }
                                    ?>



                                </div>
                            </div>
                            <div class="product-image">


                                <div style="width:80%;">
                                    <div class="myClass" id="ex1">
                                        <?php
                                        foreach ($getProductAllImg as $key) {
                                        ?>
                                        <img class="img-responsive" style=" width: 100%; margin:5;"
                                            src="<?php echo $key['image_url']; ?>">
                                        <?php

                                        }
                                        ?>

                                    </div>

                                </div>
                            </div>
                        </div>
                        <div style="width:30%">
                            <div class="col-md-12" style="margin-bottom:15px;">
                                <h3 class="product-title" style="font-size:24px;"><?php echo $name; ?></h3>
                                <label class="product-price" style="font-size:21px;">₺ <?php echo $price; ?> </label>
                            </div>
                            <div style="width:90%; margin:auto;">
                                <div style="margin:auto;text-align:center;margin:15px;">
                                    <?php
                                    $other = $product->getProductCode($product_code);
                                    // print_r($other);
                                    if (empty($other["product_picture"])) {
                                        foreach ($other as $key) {
                                            $image = $key["product_picture"];
                                    ?>
                                    <a href="product-detail.php?id=<?php echo $key["product_id"]; ?>">
                                        <img style="margin:auto; width:40px;" src="<?php echo $image; ?>">
                                    </a>
                                    <?php
                                        }
                                    } else {
                                        $image = $other["product_picture"];

                                        ?>
                                    <a href="product-detail.php?id=<?php echo $other["product_id"]; ?>">
                                        <img style="margin:auto; width:40px;" src="<?php echo $image; ?>">
                                    </a>
                                    <?php
                                    }
                                    
                                     $product_size = $product->getProductProps($product_id);
                                    ?>

                                </div>
                                <br>
                                <?php 
                                    if(count($product_size)==0){
                                        
                                    }else{
                                        ?>
                                         <label style="margin-top:15px; font-size:14px;line-height: 1.21;
    letter-spacing: 1.4px;">Beden:<b id="size-warning" style="color:red; display:none;">Önce beden seçiniz.</b>
                                </label>
                                        <?php
                                    }
                                ?>
                               
                            </div>
                            <div class="col-md-12 beden">
                                <?php
                               
                                foreach ($product_size as $key) {
                                ?>
                                <a class="sizes"
                                    vals="<?php echo $key['prop_detail'] ?>"><?php echo $key['prop_detail'] ?></a>
                                <?php
                                }
                                ?>


                            </div>
                            <div class="col-md-12" style="margin-bottom:15px;">
                                <form method="post" action="./app/function/addProduct.php">
                                    <?php if(count($product_size)>0){ 
                                          $isze_val="";
                                        
                                    }else{
                                      $size_val=0;
                                    } ?>
                                     <input type="hidden" id="size" name="size"  value="<?php echo $size_val; ?>" required>      
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                                    <button class="btn btn-warning" id="add-sepet" name="add-sepet">SEPETE EKLE</button>
                                </form>

                            </div>

                            <div class="col-md-12 product-desc">
                                <div class="product-detail__info__bottom__accordion--item ">
                                    <h3 data-field="attributes"
                                        class="product-detail__info__bottom__accordion--title js-accordion-title">
                                        <span class="product-detail__info__bottom__accordion--title--span">ÜRÜN
                                            DETAY</span>
                                        <div class="product-detail__info__bottom__accordion--title--icon">+</div>
                                    </h3>
                                    <div data-field="attributes" class="accordion--details">
                                        <ul>
                                            <li>
                                                <span>Ürün Kodu: </span>
                                                <small><?php echo $product_code; ?></small>
                                            </li>


                                            <li class="product-detail__info-description-list">
                                                <span>Ürün Detayı: </span> <br>
                                                <small>
                                                    <ul>
                                                        <li>Kumaş Bilgisi: %100 Polyester </li>
                                                        <li>Renk: Bej</li>
                                                        <li>Model Detayı: <?php echo $description; ?></li>
                                                    </ul>
                                                </small>
                                            </li>





                                        </ul>
                                    </div>
                                </div>
                                <div class="product-detail__info__bottom__accordion--item">
                                    <h3 data-field="attributes"
                                        class="product-detail__info__bottom__accordion--title js-accordion-title">
                                        <span class="product-detail__info__bottom__accordion--title--span">Bakım</span>
                                        <div class="product-detail__info__bottom__accordion--title--icon">+</div>
                                    </h3>
                                    <div data-field="attributes" class="accordion--details">
                                        <ul>
                                            <li>
                                                <span>Ürün Kodu: </span>
                                                <small><?php echo $product_code; ?></small>
                                            </li>


                                            <li class="product-detail__info-description-list">
                                                <span>Ürün Detayı: </span> <br>
                                                <small>
                                                    <ul>
                                                        <li>Kumaş Bilgisi: %100 Polyester </li>
                                                        <li>Renk: Bej</li>
                                                        <li>Model Detayı: Arka beli lastikli, yandan çift zincir detaylı
                                                            duble paçalı bilekte pantolon</li>
                                                    </ul>
                                                </small>
                                            </li>





                                        </ul>
                                    </div>
                                </div>
                                <div class="product-detail__info__bottom__accordion--item">
                                    <h3 data-field="attributes"
                                        class="product-detail__info__bottom__accordion--title js-accordion-title">
                                        <span class="product-detail__info__bottom__accordion--title--span">İade &
                                            Değişim</span>
                                        <div class="product-detail__info__bottom__accordion--title--icon">+</div>
                                    </h3>
                                    <div data-field="attributes" class="accordion--details">
                                        <ul>
                                            <li>
                                                <span>Ürün Kodu: </span>
                                                <small><?php echo $product_code; ?></small>
                                            </li>


                                            <li class="product-detail__info-description-list">
                                                <span>Ürün Detayı: </span> <br>
                                                <small>
                                                    <ul>
                                                        <li>Kumaş Bilgisi: %100 Polyester </li>
                                                        <li>Renk: Bej</li>
                                                        <li>Model Detayı: Arka beli lastikli, yandan çift zincir detaylı
                                                            duble paçalı bilekte pantolon</li>
                                                    </ul>
                                                </small>
                                            </li>





                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>


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
        <?php
        include "./components/footer.php";

        ?>
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
    <script type="text/javascript" src="slick/slick.min.js"></script>
    <script type="text/javascript" src="zoom-master/jquery.zoom.js"></script>
    <script>
    $(document).ready(function() {
      $("#ex1").zoom();
        $("#add-sepet").click(function(e) {
            let val = $("#size").val();
            console.log(val);
            if (val == "") {
                e.preventDefault();
                $("#size-warning").show();
            }
        });
        $(".sizes").click(function() {
            let sizes = $(this).attr("vals");
            $("#size").val(sizes);
        });

        $('.myClass').slick({
            dots: true,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            adaptiveHeight: true
        });
        $('.slider-nav').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor: '.myClass',
            dots: false,
            centerMode: false,
            focusOnSelect: true
        });
        
           $(".zoomResim img").click(function(){
            let src=$(this).attr("src");
            $(".zoomImg").attr("src",src);
            $("#ex1").zoom();
        });
        

        $(".slider-nav .slick-track .slick-slide").css("width", "150px!important");

        $(".product-detail__info__bottom__accordion--title--icon").click(function() {
           
           
            $(this).parent().parent().find(".accordion--details").toggle();
        });
    });
   
    </script>


</body>

</html>