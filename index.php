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
    <link href="css/megamenu.css" rel="stylesheet">
    <link href="css/style-rtl.css" rel="stylesheet">

    <!-- Color Schemes -->
    <!-- your style-color.css here  -->


    <!-- Icon Font -->
    <link href="fonts/icomoon-reg/style.css" rel="stylesheet">

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css?family=Oswald:300,400,700|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i"
        rel="stylesheet">

</head>

<body class="boxed ">
    <!-- Loader -->
    <div id="loader-wrapper" class="off">
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
            <?php include "./components/header.php"; ?>
            <!-- /Header -->
            <!-- Sidebar -->
            <div class="sidebar-wrapper">
                <div class="sidebar-top"><a href="#" class="slidepanel-toggle"><i
                            class="icon icon-left-arrow-circular"></i></a></div>
                <ul class="sidebar-nav">
                    <li> <a href="index.html">HOME</a> </li>
                    <li> <a href="gallery.html">GALLERY</a> </li>
                    <li> <a href="blog.html">BLOG</a> </li>
                    <li> <a href="category-fixed-sidebar.html">SHOP</a> </li>
                    <li> <a href="faq.html">FAQ</a> </li>
                    <li> <a href="contact.html">CONTACT</a> </li>
                </ul>
                <div class="sidebar-bot">
                    <div class="share-button toTop">
                        <span class="toggle"></span>
                        <ul class="social-list">
                            <li>
                                <a href="#" class="icon icon-google google"></a>
                            </li>
                            <li>
                                <a href="#" class="icon icon-fancy fancy"></a>
                            </li>
                            <li>
                                <a href="#" class="icon icon-pinterest pinterest"></a>
                            </li>
                            <li>
                                <a href="#" class="icon icon-twitter-logo twitter"></a>
                            </li>
                            <li>
                                <a href="#" class="icon icon-facebook-logo facebook"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Sidebar -->
            <!-- Page Content -->
            <main class="page-main">
                <div class="block fullwidth full-nopad bottom-space">
                    <div class="container">
                        <!-- Main Slider -->
                        <div class="mainSlider" data-thumb="true" data-thumb-width="230" data-thumb-height="100">
                            <div class="sliderLoader">Loading...</div>
                            <!-- Slider main container -->
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <!-- Slides -->
                                        <?php 
                                            $sliders=$anasayfa->getSlider([1],"SELECT * FROM anasayfa where is_slider=?");
                                            
                                            
                                        
                                        ?>
                                    
                                    <div class="swiper-slide" data-thumb="images/slider/slide-02-thumb.png"
                                        data-href="<?php echo $sliders[0]["link"]; ?>" data-target="_blank">
                                        <!-- _blank or _self ( _self is default )-->
                                        <div class="wrapper">
                                            <figure><img
                                                    src="<?php echo $sliders[0]["picture"]; ?>"
                                                    alt=""></figure>
                                            <div class="text2-1 animate" data-animate="flipInY" data-delay="0"> <?php echo $sliders[0]["text1"]; ?>
                                            </div>
                                            <div class="text2-2 animate" data-animate="bounceIn" data-delay="500">
                                                <?php echo $sliders[0]["text2"]; ?></div>
                                            <div class="text2-3 animate" data-animate="bounceIn" data-delay="1000">
                                               <?php echo $sliders[0]["text3"]; ?> </div>
                                            <div class="text2-4 animate" data-animate="rubberBand" data-delay="1500">
                                                <?php echo $sliders[0]["text4"]; ?> </div>
                                            <div class="text2-5 animate" data-animate="hinge" data-delay="2000"> <?php echo $sliders[0]["text5"]; ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide" data-thumb="images/slider/slide-01-thumb.png">
                                        <div class="wrapper">
                                            <figure><img
                                                    src="<?php echo $sliders[1]["picture"]; ?>"
                                                    alt=""></figure>
                                            <div class="caption animate" data-animate="fadeIn">
                                                <div class="text1 animate" data-animate="flipInY" data-delay="0"> <?php echo $sliders[1]["text1"]; ?>
                                                </div>
                                                <div class="text2 animate" data-animate="bounceInLeft" data-delay="500">
                                                    <?php echo $sliders[1]["text2"]; ?>
                                                </div>
                                                <div class="text3 animate" data-animate="bounceInLeft"
                                                    data-delay="1500"><?php echo $sliders[1]["text3"]; ?> </div>
                                                <div class="animate" data-animate="fadeIn" data-delay="2000">
                                                    <!-- coolbutton -->
                                                    <a href="<?php echo $sliders[1]["link"]; ?>" class="cool-btn"
                                                        style="-webkit-clip-path: url(#coolButton); clip-path: url(#coolButton);">
                                                        <span>MORE</span> </a>
                                                    <svg class="clip-svg">
                                                        <defs>
                                                            <clipPath id="coolButton" clipPathUnits="objectBoundingBox">
                                                                <polygon points="0 .18, .99 .15, .91 .85, .07 .8" />
                                                            </clipPath>
                                                        </defs>
                                                    </svg>
                                                    <!-- // coolbutton -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide" data-thumb="images/slider/slide-03-thumb.png">
                                        <div class="wrapper">
                                            <figure><img
                                                    src="<?php echo $sliders[2]["picture"]; ?>"
                                                    alt=""></figure>
                                            <div class="text3-1 animate" data-animate="bounceInDown" data-delay="0">
                                                <?php echo $sliders[2]["text1"]; ?> </div>
                                            <div class="text3-2 animate" data-animate="bounceInDown" data-delay="500">
                                                 <?php echo $sliders[2]["text2"]; ?>  </div>
                                            <div class="text3-3 animate" data-animate="bounceInDown" data-delay="1000">
                                                 <?php echo $sliders[2]["text3"]; ?>  </div>
                                            <div class="text3-4 animate" data-animate="bounceIn" data-delay="1500">
                                                 <?php echo $sliders[2]["text4"]; ?>  </div>
                                            <div class="text3-5 animate" data-animate="bounceIn" data-delay="2000">
                                                 <?php echo $sliders[2]["text5"]; ?>  </div>
                                            <a href=" <?php echo $sliders[2]["link"]; ?> " class="text3-6 animate" data-animate="rubberBand"
                                                data-delay="2500">  <?php echo $sliders[2]["button_name"]; ?>  </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide" data-thumb="images/slider/slide-04-thumb.png">
                                        <div class="wrapper">
                                            <figure><img
                                                    src=" <?php echo $sliders[3]["picture"]; ?> "
                                                    alt=""></figure>
                                            <div class="text4-1 animate" data-animate="bounceInLeft" data-delay="0">
                                                <?php echo $sliders[3]["text1"]; ?></div>
                                            <div class="text4-2 animate" data-animate="bounceInDown" data-delay="500">
                                                <?php echo $sliders[3]["text2"]; ?></div>
                                            <div class="text4-3 animate" data-animate="bounceInUp" data-delay="1000">
                                               <?php echo $sliders[3]["text3"]; ?></div>
                                            <a href="<?php echo $sliders[3]["link"]; ?>" class="text4-4 animate" data-animate="bounceInLeft"
                                                data-delay="1500"><?php echo $sliders[3]["button_name"]; ?></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- pagination -->
                                <div class="swiper-pagination"></div>
                                <!-- pagination thumbs -->
                                <div class="swiper-pagination-thumbs">
                                    <div class="thumbs-wrapper">
                                        <div class="thumbs"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Main Slider -->
                    </div>
                </div>



                <div class="block banners-with-pad">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-7">
                                <a href="#" class="banner-wrap">
                                    <div class="banner style-17 autosize-text image-hover-scale" data-fontratio="4.6">
                                        <img src="http://frontend.big-skins.com/seiko/html/images/slider/slide-02.jpg"
                                            alt="Banner">
                                        <div class="banner-caption vertb horl">
                                            <div class="vert-wrapper">
                                                <div class="vert">
                                                    <div class="text-1">Fashion collection</div>
                                                    <div class="text-2 text-hoverslide" data-hcolor="#ffffff">
                                                        <span><span class="text">Underwear</span><span
                                                                class="hoverbg"></span></span>
                                                    </div>
                                                    <div class="text-3">To take a trivial example, which of us ever
                                                        undtakes
                                                        <br> laborious physical exercise
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#bannerLink" class="banner-wrap">
                                    <div class="banner style-18 autosize-text image-hover-scale" data-fontratio="4.6">
                                        <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-18.jpg"
                                            alt="Banner">
                                        <div class="banner-caption vertl horl">
                                            <div class="vert-wrapper">
                                                <div class="vert">
                                                    <div class="text-1">BIG STATMENT</div>
                                                    <div class="text-2">AWESOME BRA</div>
                                                    <div class="banner-btn text-hoverslide" data-hcolor="#fff">
                                                        <span><span class="text">SPECIAL OFFERS</span><span
                                                                class="hoverbg"></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-5">
                                <a href="#bannerLink" class="banner-wrap">
                                    <div class="banner style-19 autosize-text image-hover-scale" data-fontratio="4.6">
                                        <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-19.jpg"
                                            alt="Banner">
                                        <div class="banner-caption vertb horl">
                                            <div class="vert-wrapper">
                                                <div class="vert">
                                                    <div class="text-1">FASHION NIGHT</div>
                                                    <div class="text-2">HAS ARRIVED</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#bannerLink" class="banner-wrap">
                                    <div class="banner style-20 autosize-text image-hover-scale" data-fontratio="4.6">
                                        <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-20.jpg"
                                            alt="Banner">
                                        <div class="banner-caption vertb horr">
                                            <div class="vert-wrapper">
                                                <div class="vert">
                                                    <div class="text-1">Always Up To Date<span
                                                            class="text-corner"></span></div>
                                                    <div class="text-2">URBAN CLOTHING</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="block">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <!-- Blog Carousel -->
                                <div class="title">
                                    <h2>From Blog</h2>
                                    <div class="carousel-arrows"></div>
                                </div>
                                <!-- Blog Carousel Item -->
                                <div class="blog-carousel">
                                    <div class="blog-item">
                                        <a href="blog.html" class="blog-item-photo"> <img class="product-image-photo"
                                                src="http://frontend.big-skins.com/seiko/html/images/blog/blog-1.jpg"
                                                alt="From Blog"> </a>
                                        <div class="blog-item-info">
                                            <a href="blog.html" class="blog-item-title">Inventore consectetur ullam</a>
                                            <div class="blog-item-teaser">Repellat aspernatur esse minus. Molestiae
                                                ipsum earum, aspernatur fugit veniam ducimus doloremque repellat
                                                suscipit. Cumque!</div>
                                            <div class="blog-item-links"> <span class="pull-left"> <span><a href="#"
                                                            class="readmore">Read more</a></span> </span> <span
                                                    class="pull-right"> <span>Post by <a href="#">Admin</a></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Blog Carousel Item -->
                                    <!-- Blog Carousel Item -->
                                    <div class="blog-item">
                                        <a href="blog.html" class="blog-item-photo"> <img class="product-image-photo"
                                                src="http://frontend.big-skins.com/seiko/html/images/blog/blog-2.jpg"
                                                alt="From Blog"> </a>
                                        <div class="blog-item-info">
                                            <a href="blog.html" class="blog-item-title">Aperiam, vero facilis</a>
                                            <div class="blog-item-teaser">Commodo delectus consequuntur consectetur
                                                culpa ea doloremque repellat laoreet semper tincidunt lorem Euismod
                                                euismod Suspendisse </div>
                                            <div class="blog-item-links"> <span class="pull-left"> <span><a href="#"
                                                            class="readmore">Read more</a></span> </span> <span
                                                    class="pull-right"> <span>Post by <a href="#">Admin</a></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Blog Carousel Item -->
                                    <!-- Blog Carousel Item -->
                                    <div class="blog-item">
                                        <a href="blog.html" class="blog-item-photo"> <img class="product-image-photo"
                                                src="http://frontend.big-skins.com/seiko/html/images/blog/blog-3.jpg"
                                                alt="From Blog"> </a>
                                        <div class="blog-item-info">
                                            <a href="blog.html" class="blog-item-title">Repellat aspernatur</a>
                                            <div class="blog-item-teaser">Omnis, nihil hic ratione culpa atque ipsum
                                                repellat quaerat impedit, ipsam odio delectus consequuntur consectetur
                                                culpa ea doloremque repellat</div>
                                            <div class="blog-item-links"> <span class="pull-left"> <span><a href="#"
                                                            class="readmore">Read more</a></span> </span> <span
                                                    class="pull-right"> <span>Post by <a href="#">Admin</a></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Blog Carousel Item -->
                                    <!-- Blog Carousel Item -->
                                    <div class="blog-item">
                                        <a href="blog.html" class="blog-item-photo"> <img class="product-image-photo"
                                                src="http://frontend.big-skins.com/seiko/html/images/blog/blog-4.jpg"
                                                alt="From Blog"> </a>
                                        <div class="blog-item-info">
                                            <a href="blog.html" class="blog-item-title">Commodo laoreet tincidunt</a>
                                            <div class="blog-item-teaser">Lorem ipsum dolor sit amet, consectetur
                                                adipisicing elit. Animi provident earum minus delectus voluptatum
                                                asperiores consectetur culpa ea doloremque</div>
                                            <div class="blog-item-links"> <span class="pull-left"> <span><a href="#"
                                                            class="readmore">Read more</a></span> </span> <span
                                                    class="pull-right"><span>Post by <a href="#">Admin</a></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Blog Carousel Item -->
                                </div>
                                <!-- /Blog Carousel -->
                            </div>
                          
                        </div>
                    </div>
                </div>







                <div class="block fullwidth full-nopad" style="max-height:350px;">
                    <div class="container" style="max-height:350px;">
                        <div id="instafeed" class="instagramm-feed-full"></div>
                        <div class="instagramm-title"
                            style="max-height:350px; display:flex; justify-content:space-evenly;">

                            <div class="" style="max-height:350px; padding:15px;">
                                <img class="img-responsive" style="width:100%; object-fit:scale-down; max-height:270px;"
                                    src="https://photorankmedia-a.akamaihd.net/media/9/c/h/9chttu4/normal.jpg">
                                <label style="    position: absolute;
    z-index: 99;
    color: black;
    letter-spacing: 1px;
        left: 39px;
    bottom: 15px;
