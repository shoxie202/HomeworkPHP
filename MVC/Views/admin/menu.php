<!-- Sidebar -->
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

     <!-- Sidebar - Brand -->
     <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
         <div class="sidebar-brand-icon rotate-n-15">
             <i class="fas fa-laugh-wink"></i>
         </div>
         <div class="sidebar-brand-text mx-3">CoTra<sup>Tiem</sup></div>
     </a>

     <!-- Divider -->
     <hr class="sidebar-divider my-0">

     <!-- Divider -->
     <hr class="sidebar-divider">

     <!-- Heading -->
     <div class="sidebar-heading">
         Chức năng
     </div>

     <!-- Nav Item - Pages Collapse Menu -->
     <?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
     <li class="nav-item">
         <a class="nav-link" href="index.php">
             <i class="fas fa-fw fa-chart-area"></i>
             <span>Trang chủ</span></a>
     </li>
     <?php } ?>
     <!-- Nav Item - Charts -->
     <?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
     <li class="nav-item">
         <a class="nav-link" href="?mod=nguoidung">
             <i class="fas fa-fw fa-table"></i>
             <span>Quản lý Tài khoản</span></a>
     </li>
     <?php } ?>

 </ul>
 <!-- End of Sidebar -->
