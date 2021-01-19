<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Sidebar Menu -->
    <!-- Left navbar links -->
    <a href="<?= base_url('admin/dasbor') ?>" class="brand-link">
        <span class="brand-text font-weight-light"><b>A</b>nneroger <b>O</b>lshop</span>
    </a>
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            <img src="<?= base_url() ?>assets/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
            <p style="color: azure;"><?php echo $this->session->userdata('akses_level'); ?>
                <a href="#" class="d-block"><?php echo $this->session->userdata('nama'); ?> </a></p>
            <small style="color: azure;"><?php echo date('d M Y') ?></small>
        </div>
    </div>
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


            <!-- MENU DASHBOARD -->
            <li class="nav-item has-treeview menu-open">
                <a href="<?= base_url('admin/dasbor') ?>" class="nav-link active">
                    <i class=" fas fa-tachometer-alt"></i>
                    <p>
                        DASHBOARD
                    </p>
                </a>
            </li>
            <!-- MENU TRANSAKSI -->
            <li class="nav-item has-treeview">
                <a href="<?= base_url('admin/transaksi') ?>" class="nav-link ">
                    <i class=" fas fa-check"></i>
                    <p>
                        TRANSAKSI
                    </p>
                </a>
            </li>
            <!-- Menu Produk -->
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="nav-icon fa fa-sitemap"></i>
                    <p>
                        PRODUK
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="<?= base_url('admin/produk') ?>" class="nav-link">
                            <i class="fa fa-table"></i>
                            <p>Data Produk</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('admin/produk/tambah') ?>" class="nav-link">
                            <i class="fa fa-plus"></i>
                            <p>Tambah Produk</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('admin/kategori') ?>" class="nav-link">
                            <i class="fa fa-tags"></i>
                            <p>Kategoori Produk</p>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- MENU Rekening -->
            <li class="nav-item">
                <a href="<?= base_url('admin/rekening') ?>" class="nav-link">
                    <i class="nav-icon far fa-envelope"></i>
                    <p>DATA REKENING</p>
                </a>
            </li>
            <!-- Menu User -->
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="nav-icon fa fa-lock"></i>
                    <p>
                        PENGGUNA
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="<?= base_url('admin/user') ?>" class="nav-link">
                            <i class="fa fa-table"></i>
                            <p>Data Pengguna</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('admin/user/tambah') ?>" class="nav-link">
                            <i class="fa fa-plus"></i>
                            <p>Tambah Pengguna</p>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- Menu konfigurasi -->
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="nav-icon fa fa-wrench"></i>
                    <p>
                        KONFIGURASI
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="<?= base_url('admin/konfigurasi') ?>" class="nav-link">
                            <i class="fa fa-home"></i>
                            <p>Konfigurasi Umum</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('admin/konfigurasi/logo') ?>" class="nav-link">
                            <i class="fa fa-image"></i>
                            <p>Konfigurasi Logo</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('admin/konfigurasi/icon') ?>" class="nav-link">
                            <i class="fa fa-home"></i>
                            <p>Konfigurasi Icon</p>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
    <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1><?= $title ?></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">DataTables</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <!-- /.card-header -->
                        <div class="card-body">