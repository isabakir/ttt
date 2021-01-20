<?php
include "../init.php";

include "./components/left-sidebar.php";

if (isset($_POST['index'])) {

    $update = $category->updateCategory([$_POST['index'], $_POST['id']], "UPDATE categorys set category_index=? where category_id=?");
    header("location:tum-kategoriler.php?durum=ok");
    exit;
}

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Tüm Kategoriler</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#"></a></li>
                        <li class="breadcrumb-item active"></li>
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
                            <h3 class="card-title"></h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Kategori ID</th>
                                        <th>Kategori Adı</th>
                                        <th>Kategori Sırası</th>

                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $prod = $category->getAllCategories();
                                    foreach ($prod as $val => $key) {
                                        $urun_id = $key['category_id'];
                                        $urun_kod = $key['category_name'];
                                        $index = $key['category_index'];





                                    ?>
                                    <tr>
                                        <td><?php echo $urun_id; ?></td>
                                        <td><?php echo $urun_kod; ?></td>
                                        <td>
                                            <form method="POST" aciotn="">
                                                <input type="hidden" name="id" value=" <?php echo $urun_id; ?>">
                                                <input type="number" name="index" placeholder="<?php echo $index; ?>"
                                                    value=" <?php echo $index; ?>">
                                                <button class="btn btn-success">Güncelle</button>
                                            </form>

                                        </td>
                                        <td><a class="btn btn-warning"
                                                href="kategori-sil.php?id=<?php echo $urun_id; ?>">Sil</a>


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
</body>

</html>