">#asdasd</label>
                            </div>

                            <div class="" style="max-height:350px; padding:15px;">
                                <img class="img-responsive" style="width:100%; object-fit:scale-down; max-height:270px;"
                                    src="https://z1photorankmedia-a.akamaihd.net/media/9/g/h/9ghttu4/normal.jpg">
                                <label style="    position: absolute;
    z-index: 99;
    color: black;
    letter-spacing: 1px;
        left: 39px;
    bottom: 15px;
">#asdasd</label>
                            </div>
                            <div class="" style="max-height:350px; padding:15px;">
                                <img class="img-responsive" style="width:100%; object-fit:scale-down; max-height:270px;"
                                    src="https://z1photorankmedia-a.akamaihd.net/media/j/o/h/johttu4/normal.jpg">
                                <label style="    position: absolute;
    z-index: 99;
    color: black;
    letter-spacing: 1px;
        left: 39px;
    bottom: 15px;
">#asdasd</label>
                            </div>
                            <div class="" style="max-height:350px; padding:15px;">
                                <img class="img-responsive" style="width:100%; object-fit:scale-down; max-height:270px;"
                                    src="https://z2photorankmedia-a.akamaihd.net/media/b/e/h/behttu4/normal.jpg">
                                <label style="    position: absolute;
    z-index: 99;
    color: black;
    letter-spacing: 1px;
        left: 39px;
    bottom: 15px;
">#asdasd</label>
                            </div>



                        </div>
                    </div>
                </div>
            </main>
            <!-- /Page Content -->
            <!-- Footer -->
            <?php include "components/footer.php"; ?>
            <!-- /Footer -->
            <a class="back-to-top back-to-top-mobile" href="#">
                <i class="icon icon-angle-up"></i> To Top
            </a>
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
                                src="http://frontend.big-skins.com/seiko/html/images/products/product-10.jpg"
                                alt=""></a> <span class="item-qty">3</span>
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
                                src="http://frontend.big-skins.com/seiko/html/images/products/product-11.jpg"
                                alt=""></a> <span class="item-qty">3</span>
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
                                src="http://frontend.big-skins.com/seiko/html/images/products/product-12.jpg"
                                alt=""></a> <span class="item-qty">3</span>
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
                                src="http://frontend.big-skins.com/seiko/html/images/products/product-13.jpg"
                                alt=""></a> <span class="item-qty">3</span>
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
                                src="http://frontend.big-skins.com/seiko/html/images/products/product-14.jpg"
                                alt=""></a> <span class="item-qty">3</span>
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
                                src="http://frontend.big-skins.com/seiko/html/images/products/product-15.jpg"
                                alt=""></a> <span class="item-qty">3</span>
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