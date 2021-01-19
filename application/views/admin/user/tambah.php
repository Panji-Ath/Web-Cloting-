<?php

// notifikasi error
echo validation_errors('<div class="alert alert-warning">', '</div>');

// form open
echo form_open(base_url('admin/user/tambah'), ' class="form-horizontal"');

?>
<div class="card-body">
    <div class="form-group">
        <label class="col-md-2 control-label">Nama Pengguna</label>
        <div class="col-md-5">
            <input type="text" name="nama" class="form-control" placeholder="Nama Pengguna" value="<?php echo set_value('nama') ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">Email Pengguna</label>
        <div class="col-md-5">
            <input type="email" name="email" class="form-control" placeholder="Email Pengguna" value="<?php echo set_value('email') ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">Username</label>
        <div class="col-md-5">
            <input type="text" name="username" class="form-control" placeholder="Username" value="<?php echo set_value('username') ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">Password</label>
        <div class="col-md-5">
            <input type="password" name="password" class="form-control" placeholder="Password" value="<?php echo set_value('password') ?>" required>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">Level Hak Akses</label>
        <div class="col-md-5">
            <select name="akses_level" class="form-control">
                <option value="Admin">Admin</option>
                <option value="User">User</option>
            </select>
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