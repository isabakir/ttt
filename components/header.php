<style>

</style>
<?php


?>

<header class="page-header fullboxed variant-9 sticky always">
    <!-- Header Top Row -->

    <!-- /Header Top Row -->
    <div class="navbar">
        <div class="container" style="width:100%;">
            <!-- Menu Toggle -->
            <div class="menu-toggle"><a href="#" class="mobilemenu-toggle"><i class="icon icon-menu"></i></a></div>
            <!-- /Menu Toggle -->
            <div class="header-right-links">
                <div class="collapsed-links-wrapper">
                    <div class="collapsed-links">
                        <!-- Header Links -->
                        <div class="header-links">
                            <!-- Header WishList -->
                            <div class="header-link">
                                <a href="#"><i class="icon icon-heart"></i><span class="badge">3</span><span
                                        class="link-text">FAVORİLER</span></a>
                            </div>
                            <!-- Header WishList -->
                            <!-- Header Account -->
                            <div class="header-link dropdown-link header-account">
                                <?php if($_SESSION['is_users']==0 || empty($_SESSION['is_users'])){
                                    ?>
                                      <a href="#"><i class="icon icon-user"></i><span class="link-text">GİRİŞ</span></a>
                                <div class="dropdown-container right">

                                    <!-- form -->
                                    <form action="giris.php" method="post">
                                        <input type="text" class="form-control" name="email" placeholder="Mail*">
                                        <input type="password" class="form-control" name="password" placeholder="Şifre*">
                                        <button type="submit" class="btn">Giriş</button>
                                    </form>
                                    <!-- /form -->
                                    <div class="title">Veya</div>
                                    <div class="bottom-text"> <a href="kayit-ol.php">Yeni Hesap oluştur</a></div>
                                </div>
                                    <?php
                                    
                                }else{
                                ?>
                                     <a href="#"><i class="icon icon-undo-1"></i><span class="link-text">Çıkış</span></a>
                                <?php
                                    
                                }?>
                              
                            </div>
                            <!-- /Header Account -->
                        </div>
                        <!-- /Header Links -->
                        <!-- Header Cart -->
                        <div class="header-link dropdown-link header-cart variant-1">
                            <?php $myShoppingCount=$orders->getMyShop($_SESSION['users']);   ?>
                            <a href="#"> <i class="icon icon-cart"></i> <span class="badge"><?php echo count($myShoppingCount); ?></span><span
                                    class="link-text">Sepet</span></a>
                            <!-- minicart wrapper -->
                           <?php include "./components/minicart.php"; ?>
                            <!-- /minicart wrapper -->
                        </div>
                        <!-- /Header Cart -->
                    </div>
                </div>
                <!-- Header Search -->
                <div class="header-link header-search header-search">
                    <div class="exp-search">
                        <form>
                            <input class="exp-search-input " placeholder="Search here ..." type="text" value="">
                            <input class="exp-search-submit" type="submit" value="">
                            <span class="exp-icon-search"><i class="icon icon-magnify"></i></span>
                            <span class="exp-search-close"><i class="icon icon-close"></i></span>
                        </form>
                    </div>
                </div>
                <!-- /Header Search -->
            </div>
            <!-- Logo -->
            <div class="header-logo" style="height: 80px;">
                <a href="index.php" title="Logo"><img src="images/marsel.png" alt="Logo" /></a>
            </div>
            <!-- /Logo -->
            <!-- Mobile Menu -->
            <div class="mobilemenu dblclick">
                <div class="mobilemenu-header">
                    <div class="title">MENU</div>
                    <a href="#" class="mobilemenu-toggle"></a>
                </div>
                <div class="mobilemenu-content">
                    <ul class="nav">
                        <?php
                        $main_cat = $category->getMain();
                        foreach ($main_cat as $key) {

                            $name = $key['category_name'];

                        ?>
                        <li><a href="index.php"><?php echo $name; ?></a><span class="arrow"></span>
                            <ul>
                                <?php
                                    $getSub_cat = $category->getSubCategories($key['category_id']);
                                    foreach ($getSub_cat as $keys) {
                                        $sub_name = $keys['category_name'];
                                    ?>
                                <li><a
                                        href="product.php?main_id=<?php echo $key['category_id']; ?>&sub_id=<?php echo $keys['category_id']; ?>"><?php echo $sub_name; ?></a>
                                </li>
                                <?php
                                    }
                                    ?>

                            </ul>
                        </li>
                        <?php } ?>






                    </ul>
                </div>
            </div>
            <!-- Mobile Menu -->
            <!-- Mega Menu -->
            <div class="megamenu fadein blackout" style="float:left;">
                <ul class="nav">

                    <?php


                    foreach ($main_cat as $key) {

                        $name = $key['category_name'];
                        $main_picture=$key['category_picture'];

                    ?>
                    <li class="mega-dropdown">
                        <a href="pages.php?main_id=<?php echo $key['category_id']; ?>"><?php echo $name; ?></a>
                        <div class="sub-menu" style="padding:0; border-bottom:none; background-color:unset;">
                            <div class="container" style="background-color:#fff; width:60%; padding:10px 8px;">
                                <div class="megamenu-categories column-2" style="float:left; ">
                                    <!-- megamenu column 1 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <?php
                                                $getSub_cat = $category->getSubCategories($key['category_id']);
                                                foreach ($getSub_cat as $keys) {
                                                    $sub_name = $keys['category_name'];
                                                ?>
                                            <li><a
                                                    href="product.php?main_id=<?php echo $key['category_id']; ?>&sub_id=<?php echo $keys['category_id']; ?>"><?php echo $sub_name; ?></a>
                                            </li>
                                            <?php
                                                }
                                                ?>


                                        </ul>
                                    </div>
                                    <!-- /megamenu column 1 -->
                                    <!-- megamenu column 2 -->

                                    <!-- /megamenu column 2 -->
                                    <!-- megamenu column 3 -->

                                    <!-- /megamenu column 3 -->
                                </div>
                                <div class="megamenu-right width-33" style="float:right;">
                                    <a href="#bannerLink" class="banner-wrap">
                                        <div class="banner style-13 autosize-text image-hover-scale" data-fontratio="4">
                                            <img src="<?php echo $main_picture; ?>"
                                                alt="Banner" style="width:480px; height:480px;">
                                            <div class="banner-caption horc vertb" style="bottom: 3%;">
                                                <div class="vert-wrapper">
                                                    <div class="vert">
                                                        <div class="text-1"></div>
                                                        <div class="text-2"></div>
                                                        <div class="banner-btn text-hoverslide" data-hcolor="#f82e56">
                                                            <span><span class="text"></span><span
                                                                    class="hoverbg"></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                    <?php
                    }
                    /*
                    ?>

                    <li class="mega-dropdown">
                        <a href="aksesuar.php" title="">Aksesuar</a>
                        <div class="sub-menu" style="padding:0; border-bottom:none; background-color:unset;">
                            <div class="container" style="background-color:#fff; width:60%; padding:10px 8px;">
                                <div class="megamenu-categories column-2" style="float:left; ">
                                    <!-- megamenu column 1 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">New In</a></li>
                                            <li><a href="#">All Cameras</a></li>
                                            <li><a href="#">All Camcorders</a></li>
                                            <li><a href="#">Camera Accessories</a></li>
                                            <li><a href="#">Camera Lenses</a></li>
                                            <li><a href="#">Memory Cards</a></li>
                                            <li><a href="#">Web Cameras</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 1 -->
                                    <!-- megamenu column 2 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">No-Contract Phones & Plans</a></li>
                                            <li><a href="#">Accessories</a></li>
                                            <li><a href="#">Apple iPhone</a></li>
                                            <li><a href="#">Mobile Hotspots & Plans<span
                                                        class="menu-label">-15%</span></a></li>
                                            <li><a href="#">Samsung Galaxy</a></li>
                                            <li><a href="#">Prepaid Cell Phones</a></li>
                                            <li><a href="#">SIM Cards</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 2 -->
                                    <!-- megamenu column 3 -->

                                    <!-- /megamenu column 3 -->
                                </div>
                                <div class="megamenu-right width-33" style="float:right;">
                                    <a href="#bannerLink" class="banner-wrap">
                                        <div class="banner style-13 autosize-text image-hover-scale" data-fontratio="4">
                                            <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-21.jpg"
                                                alt="Banner">
                                            <div class="banner-caption horc vertb" style="bottom: 3%;">
                                                <div class="vert-wrapper">
                                                    <div class="vert">
                                                        <div class="text-1">NEW STYLE</div>
                                                        <div class="text-2">New Collection</div>
                                                        <div class="banner-btn text-hoverslide" data-hcolor="#f82e56">
                                                            <span><span class="text">SHOP NOW</span><span
                                                                    class="hoverbg"></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li class="mega-dropdown">
                        <a href="kadin.php">Kadın</a>
                        <div class="sub-menu" style="padding:0; border-bottom:none; background-color:unset;">
                            <div class="container" style="background-color:#fff; width:60%; padding:10px 8px;">
                                <div class="megamenu-categories column-2" style="float:left; ">
                                    <!-- megamenu column 1 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">New In</a></li>
                                            <li><a href="#">All Cameras</a></li>
                                            <li><a href="#">All Camcorders</a></li>
                                            <li><a href="#">Camera Accessories</a></li>
                                            <li><a href="#">Camera Lenses</a></li>
                                            <li><a href="#">Memory Cards</a></li>
                                            <li><a href="#">Web Cameras</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 1 -->
                                    <!-- megamenu column 2 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">No-Contract Phones & Plans</a></li>
                                            <li><a href="#">Accessories</a></li>
                                            <li><a href="#">Apple iPhone</a></li>
                                            <li><a href="#">Mobile Hotspots & Plans<span
                                                        class="menu-label">-15%</span></a></li>
                                            <li><a href="#">Samsung Galaxy</a></li>
                                            <li><a href="#">Prepaid Cell Phones</a></li>
                                            <li><a href="#">SIM Cards</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 2 -->
                                    <!-- megamenu column 3 -->

                                    <!-- /megamenu column 3 -->
                                </div>
                                <div class="megamenu-right width-33" style="float:right;">
                                    <a href="#bannerLink" class="banner-wrap">
                                        <div class="banner style-13 autosize-text image-hover-scale" data-fontratio="4">
                                            <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-21.jpg"
                                                alt="Banner">
                                            <div class="banner-caption horc vertb" style="bottom: 3%;">
                                                <div class="vert-wrapper">
                                                    <div class="vert">
                                                        <div class="text-1">NEW STYLE</div>
                                                        <div class="text-2">New Collection</div>
                                                        <div class="banner-btn text-hoverslide" data-hcolor="#f82e56">
                                                            <span><span class="text">SHOP NOW</span><span
                                                                    class="hoverbg"></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li class="mega-dropdown">
                        <a href="erkek.php">Erkek</a>
                        <div class="sub-menu" style="padding:0; border-bottom:none; background-color:unset;">
                            <div class="container" style="background-color:#fff; width:60%; padding:10px 8px;">
                                <div class="megamenu-categories column-2" style="float:left; ">
                                    <!-- megamenu column 1 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">New In</a></li>
                                            <li><a href="#">All Cameras</a></li>
                                            <li><a href="#">All Camcorders</a></li>
                                            <li><a href="#">Camera Accessories</a></li>
                                            <li><a href="#">Camera Lenses</a></li>
                                            <li><a href="#">Memory Cards</a></li>
                                            <li><a href="#">Web Cameras</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 1 -->
                                    <!-- megamenu column 2 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">No-Contract Phones & Plans</a></li>
                                            <li><a href="#">Accessories</a></li>
                                            <li><a href="#">Apple iPhone</a></li>
                                            <li><a href="#">Mobile Hotspots & Plans<span
                                                        class="menu-label">-15%</span></a></li>
                                            <li><a href="#">Samsung Galaxy</a></li>
                                            <li><a href="#">Prepaid Cell Phones</a></li>
                                            <li><a href="#">SIM Cards</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 2 -->
                                    <!-- megamenu column 3 -->

                                    <!-- /megamenu column 3 -->
                                </div>
                                <div class="megamenu-right width-33" style="float:right;">
                                    <a href="#bannerLink" class="banner-wrap">
                                        <div class="banner style-13 autosize-text image-hover-scale" data-fontratio="4">
                                            <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-21.jpg"
                                                alt="Banner">
                                            <div class="banner-caption horc vertb" style="bottom: 3%;">
                                                <div class="vert-wrapper">
                                                    <div class="vert">
                                                        <div class="text-1">NEW STYLE</div>
                                                        <div class="text-2">New Collection</div>
                                                        <div class="banner-btn text-hoverslide" data-hcolor="#f82e56">
                                                            <span><span class="text">SHOP NOW</span><span
                                                                    class="hoverbg"></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li class="mega-dropdown">
                        <a href="ev-tekne.php">Ev-Tekne</a>
                        <div class="sub-menu" style="padding:0; border-bottom:none; background-color:unset;">
                            <div class="container" style="background-color:#fff; width:60%; padding:10px 8px;">
                                <div class="megamenu-categories column-2" style="float:left; ">
                                    <!-- megamenu column 1 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">New In</a></li>
                                            <li><a href="#">All Cameras</a></li>
                                            <li><a href="#">All Camcorders</a></li>
                                            <li><a href="#">Camera Accessories</a></li>
                                            <li><a href="#">Camera Lenses</a></li>
                                            <li><a href="#">Memory Cards</a></li>
                                            <li><a href="#">Web Cameras</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 1 -->
                                    <!-- megamenu column 2 -->
                                    <div class="col">

                                        <ul class="category-links">
                                            <li><a href="#">No-Contract Phones & Plans</a></li>
                                            <li><a href="#">Accessories</a></li>
                                            <li><a href="#">Apple iPhone</a></li>
                                            <li><a href="#">Mobile Hotspots & Plans<span
                                                        class="menu-label">-15%</span></a></li>
                                            <li><a href="#">Samsung Galaxy</a></li>
                                            <li><a href="#">Prepaid Cell Phones</a></li>
                                            <li><a href="#">SIM Cards</a></li>
                                        </ul>
                                    </div>
                                    <!-- /megamenu column 2 -->
                                    <!-- megamenu column 3 -->

                                    <!-- /megamenu column 3 -->
                                </div>
                                <div class="megamenu-right width-33" style="float:right;">
                                    <a href="#bannerLink" class="banner-wrap">
                                        <div class="banner style-13 autosize-text image-hover-scale" data-fontratio="4">
                                            <img src="http://frontend.big-skins.com/seiko/html/images/banners/banner-21.jpg"
                                                alt="Banner">
                                            <div class="banner-caption horc vertb" style="bottom: 3%;">
                                                <div class="vert-wrapper">
                                                    <div class="vert">
                                                        <div class="text-1">NEW STYLE</div>
                                                        <div class="text-2">New Collection</div>
                                                        <div class="banner-btn text-hoverslide" data-hcolor="#f82e56">
                                                            <span><span class="text">SHOP NOW</span><span
                                                                    class="hoverbg"></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li><a href="blog.php">Blog</a></li>
                    <li><a href="editor.php">EDİTÖRÜN SEÇTİKLERİ</a></li>
                    <?php */ ?>
                </ul>
            </div>
            <!-- /Mega Menu -->
        </div>
    </div>
</header>