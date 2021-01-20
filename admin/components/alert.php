<?php

if (isset($_GET['durum'])) {
    if ($_GET['durum'] == 'ok') {
        $alert = "success";
        $mes = "Başarılı";
        $icon = "icon fas fa-check";
    } else {
        $alert = "danger";
        $mes = "Hata";
        $icon = "icon fas fa-ban";
    }

?>
<div class="alert alert-<?php echo $alert; ?> alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h5><i class="<?php echo $icon; ?>"></i> <?php echo $mes; ?>!</h5>
    <?php if (isset($_GET['message'])) {
            echo $_GET['message'];
        } ?>
</div>
<?php
}

?>