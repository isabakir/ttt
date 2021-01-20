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
                    <h1>Kategori Ekle</h1>
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
        <form method="POST" enctype="multipart/form-data" action="../app/function/addCategory.php">
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
                                <label for="inputName">Kategori Adı</label>
                                <input type="text" id="inputName" required name="category_name" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="inputStatus">Üst Kategorisi(Boş bırakılırsa Ana kategori sayılır.)</label>
                                <select id="inputStatus" name="category_master_id" class="form-control custom-select">
                                    <option value="0" selected>Seçiniz</option>
                                    <?php
                                    $getCategory = $category->getMain();
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
                                <label for="inputName">Kategori Görseli</label>
                                <input type="file" id="inputName" required name="category_picture" class="form-control">
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
                    <input type="submit" value="Ekle" name="add_category" class="btn btn-success float-right">
                </div>
            </div>
        </form>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<footer class="main-footer">
    <div class="float-right d-none d-sm-block">
        <b>Version</b> 3.1.0-pre
    </div>
    <strong>Copyright &copy; 2014-2020 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
</footer>

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
</body>

</html>