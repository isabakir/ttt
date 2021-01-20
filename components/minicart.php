 <?php 
    $mySes=$users->returnSession();  
    
    $myShopList=$orders->getMyShop($mySes);
    
 
 ?>
 
 
 <div class="dropdown-container right">
                                <!-- minicart content -->
                                <div class="block block-minicart">
                                    <div class="minicart-content-wrapper">
                                        <div class="block-title">
                                            <span></span>
                                        </div>
                                        <a class="btn-minicart-close" title="Close">&#10060;</a>
                                        <div class="block-content">
                                            <div class="minicart-items-wrapper overflowed">
                                                <ol class="minicart-items">
                                                    
                                                    
                                                    <?php
                                                        $subTotal=0;
                                                        if(count($myShopList)>0){
                                                            
                                                      
                                                    foreach($myShopList as $key){
                                                            $shop_id=$key['id'];
                                                            $product_id=$key['product_id'];
                                                            $amount=$key['amount'];
                                                            $pro=$product->getProduct($product_id);
                                                            $product_unit_price=$pro['product_price'];
                                                            $product_picture=$pro['product_picture'];
                                                            $product_name=$pro["product_name"];
                                                            $total_fiyat=$amount*$product_unit_price;
                                                            $subTotal+=$total_fiyat;
                                                        
                                                        ?>
                                                        
                                                       
                                                    <li class="item product product-item">
                                                        <div class="product">
                                                            <a class="product-item-photo" href="#"
                                                                title="Long sleeve overall">
                                                                <span class="product-image-container">
                                                                    <span class="product-image-wrapper">
                                                                        <img class="product-image-photo"
                                                                            src="<?php echo $product_picture; ?>"
                                                                            alt="Long sleeve overall">
                                                                    </span>
                                                                </span>
                                                            </a>
                                                            <div class="product-item-details">
                                                                <div class="product-item-name">
                                                                    <a href="#"><?php echo $product_name; ?></a>
                                                                </div>
                                                                <div class="product-item-qty">
                                                                    <label class="label">Adet:<?php echo $amount; ?></label>
                                                                    
                                                                   
                                                                </div>
                                                                <div class="product-item-pricing">
                                                                    <div class="price-container">
                                                                        <span class="price-wrapper">
                                                                            <span class="price-excluding-tax">
                                                                                <span class="minicart-price">
                                                                                    <span class="price" style="font-size:12px;"><?php echo number_format($total_fiyat,2); ?> ₺</span>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                    <div class="product actions">
                                                                        <div class="secondary">
                                                                            <a href="<?php echo number_format($shop_id,2); ?>" class="action delete"
                                                                                title="Sil">
                                                                                <span>Sil</span>
                                                                            </a>
                                                                        </div>
                                                                      
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    
                                                     <?php
                                                    }
                                                        }
                                                    ?>

                                                </ol>
                                            </div>
                                            <div class="subtotal">
                                                <span class="label">
                                                    <span>Genel Toplam</span>
                                                </span>
                                                <div class="amount price-container">
                                                    <span class="price-wrapper"><span
                                                            class="price"><?php echo $subTotal; ?> ₺</span></span>
                                                </div>
                                            </div>
                                            <div class="actions">

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div
                                    style="width:100%; display:flex; justify-content:center;bottom:65px; position:absolute;">
                                    <a href="sepet-islemleri.php" class="btn btn-success">Sepeti İşleme Al</a>
                                </div>
                                <!-- /minicart content -->
                            </div>