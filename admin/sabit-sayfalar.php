<?php
include "../init.php";
include "./components/left-sidebar.php";

if (isset($_POST['addContent'])) {
    $id = $_POST['id'];
    $content = $_POST['static_content'];
    $param = [$content, $id];
    $addContent = $pages->getStaticPages($param, "UPDATE sabit_sayfalar set content=? where id=?");
}


?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Sabit Sayfalar</h1>
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
        <div class="row">
            <div class="col-md-12">
                <form>
                    <select name="static_id">
                        <?php $getStaticPages = $pages->getStaticPages([], "SELECT * FROM sabit_sayfalar");
                        foreach ($getStaticPages as $key) {

                        ?>
                        <option value="<?php echo $key['id']; ?>"><?php echo $key['name']; ?></option>
                        <?php
                        }
                        ?>

                    </select>
                    <button class="btn btn-success">Göster</button>
                </form>


            </div>
            <div class="col-md-12">
                <div class="card card-outline card-info">
                    <div class="card-header">
                        <h3 class="card-title">
                            <?php
                            if (isset($_GET['static_id'])) {
                                $getContent = $pages->getStaticPages([$_GET['static_id']], "SELECT * FROM sabit_sayfalar where id=?");
                                $text = $getContent[0]['content'];
                                $name = $getContent[0]['name'];
                            } else {
                                $text = "Önce Sabit sayfa seçiniz.";
                            }


                            ?>
                            <?php echo $name . " Sayfası"; ?>
                        </h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">

                        <form method="post">
                            <input type="hidden" name="id" value="<?php echo $_GET['static_id'] ?>">


                            <textarea id="summernote" name="static_content">
                                <?php echo $text; ?>
                            </textarea>
                            <button name="addContent" class="btn btn-success">Düzenle</button>
                        </form>
                    </div>

                </div>
            </div>
            <!-- /.col-->
        </div>
        <!-- ./row -->

        <!-- ./row -->
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
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- CodeMirror -->
<script src="plugins/codemirror/codemirror.js"></script>
<script src="plugins/codemirror/mode/css/css.js"></script>
<script src="plugins/codemirror/mode/xml/xml.js"></script>
<script src="plugins/codemirror/mode/htmlmixed/htmlmixed.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

<script>
$(function() {
    // Summernote
    $('#summernote').summernote()

    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
        mode: "htmlmixed",
        theme: "monokai"
    });
})
</script>
</body>

</html>