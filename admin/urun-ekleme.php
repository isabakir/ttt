<?php
include "../init.php";

include "./components/left-sidebar.php";

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Ürün Ekleme</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Blank Page</li>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputName">Ürün Kodu(Ürün grubuna ait renklerin tek sayfada gösterimi için
                                    gereklidir.)</label>
                                <input type="text" id="inputName" required name="product_code" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputName">Ürün Adı</label>
                                <input type="text" id="inputName" required name="product_name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputDescription">Ürün Açıklaması</label>
                                <textarea id="inputDescription" class="form-control" required name="product_description"
                                    rows="4"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="inputClientCompany">Ürün Fiyat(Virgül yerine nokta kullanın.)</label>
                                <input type="text" id="inputClientCompany" required name="product_price"
                                    class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="inputStatus">Ürün Alt Kategorisi</label>
                                <select id="inputStatus" name="product_category_id" required
                                    class="form-control custom-select">

                                    <?php
                                    $getCategory = $category->getAllCategories();
                                    foreach ($getCategory as $val => $key) {
                                        // echo $key['category_master_id'];

                                        if ($key['category_master_id'] != "" && $key['category_master_id'] != 0) {
                                            //echo "içerde";
                                            $main_ids = $category->getCategory($key['category_master_id']);
                                            // print_r($main_ids);
                                            $master_name = $main_ids[0]['category_name'];
                                        } else {
                                            continue;
                                        }

                                    ?>
                                    <option value="<?php echo $key['category_id']; ?>">
                                        <?php echo $key['category_name'] . " ({$master_name})"; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputProjectLeader">Ürün Stok Adeti</label>
                                <input type="text" id="inputProjectLeader" name="product_stok" required
                                    class="form-control">
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
                            <div class="form-group">
                                <label for="inputStatus">Ürün Ana Kategorisi</label>
                                <select id="inputStatus" name="product_main_id" required
                                    class="form-control custom-select">

                                    <?php
                                    $getMainCat = $category->getMain();
                                    foreach ($getMainCat as $val => $key) {
                                    ?>
                                    <option value="<?php echo $key['category_id']; ?>">
                                        <?php echo $key['category_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="form-group ">
                                <div class="row">
                                    <label for="" id="add-prop" style="cursor:pointer;">Ürün Özellikleri ekle <i
                                            class="fa fa-plus"></i></label>
                                </div>
                                <div class="form-group props-area"></div>

                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <div class="col-md-6">
                    <div class="card card-secondary">
                        <div class="card-header">
                            <h3 class="card-title">Ürün Görselleri(Ölçüler 640px 850px ve 2MB'dan az olmalıdır.)</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">

                            <div class="form-group">
                                <label for="inputSpentBudget">Ürün Detay Resimleri(Resimlerin boyutları 2MB'dan az
                                    olmalı.Yardımcı web sitesi:<a href="https://compressjpeg.com/tr/"
                                        target="_blank">https://compressjpeg.com/tr/</a>)</label>
                                <input type="file" name="images[]" id="" multiple required class="form-control">
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
                    <input type="submit" value="Ekle" name="add_product" class="btn btn-success float-right">
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
$("#add-prop").click(function() {
    const addeds = `<div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title" style="width:100%;">Özellik Alanı <i class="fa fa-times ozellik-close" style="float:right;cursor:pointer;"></i></h3>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-4">
                  <label>Özellik Detayı(L,S,M)</label>
                    <input type="text" name="props_detail[]" required class="form-control" placeholder=".col-3">
                  </div>
                  <div class="col-4">
                  <label>Adet</label>
                    <input type="text" name="props_amount[]" required class="form-control" placeholder=".col-4">
                  </div>
                 
                </div>
              </div>
              <!-- /.card-body -->
            </div>`;
    $(".props-area").append(addeds);
});

$(document).on("click", ".ozellik-close", function() {
    $(this).parent().parent().parent().remove();
});
</script>
</body>

</html>