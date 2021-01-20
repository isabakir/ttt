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
                    <h1>Tüm Ürünler</h1>
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">DataTable with minimal features & hover style</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example2" class="table-striped table-bordered table-sm" cellspacing="0"
                                width="100%">
                                <thead>
                                    <tr>
                                        <th>Ürün ID</th>
                                        <th>Ürün Kodu</th>
                                        <th>Ürün Adı</th>
                                        <th>Ürün Fiyatı</th>
                                        <th>Ürün Stoğu</th>
                                        <th>Ürün Eklenme Tarihi</th>
                                        <th>Durumu</th>
                                        <th>Kategori</th>
                                        <th>İndirim</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $prod = $products->getAllProducts();
                                    foreach ($prod as $val => $key) {
                                        $urun_id = $key['product_id'];
                                        $urun_kod = $key['product_code'];
                                        $urun_ad = $key['product_name'];
                                        $urun_fiyat = $key['product_price'];
                                        $urun_stok = $key['product_stok'];
                                        $urun_eklenme_tarihi = $key['product_added_date'];

                                        $urun_kat = $category->getCategory($key["product_main_id"])[0]['category_name'] . "/" . $category->getCategory($key["product_category_id"])[0]['category_name'];

                                        if ($key['hide'] == 0) {
                                            $durum = 'Aktif';
                                        } else {
                                            $durum = "Pasif";
                                        }
                                        $indirim = $key['product_discount'];


                                    ?>
                                    <tr>
                                        <td><?php echo $urun_id; ?></td>
                                        <td><?php echo $urun_kod; ?></td>
                                        <td><?php echo $urun_ad; ?></td>
                                        <td><?php echo $urun_fiyat; ?></td>
                                        <td><?php echo $urun_stok; ?></td>
                                        <td><?php echo $urun_eklenme_tarihi; ?></td>
                                        <td><?php echo $durum; ?></td>
                                        <td><?php echo $urun_kat; ?></td>
                                        <td><?php echo $indirim; ?></td>
                                        <td><a class="btn btn-warning"
                                                href="urun-sil.php?id=<?php echo $urun_id; ?>">Sil</a>
                                            <a class="btn btn-success"
                                                href="urun-guncelle.php?id=<?php echo $urun_id; ?>">Güncelle</a>

                                        </td>

                                    </tr>

                                    <?php

                                    }
                                    ?>

                                </tbody>

                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->


                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
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
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function() {
    $("#example2").DataTable();
});
</script>
</body>

</html>