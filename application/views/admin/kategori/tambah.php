<?php

// notifikasi error
echo validation_errors('<div class="alert alert-warning">', '</div>');

// form open
echo form_open(base_url('admin/kategori/tambah'), ' class="form-horizontal"');

?>
<div class="card-body">
    <div class="form-group">
        <label class="col-md-2 control-label">Nama Kategori</label>
        <div class="col-md-5">
            <input type="text" name="nama_kategori" class="form-control" placeholder="Nama Kategori" value="<?php echo set_value('nama_kategori') ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">Urutan</label>
        <div class="col-md-5">
            <input type="number" name="urutan" class="form-control" placeholder="Urutam" value="<?php echo set_value('urutan') ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label"></label>
        <div class="col-md-5">
            <button type="submit" name="submit" class="btn btn-success btn-lg"><i class="fa fa-save"></i> Simpan </button>
            <button type="reset" name="reset" class="btn btn-info btn-lg"><i class="fa fa-times"></i> Reset </button>
        </div>
    </div>
</div>
<?php echo form_close(); ?>