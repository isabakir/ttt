<?php
include "../init.php";

include "./components/left-sidebar.php";




if (isset($_POST['id'])) {

    echo "<pre>";
    if (isset($_FILES['picture']) && !empty($_FILES['picture']['tmp_name'])) {
        echo 1;
        $dosya = $_FILES['picture']['tmp_name'];
        $file_name = $_FILES['picture']['name'];
        $file_name = str_replace(" ", "-", $file_name);
        $url = 'resimler/anasayfa/' . $file_name;

        copy($dosya, '../resimler/anasayfa/' . $file_name);
        $query = "update anasayfa set picture=?, text1=?, text2=?, text3=?, text4=?, text5=?, button_name=? where id=?";
        $param = [
            $url,
            $_POST['text1'],
            $_POST['text2'],
            $_POST['text3'],
            $_POST['text4'],
            $_POST['text5'],
            $_POST['button_name'],
            $_POST['id']
        ];
    } else {
        $query = "update anasayfa set text1=?, text2=?, text3=?, text4=?, text5=?, button_name=? where id=?";
        $param = [
            $_POST['text1'],
            $_POST['text2'],
            $_POST['text3'],
            $_POST['text4'],
            $_POST['text5'],
            $_POST['button_name'],
            $_POST['id']
        ];
    }

    $anasayfa->getSlider($param, $query);


    header("location:anasayfa-ayar.php?durum=ok");
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
                        <div class="card-body" style="overflow-x:scroll;">
                            <table id="example2" class="table-striped table-bordered table-sm" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Ad</th>
                                        <th>Resim</th>
                                        <th>Link</th>
                                        <th>1.Yazı</th>
                                        <th>2.Yazı</th>
                                        <th>3.Yazı</th>
                                        <th>4.Yazı</th>
                                        <th>5.Yazı</th>
                                        <th>Button</th>
                                        <th>Güncelle</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $prod = $anasayfa->getSlider([], "SELECT * FROM anasayfa");
                                    foreach ($prod as $val => $key) {
                                        $name = $key['name'];
                                        $resim = $key['picture'];
                                        $link = $key["link"];
                                        $text1 = $key['text1'];
                                        $text2 = $key['text2'];
                                        $text3 = $key['text3'];
                                        $text4 = $key['text4'];
                                        $text5 = $key['text5'];
                                        $button = $key['button_name'];



                                    ?>
                                    <tr>
                                        <form method="POST" enctype="multipart/form-data">
                                            <td><?php echo $name; ?></td>
                                            <td><input type="file" name="picture"> <img
                                                    src="<?php echo "../" . $resim; ?>"
                                                    style="width:100%; object-fit:scale-down;"></td>
                                            <td> <input type="text" value="<?php echo $link; ?>"></td>
                                            <td><input name="text1" value="<?php echo $text1; ?>"></td>
                                            <td><input name="text2" <?php if ($text2 == "") {
                                                                            echo "disabled";
                                                                        } ?> value="<?php echo $text2; ?>"></td>
                                            <td> <input name="text3" <?php if ($text3 == "") {
                                                                                echo "disabled";
                                                                            } ?> value="<?php echo $text3; ?>"></td>
                                            <td><input name="text4" <?php if ($text4 == "") {
                                                                            echo "disabled";
                                                                        } ?> value="<?php echo $text4; ?>"></td>
                                            <td><input name="text5" <?php if ($text5 == "") {
                                                                            echo "disabled";
                                                                        } ?> value="<?php echo $text5; ?>"></td>
                                            <td> <input name="button_name" value="<?php echo $button; ?>"></td>
                                            <td>
                                                <input type="hidden" name="id" value="<?php echo $key['id']; ?>">
                                                <button class="btn btn-success">Güncelle</button>

                                            </td>
                                        </form>
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