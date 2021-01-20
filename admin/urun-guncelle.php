<?php
include "../init.php";

if (isset($_GET['id'])) {
    $product_id = $_GET['id'];
    $res = $products->getProduct($product_id);
}

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Ürün Güncelle</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#"></a></li>
                        <li class="breadcrumb-item active"> </li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <?php include "./components/alert.php"; ?>
        <form method="POST" enctype="multipart/form-data" action="../app/function/addProduct.php" multiple>
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Ürün Genel Özellikler</h3>
                            <input type="hidden" name="product_id" value="<?php echo $res['product_id']; ?>">

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputName">Ürün Kodu</label>
                                <input type="text" id="inputName" required name="product_code"
                                    value="<?php echo $res['product_code']; ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputName">Ürün Adı</label>
                                <input type="text" id="inputName" required name="product_name"
                                    value="<?php echo $res['product_name']; ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputDescription">Ürün Açıklaması</label>
                                <textarea id="inputDescription" class="form-control" required name="product_description"
                                    rows="4"><?php echo $res['product_description']; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="inputStatus">Ürün Özellikleri</label>
                                <?php
                                $product_props = $products->getProductProps($product_id);

                                foreach ($product_props as $key) {
                                ?>
                                <div class="card card-danger">
                                    <div class="card-header">
                                        <h3 class="card-title" style="width:100%;">Özellik Alanı <i
                                                class="fa fa-times hider" style="cursor:pointer;float:right;"></i></h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <input type="hidden" name="props_id[]" value="<?php echo $key['id']; ?>">
                                            <div class="col-4">
                                                <label>Özellik Detayı</label>
                                                <input type="text" name="props_detail[]"
                                                    value="<?php echo $key['prop_detail']; ?>" required
                                                    class="form-control" placeholder=".col-3">
                                            </div>
                                            <div class="col-4">
                                                <label>Adet</label>
                                                <input type="text" name="props_amount[]"
                                                    value="<?php echo $key['prop_amount']; ?>" required
                                                    class="form-control" placeholder=".col-4">
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <?php
                                }
                                ?>
                            </div>
                            <div class="form-group">
                                <label for="inputClientCompany">Ürün Fiyat</label>
                                <input type="text" id="inputClientCompany" required
                                    value="<?php echo $res['product_price']; ?>" name="product_price"
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputStatus">Ürün Kategorisi</label>
                                <select id="inputStatus" name="product_category_id" required
                                    class="form-control custom-select">
                                    <option selected disabled value="<?php echo $res['product_category_id']; ?>">
                                        <?php echo $res['product_category_id']; ?></option>
                                    <?php
                                    $getCategory = $category->getAllCategories();
                                    foreach ($getCategory as $val => $key) {
                                    ?>
                                    <option value="<?php echo $key['category_id']; ?>">
                                        <?php echo $key['category_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputProjectLeader">Ürün Stok Adeti</label>
                                <input type="text" id="inputProjectLeader" name="product_stok"
                                    value="<?php echo $res['product_stok']; ?>" required class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputStatus">Ürün Renk</label>
                                <select id="inputStatus" name="product_props" required
                                    class="form-control custom-select">

                                    <?php
                                    $getProps = $props->getProps();
                                    foreach ($getProps as $val => $key) {
                                    ?>
                                    <option value="<?php echo $key['prop_id']; ?>">
                                        <?php echo $key['prop_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <div class="col-md-6">
                    <div class="card card-secondary">
                        <div class="card-header">
                            <h3 class="card-title">Ürün Görselleri</h3>


                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="col-md-12">

                                <?php

                                $productImg = $products->getImages($product_id);
                                //print_r($productImg);
                                foreach ($productImg as $key) {

                                ?>
                                <div class="row" style="margin:10px; padding:12px;">
                                    <a href="#" class="delete_img" image_id="<?php echo $key['image_id']; ?>"
                                        style="float:right;margin:15px;"><i class="fa fa-times"></i>Sil</a>
                                    <img src="<?php echo "../{$key['image_url']}"; ?>"
                                        style="width:150px; object-fit:scale-down;" class="img-responsive">

                                </div>
                                <?php


                                }
                                ?>



                            </div>
                            <div class="form-group">
                                <label for="inputSpentBudget">Ürün Detay Resimleri</label>
                                <input type="file" name="images[]" id="" multiple class="form-control">
                            </div>

                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <a href="#" class="btn btn-secondary">İptal</a>
                    <input type="submit" value="Güncelle" name="update_product" class="btn btn-success float-right">
                </div>
            </div>
        </form>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include "./components/footer.php"; ?>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script>
$(".hider").click(function() {
    $(this).parent().parent().parent().remove();
});

$(".delete_img").click(function() {
    let image_id = $(this).attr("image_id");
    $(this).parent().hide();
    $.ajax({
        url: "../app/ajaxs/image.php",
        method: "post",
        data: {
            image_id: image_id,
            delete_img: "1"
        },
        succes: function(a) {
            if (a) {
                bu.hide();
            }
        }
    })
});
</script>
</body>

</html>