	<footer class="page-footer variant4 fullboxed">
	    <div class="footer-top bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-6">
	                    <!-- newsletter -->
	                    <div class="newsletter variant3">
	                        <div class="footer-logo">
	                            <a href="index.html"><img src="images/marsel.png" alt="Footer Logo" style="width:20%;"></a>
	                        </div>
	                        <div>
	                            <!-- input-group -->
	                            <form action="#">
	                                <div class="input-group">
	                                    <input type="text" class="form-control">
	                                    <span class="input-group-btn">
	                                        <button class="btn btn-default" type="submit"><i
	                                                class="icon icon-close-envelope"></i></button>
	                                    </span>
	                                </div>
	                            </form>
	                            <!-- /input-group -->
	                        </div>
	                    </div>
	                    <!-- /newsletter -->
	                </div>
	                <div class="col-md-3">
	                    <h3><span class="custom-color">HOT</span> Company news </h3>
	                    <div class="news-item">
	                        <div class="news-date">21.10.06</div>
	                        <h4 class="news-title">Neque porro quisquam est</h4>
	                        <div class="news-text">
	                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut git, sed
	                                quia consequuntur magni dolore</p>
	                            <p><a href="#" class="readmore">Read more</a></p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-3">
	                    <h3>Twitter</h3>
	                    <a class="twitter-timeline" href="https://twitter.com/ThemeForest"
	                        data-chrome="transparent nofooter noborders noheader noscrollbar" data-tweet-limit="1"
	                        data-widget-id="677235277925113856">Tweets by @ThemeForest</a>
	                    <script>
	                    ! function(d, s, id) {
	                        var js, fjs = d.getElementsByTagName(s)[0],
	                            p = /^http:/.test(d.location) ? 'http' : 'https';
	                        if (!d.getElementById(id)) {
	                            js = d.createElement(s);
	                            js.id = id;
	                            js.src = p + "://platform.twitter.com/widgets.js";
	                            fjs.parentNode.insertBefore(js, fjs);
	                        }
	                    }(document, "script", "twitter-wjs");
	                    </script>
	                </div>
	            </div>
	        </div>
	    </div>
	    <div class="footer-middle">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-3 col-lg-3">
	                    <div class="footer-block collapsed-mobile">
	                        <div class="title">
	                            <h4>Hakkımızda</h4>
	                            <div class="toggle-arrow"></div>
	                        </div>
	                        <div class="collapsed-content">
	                            <ul class="marker-list">
	                                <?php
									$getStatic = $pages->getStaticPages([1], "SELECT * FROM sabit_sayfalar where enable=?");
									foreach ($getStatic as $key) {
									?>
	                                <li href="sabit.php?static_id=<?php echo $key['id']; ?>"><?php echo $key['name']; ?>
	                                </li>

	                                <?php  }
									?>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-3 col-lg-3">
	                    <div class="footer-block collapsed-mobile">
	                        <div class="title">
	                            <h4>MY ACCOUNT</h4>
	                            <div class="toggle-arrow"></div>
	                        </div>
	                        <div class="collapsed-content">
	                            <ul class="marker-list">
	                                <li><a href="account-create.html">My account</a></li>
	                                <li><a href="login.html">Logination</a></li>
	                                <li><a href="cart.html">My cart</a></li>
	                                <li><a href="wishlist.html">My wishlist</a></li>
	                                <li><a href="search.html">Search Terms</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-3 col-lg-3">
	                    <div class="footer-block collapsed-mobile">
	                        <div class="title">
	                            <h4>CUSTOMER CARE</h4>
	                            <div class="toggle-arrow"></div>
	                        </div>
	                        <div class="collapsed-content">
	                            <ul class="marker-list">
	                                <li><a href="blog.html">Our Blog</a></li>
	                                <li><a href="search.html">Search Terms</a></li>
	                                <li><a href="contact.html">Contact Us</a></li>
	                                <li><a href="faq.html">Customer Service</a></li>
	                                <li><a href="about.html">Privacy Policy</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-3 col-lg-3">
	                    <div class="footer-block collapsed-mobile">
	                        <div class="title">
	                            <h4>CONTACT US</h4>
	                            <div class="toggle-arrow"></div>
	                        </div>
	                        <div class="collapsed-content">
	                            <ul class="simple-list">
	                                <li><i class="icon icon-phone"></i>+01 234 567 89</li>
	                                <li><i class="icon icon-close-envelope"></i><a
	                                        href="mailto:support@seiko.com">support@seiko.com</a></li>
	                                <li><i class="icon icon-clock"></i>8:00 - 19:00, Monday - Saturday</li>
	                            </ul>
	                            <div class="footer-social">
	                                <a href="#"><i class="icon icon-facebook-logo icon-circled"></i></a> <a href="#"><i
	                                        class="icon icon-twitter-logo icon-circled"></i></a> <a href="#"><i
	                                        class="icon icon-skype-logo icon-circled"></i></a> <a href="#"><i
	                                        class="icon icon-vimeo icon-circled"></i></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <div class="footer-bot">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-6 col-lg-8">
	                    <div class="image-banner text-center">
	                        <a href="#"> <img
	                                src="http://frontend.big-skins.com/seiko/html/images/banners/footer-banner.jpg"
	                                alt="Footer Banner" class="img-responsive"> </a>
	                    </div>
	                </div>
	                <div class=" col-md-6 col-lg-4">
	                    <div class="footer-copyright text-center"> © 2016 Demo Store. All Rights Reserved.
	                    </div>
	                    <div class="footer-payment-link text-center">
	                        <a href="#"><img
	                                src="http://frontend.big-skins.com/seiko/html/images/payment-logo/icon-pay-1.png"
	                                alt=""></a>
	                        <a href="#"><img
	                                src="http://frontend.big-skins.com/seiko/html/images/payment-logo/icon-pay-2.png"
	                                alt=""></a>
	                        <a href="#"><img
	                                src="http://frontend.big-skins.com/seiko/html/images/payment-logo/icon-pay-3.png"
	                                alt=""></a>
	                        <a href="#"><img
	                                src="http://frontend.big-skins.com/seiko/html/images/payment-logo/icon-pay-4.png"
	                                alt=""></a>

	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</footer>