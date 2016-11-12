<!DOCTYPE html>
<html lang="en"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shark | Produsen Alat Teknik</title>
    <!-- for Google -->
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <meta name="copyright" content="" />
    <meta name="description" content="<?php echo (isset($meta_description)) ? $meta_description: ''; ?>" />
    <meta name="application-name" content="" />

    <!-- for Facebook -->
    <meta property="og:title" content="<?php echo (isset($meta_title)) ? $meta_title: ''; ?>" />
    <meta property="og:type" content="<?php echo (isset($meta_type)) ? $meta_type: ''; ?>" />
    <meta property="og:image" content="<?php echo (isset($meta_image)) ? $meta_image : base_url('uploads/site/logo.png') ; ?>" />
    <meta property="og:url" content="<?php echo current_url();?>"/>
    <meta property="og:description" content="<?php echo (isset($meta_description)) ? $meta_description : ''; ?>" />

    <!-- for Twitter -->
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="<?php echo (isset($meta_title)) ? $meta_title : ''; ?>" />
    <meta name="twitter:description" content="<?php echo (isset($meta_description)) ? $meta_description : ''; ?>" />
    <meta name="twitter:image" content="<?php echo (isset($meta_image)) ? $meta_image : ''; ?>" />
    <!--styles-->
    <link rel="stylesheet" href="<?php asset_url('shark'); ?>fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php asset_url('shark'); ?>js/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="<?php asset_url('shark'); ?>js/vendor/jquery-custom-scrollbar/jquery.custom-scrollbar.css">
    <link rel="stylesheet" href="<?php asset_url('shark'); ?>js/vendor/slicknav/slicknav.css"></script>
    <link rel="stylesheet" href="<?php asset_url('shark'); ?>fonts/content/fonts.css">
    <link rel="stylesheet" href="<?php asset_url('shark'); ?>main.css">
    <!--end styles-->
    <!--scripts-->
    <script src="<?php asset_url('shark'); ?>js/vendor/jquery-1.10.2.min.js"></script>
    <script src="<?php asset_url('shark'); ?>js/bootstrap.min.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/superfish/js/superfish.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/slicknav/jquery.slicknav.min.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/jquery.easing.1.3.min.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/jquery.sticky.js"></script>
    <script src="<?php asset_url('shark'); ?>js/vendor/jquery.easing.1.3.min.js"></script>
    <script src="<?php asset_url('shark'); ?>js/main.js"></script>
    <!--end scripts-->
    <script type="text/javascript">var switchTo5x=true;</script>
    <script type="text/javascript" id="st_insights_js" src="http://w.sharethis.com/button/buttons.js?publisher=87ee8732-a608-4c6e-be2e-4553d4447bf0"></script>
    <script type="text/javascript">stLight.options({publisher: "87ee8732-a608-4c6e-be2e-4553d4447bf0", doNotHash: false, doNotCopy: false, hashAddressBar: false});</script>
</head>
<body>
    <header id="header-wrapper">
        <div id="top-header" class="desktop-only">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div id="contact-top">
                            <ul>
                                <li><a href="mailto:<?php site_option('opt_contact_email'); ?>"><img src="<?php asset_url('shark'); ?>images/icon-mail-orange.png" /> <?php site_option('opt_contact_email'); ?></a></li>
                                <li><a href="tel:<?php site_option('opt_contact_phone'); ?>"><img src="<?php asset_url('shark'); ?>images/icon-phone-orange.png" /> <?php site_option('opt_contact_phone'); ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="social-media-icon text-right">
                            <?php $socialmedia_navs = socialmedia_navs(); ?>
                            <ul>
                                <?php foreach ($socialmedia_navs as $link => $icon) : ?>
                                    <?php if(get_option($link)): ?>
                                        <li><a href="<?php echo get_option($link); ?>"><i class="<?php echo $icon; ?>"></i></a></li>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="main-menu-wrapper">
            <div class="container">
                <div class="clearfix">
                    <div id="logo-bg">
                        <div class="pull-left logo">
                            <a href="<?php echo site_url(); ?>"><img src="<?php site_option('opt_logo'); ?>" alt="<?php site_option('opt_title'); ?>"/></a>
                        </div>
                    </div>

                    <div class="pull-right clearfix">
                        <div id="mobile-nav" class="mobile-only"></div>
                        <div id="main-menu" class="navbar-collapse collapse">
                            <nav id="main-navigation" class="desktop-only">
                                <ul class="sf-menu nav navbar-nav">
                                    <li><a href="<?php echo site_url(); ?>">Home</a></li>
                                    <li><a href="<?php echo site_url('about'); ?>">About</a></li>
                                    <li><a href="#">Product</a>
                                        <ul>
                                            <?php $product_categories = product_categories(); ?>
                                            <?php foreach ($product_categories as $product_category) : ?>
                                                <li><a href="<?php echo site_url('category_product/'.$product_category['category_slug'].'/1'); ?>"><?php echo $product_category['category_name']; ?></a></li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </li>
                                    <li><a href="#">Support</a>
                                        <ul class="submenu">
                                            <li><a href="<?php echo site_url('support'); ?>">New Product Development</a></li>
                                            <li><a href="<?php echo site_url('aftersales'); ?>">After Sales Service</a></li>
                                            <li><a href="<?php echo site_url('sales_team'); ?>">Sales Engineer</a></li>
                                            <li><a href="<?php echo site_url('cs_form'); ?>">Customer Service Form</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<?php echo site_url('shark_career'); ?>">Career</a></li>
                                    <li><a href="<?php echo site_url('contact_us'); ?>">Contact</a></li>
                                    <li class="search"><a href="#"><img style="width:19px;" src="<?php asset_url('shark'); ?>images/icon-searrch.png" /></a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="search-form">
                            <form>
                                <input type="text" placeholder="Search . . ." />
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
