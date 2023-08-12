<header class="header-one header-two">
    <div class="header-top-two">
        <div class="container text-center">
            <div class="row">
                <div class="col-sm-12">
                    <div class="middel-top">
                        <div class="left floatleft">
                            <p><i class="mdi mdi-clock"></i> T2 - CN : 08:00-19:00</p>
                        </div>
                    </div>
                    <div class="middel-top clearfix">
                        <ul class="clearfix right floatright">
                            <li>
                                <a><i class="mdi mdi-account"></i></a>
                                <ul>
                                    <?php  if(isset($_SESSION['login'])) { ?>
                                    <li><b>Chào <?php echo $_SESSION['login']['Ho']?> <?php echo $_SESSION['login']['Ten']?></b></li>
                                    <li><a href="?act=taikhoan&xuli=account">Tài khoản</a></li>
                                    <li><a href="?act=taikhoan&xuli=dangxuat">Đăng xuất</a></li>
                                        <?php
                                        if(isset($_SESSION['isLogin_Admin'])) { ?>
                                    <li><a href="admin/?mod=login">Trang quản lý</a></li>
                                        <?php }
                                    }else{ ?>
                                    <li><b>Khách hàng</b></li>
                                    <li><a href="?act=taikhoan">Đăng nhập</a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                        </ul>
                        <div class="right floatright widthfull">
                            <form action="?act=shop" method="post">
                                <button type="submit"><i class="mdi mdi-magnify"></i></button>
                                <input type="text" placeholder="Tìm kiếm..." name="keyword" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <div class="row">
            <div class="col-sm-2">
                <div class="logo">
                    <a href="?act=home"><img src="public/img/logo-1.png" alt="Sellshop" /></a>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="header-middel">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="?act=home">Trang chủ</a></li>
                                <li><a href="?act=shop">Cửa Hàng</a>
                                    <ul class="magamenu">
                                        <li class="banner"></li>
                                        <?php    $i = 1; foreach ($data_chitietDM as $row) { ?>
                                        <li>
                                            <a href="?act=shop&sp=<?php echo $i?>">
                                                <h5><?php echo $data_danhmuc[$i-1]['TenDM'] ?></h5>
                                            </a>
                                            <ul>
                                                <?php foreach ($row as $value) { ?>
                                                <li><a
                                                        href="?act=shop&sp=<?php echo $value['MaDM']?>&loai=<?php echo $value['TenLSP']?>"><?php echo $value['TenLSP']?></a>
                                                </li>
                                                <?php }?>
                                            </ul>
                                        </li>
                                            <?php $i++; 
                                        } ?>
                                        <li class="banner"></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="?act=checkout">Thanh Toán</a>
                                </li>
                                <li><a href="?act=about">Giới thiệu</a></li>
                                <li><a href="?act=contact">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- mobile menu start -->
                    <div class="mobile-menu-area">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul>
                                    <li><a href="?act=home">Trang chủ</a>
                                    </li>
                                    <li><a href="?act=shop">Cửa hàng</a>
                                        <ul>
                                            <?php $i = 1; foreach ($data_chitietDM as $row) { ?>
                                            <li>
                                                <a href="?act=shop&sp=<?php echo $i?>">
                                                    <h5><?php echo $data_danhmuc[$i-1]['TenDM'] ?></h5>
                                                </a>
                                                <ul>
                                                    <?php foreach ($row as $value) { ?>
                                                    <li><a
                                                            href="?act=shop&sp=<?php echo $value['MaDM']?>&loai=<?php echo $value['TenLSP']?>"><?php echo $value['TenLSP']?></a>
                                                    </li>
                                                    <?php }?>
                                                </ul>
                                            </li>
                                                <?php $i++; 
                                            } ?>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="?act=checkout">Thanh Toán</a>
                                    </li>
                                    <li><a href="?act=about">Giới thiệu</a></li>
                                    <li><a href="?act=contac">Liên hệ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="cart-itmes">
                    <a class="cart-itme-a" href="?act=cart">
                        <?php 
                            $soluong = 0;
                            $thanhtien = 0;
                        if(isset($_SESSION['sanpham'])) {
                            foreach ($_SESSION['sanpham'] as $value) {
                                $soluong +=1;
                                $thanhtien +=$value['ThanhTien'];
                            }
                        }
                        ?>
                        <i class="mdi mdi-cart"></i>
                        <?php echo $soluong?> SP : <strong><?php echo number_format($thanhtien)?> VNĐ</strong>
                    </a>
                    <div class="cartdrop">
                        <?php if(isset($_SESSION['sanpham'])) {
                            foreach ($_SESSION['sanpham'] as $value) { ?>
                        <div class="sin-itme clearfix">
                            <a href="?act=cart&xuli=deleteall&id=<?php echo $value['MaSP'] ?>"><i class="mdi mdi-close"
                                    title="Remove this product"></i></a>
                            <a class="cart-img" href="?act=cart"><img src="public/<?php echo $value['HinhAnh1']?>" alt="" /></a>
                            <div class="menu-cart-text">
                                <a href="?act=detail&id=<?php echo $value['MaSP']?>">
                                    <h5><?php echo $value['TenSP']?></h5>
                                </a>
                                <b>Số lượng: <?php echo $value['SoLuong']?></b>
                                <strong><?php echo number_format($value['ThanhTien'])?> VNĐ</strong>
                            </div>
                        </div>
                            <?php }
                        } ?>
                        <div class="total">
                            <span>Tổng <strong>= <?php echo number_format($thanhtien)?> VNĐ</strong></span>
                        </div>
                        <a class="goto" href="index.php?act=cart">Đến giỏ hàng</a>
                        <a class="out-menu" href="index.php?act=checkout">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
