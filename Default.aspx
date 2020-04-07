<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Luciana Imoveis</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="css\bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css\animate.min.css">
    <link rel="stylesheet" type="text/css" href="css\bootstrap-submenu.css">
    <link rel="stylesheet" type="text/css" href="css\bootstrap-select.min.css">
    <link rel="stylesheet" href="css\leaflet.css" type="text/css">
    <link rel="stylesheet" href="css\map.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="fonts\font-awesome\css\font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts\flaticon\font\flaticon.css">
    <link rel="stylesheet" type="text/css" href="fonts\linearicons\style.css">
    <link rel="stylesheet" type="text/css" href="css\jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="css\dropzone.css">
    <link rel="stylesheet" type="text/css" href="css\slick.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="css\style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="css\skins\default.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="img\favicon.ico" type="image/x-icon">

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800%7CPlayfair+Display:400,700%7CRoboto:100,300,400,400i,500,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="css\ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js\ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
<div class="page_loader"></div>

<!-- Main header start -->
<header class="main-header header-transparent">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand logo" href="index.html">
                <img src="img\logos\logo.png" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item ">
                        <a class="nav-link " href="#banner">
                           HOME
                        </a>
                        
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#listimovel">
                            Imoveis
                        </a>
                       
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="#contato">Contato </a>
                       
                    </li>
                   
                </ul>
            </div>

            
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Banner start -->
<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item banner-max-height active">
                <img class="d-block w-100" src="img\banner\visita-cristo-redentor.jpg" alt="banner-1"/>
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <h3 class="text-uppercase" data-animation="animated fadeInDown delay-5s">Bem Vindo á Luciana Imoveis </h3>
                            <p data-animation="animated fadeInUp delay-5s">
                                Conheça tudo que há de melhor no Rio de Janeiro em um só lugar
                            </p>

                           
                        </div>
                    </div>
                </div>
            </div>

            <%--<div class="carousel-item banner-max-height">
                <img class="d-block w-100" src="img\banner\SITE-SOLAR-DE-BELEM.jpg" alt="banner-1">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <h3 class="text-uppercase" data-animation="animated fadeInDown delay-05s">Solar de Belem</h3>
                            <p data-animation="animated fadeInUp delay-10s">
                                elegância e a inovação fazem parte do projeto arquitetônico do Solar de Belém. Localizado em um dos bairros mais charmosos e tradicionais da Zona Norte do Rio, a Tijuca
                            </p>

                            <div class="inline-search-area ml-auto mr-auto">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="carousel-item banner-max-height">
                <img class="d-block w-100" src="img\banner\banner-1.jpeg" alt="banner-1">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <h3 class="text-uppercase" data-animation="animated fadeInDown delay-05s">Terrazas Tijuca</h3>
                            <p data-animation="animated fadeInUp delay-10s">
                                This is real estate website template based on Bootstrap 4 framework.
                            </p>

                            <div class="inline-search-area ml-auto mr-auto">
                                <div class="row animated fadeInUp">
                                    <div class="col-xl-4 col-sm-4 col-6 search-col">
                                        <i class="fa fa fa-dot-circle-o icon-append"></i>
                                        <input type="text" name="search" class="form-control has-icon" placeholder="I'm looking for a ...">
                                    </div>
                                    <div class="col-xl-3 col-sm-3 col-6 search-col middle-col-1">
                                        <select class="selectpicker search-fields" name="property-status">
                                            <option>Property Status</option>
                                            <option>For Sale</option>
                                            <option>For Rent</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-3 col-sm-3 col-8 search-col middle-col-2">
                                        <i class="fa fa-map-marker icon-append"></i>
                                        <input type="text" name="location" class="form-control has-icon" placeholder="Location">
                                    </div>
                                    <div class="col-xl-2 col-sm-2 col-4 search-col">
                                        <button class="btn button-theme btn-search btn-block">
                                            <i class="fa fa-search"></i><strong>Find</strong>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
        <a class="carousel-control-prev" href="#bannerCarousole" role="button" data-slide="prev">
            <span class="slider-mover-left" aria-hidden="true">
                <i class="fa fa-angle-left"></i>
            </span>
        </a>
        <a class="carousel-control-next" href="#bannerCarousole" role="button" data-slide="next">
            <span class="slider-mover-right" aria-hidden="true">
                <i class="fa fa-angle-right"></i>
            </span>
        </a>
    </div>
</div>
<!-- banner end -->

<!-- Featured properties start -->
<div class="featured-properties content-area">
    <div class="container" id="listimovel">
        <!-- Main title -->
        <div class="main-title">
            <h1>DESTAQUES</h1>
            <p>Os melhores imoveis do Rio em um só lugar </p>
        </div>
        <ul class="list-inline-listing filters filteriz-navigation">
             <li class="active btn filtr-button filtr" data-filter="all">Todos</li>
            <li data-filter="1" class="btn btn-inline filtr-button filtr">Lançamentos</li>
            <li data-filter="2" class="btn btn-inline filtr-button filtr">Ofertas</li>
            <li data-filter="3" class="btn btn-inline filtr-button filtr">Casas e Office</li>
        </ul>
     
         <div class="row filter-portfolio">
            <div class="cars">
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="1">
                    <div class="property-box">
                        <div class="property-thumbnail">
                            <a href="IlhaPura.html" class="property-img">
                                <div class="listing-badges">
                                    <span class="featured">Ofertas</span>
                                </div>
                                <div class="price-ratings-box">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>

                                <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block w-100" src="img\empreendimentos\IlhaPura-destaques\ilha1.jpg" alt="properties">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="img\empreendimentos\IlhaPura-destaques\ilha2.jpg" alt="properties">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="img\empreendimentos\IlhaPura-destaques\ilha3.jpg" alt="properties">
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="IlhaPura.aspx">Ilha Pura</a>
                            </h1>
                            <div class="location">
                                <a href="IlhaPura.aspx">
                                    <i class="fa fa-map-marker"></i>Av. Salvador Allende, 3200
                                </a>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <i class="flaticon-furniture"></i> 2 e 3 Quartos
                                </li>
                                <li>
                                    <i class="flaticon-holidays"></i> 2 a 3 Banheiros
                                </li>
                                <li>
                                    <i class="flaticon-square"></i> 90 a 180m²
                                </li>
                                <li>
                                    <i class="flaticon-vehicle"></i> 1 Vaga
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="1">
                    <div class="property-box">
                        <div class="property-thumbnail">
                            <a href="Icono.html" class="property-img">
                                <div class="listing-badges">
                                    <span class="featured">Lançamento</span>
                                </div>
                                <div class="price-ratings-box">
                                    <p class="price">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators3" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators3" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block w-100" src="img\empreendimentos\Soho-destaques\soho2.jpg" alt="properties">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="img\empreendimentos\Soho-destaques\soho1.jpg" alt="properties">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="img\empreendimentos\Soho-destaques\soho3.jpg" alt="properties">
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="Soho.aspx">Soho Residence</a>
                            </h1>
                            <div class="location">
                                <a href="Soho.aspx">
                                    <i class="fa fa-map-marker"></i>Avenida Embaixador Abelardo Bueno, 600 - Barra da Tijuca
                                </a>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <i class="flaticon-furniture"></i> 1,2,3 e 4 Quartos
                                </li>
                                <li>
                                    <i class="flaticon-holidays"></i> 2 Banheiros
                                </li>
                                <li>
                                    <i class="flaticon-square"></i> 68 a 205m²
                                </li>
                                <li>
                                    <i class="flaticon-vehicle"></i> 1 a 2 Vagas
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="2">
                    <div class="property-box">
                        <div class="property-thumbnail">
                            <a href="Thegrove.aspx" class="property-img">
                                <div class="listing-time opening">Lançamennto</div>
                                <div class="price-ratings-box">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <img class="d-block w-100" src="img\empreendimentos\TheGrove-destaques\1.jpg" alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="Thegrove.aspx">The Grove Resort & SPA</a>
                            </h1>
                            <div class="location">
                                <a href="Thegrove.aspx">
                                    <i class="fa fa-map-marker"></i>Grove Resort Ave, Winter Garden, FL 34787, 14501 - Winter Garden
                                </a>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <i class="flaticon-furniture"></i> 2 e 3 Suites
                                </li>
                                <li>
                                    <i class="flaticon-holidays"></i> 2 e 3 Banheiros
                                </li>
                                <li>
                                    <i class="flaticon-square"></i> 128m² até 150m²
                                </li>
                                <li>
                                    <i class="flaticon-vehicle"></i> 1 e 2 Vagas
                                </li>
                            </ul>
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="2">
                    <div class="property-box">
                        <div class="property-thumbnail">
                            <a href="life360.aspx" class="property-img">
                                <div class="listing-time opening">Oferta do mês</div>
                                <div class="price-ratings-box">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <img class="d-block w-100" src="img\empreendimentos\Life360-destaques\1.jpg" alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="life360.aspx">Life 360 Residences</a>
                            </h1>
                            <div class="location">
                                <a href="Maui.html">
                                    <i class="fa fa-map-marker"></i>Estrada do Bananal, 360 - Freguesia (Jacarepaguá)
                                </a>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <i class="flaticon-furniture"></i> 2 e 3 Quartos
                                </li>
                                <li>
                                    <i class="flaticon-holidays"></i> 2 Banheiros
                                </li>
                                <li>
                                    <i class="flaticon-square"></i> 62 a 164m²
                                </li>
                                <li>
                                    <i class="flaticon-vehicle"></i> 1 ou 2 Vagas
                                </li>
                            </ul>
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="3">
                    <div class="property-box">
                        <div class="property-thumbnail">
                            <a href="on.aspx" class="property-img">
                                <div class="listing-badges">
                                    <span class="featured">Lançamento</span>
                                </div>
                                <div class="price-ratings-box">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <img class="d-block w-100" src="img\empreendimentos\On-destaques\1.jpg" alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="on.aspx">On Botafogo</a>
                            </h1>
                            <div class="location">
                                <a href="on.aspx">
                                    <i class="fa fa-map-marker"></i> R. Voluntários da Pátria, 110
                                </a>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <i class="flaticon-furniture"></i> 2 a 4 Quartos
                                </li>
                                <li>
                                    <i class="flaticon-holidays"></i> 2 e 3 Banheiros
                                </li>
                                <li>
                                    <i class="flaticon-square"></i> 88 a 249 m²
                                </li>
                                <li>
                                    <i class="flaticon-vehicle"></i> 1 ou 2 vagas
                                </li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="1">
                    <div class="property-box">
                        <div class="property-thumbnail">
                            <a href="fontano.aspx" class="property-img">
                                <div class="listing-badges">
                                    <span class="featured">Lançamento</span>
                                </div>
                                <div class="price-ratings-box">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>

                                <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block w-100" src="img\empreendimentos\Fontano\1.jpg" alt="properties">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="img\empreendimentos\Fontano\2.jpg" alt="properties">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="img\empreendimentos\Fontano\3.jpg" alt="properties">
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="fontano.aspx">Fontano Residencial</a>
                            </h1>
                            <div class="location">
                                <a href="East.html">
                                    <i class="fa fa-map-marker"></i>R. Leonardo Vilas Boas - Jacarepaguá
                                </a>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <i class="flaticon-furniture"></i> 2 e 3 Quartos
                                </li>
                                <li>
                                    <i class="flaticon-holidays"></i> 2 Banheiros
                                </li>
                                <li>
                                    <i class="flaticon-square"></i> 67 a 143m²
                                </li>
                                <li>
                                    <i class="flaticon-vehicle"></i> 1 e 2 Vagas
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
<!-- Featured properties end -->

<!-- Services 3 start -->

<!-- Services 3 end -->

<!-- Categories strat -->
<div class="categories content-area">
   <%-- <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>REGIÃO</h1>
            <p>Em qual região você deseja encontrar seu imovel</p>
        </div>

        <div class="row wow">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row">
                    <div class="col-md-4 col-sm-6 wow fadeInLeft delay-04s">
                        <div class="category">
                            <div class="category_bg_box cat-1-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Zona Oeste</a>
                                        </h3>
                                        <div class="category-subtitle">14 Empreendimentos</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInLeft delay-04s">
                        <div class="category">
                            <div class="category_bg_box cat-2-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Zona Norte</a>
                                        </h3>
                                        <div class="category-subtitle">10 Empreendimentos</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 wow fadeInLeft delay-04s">
                        <div class="category">
                            <div class="category_bg_box cat-2-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Barra/Recreio</a>
                                        </h3>
                                        <div class="category-subtitle">15 Empreendimenos</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-6 wow fadeInUp delay-04s">
                        <div class="category">
                            <div class="category_bg_box cat-3-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Zona Sul</a>
                                        </h3>
                                        <div class="category-subtitle">5 Empreendimentos</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 wow fadeInLeft delay-04s">
                        <div class="category">
                            <div class="category_bg_box cat-2-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Centro</a>
                                        </h3>
                                        <div class="category-subtitle">2 Empreendimentos</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
</div>
<!-- Categories end-->

<!-- Our team 2 start -->
<div class="our-team-2 content-area-3">
 
</div>
<!-- Our team 2 end -->

<!-- Testimonial 1 start -->
<div class="testimonial-1 overview-bgi" style="background-image: url(img/testimonial.jpeg)">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="testimonial-inner">
                    <header class="testimonia-header">
                    </header>
                    <div id="carouselExampleIndicatorst" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="avatar">
                                    <img src="img\avatar\avatar-2.jpeg" alt="katerine2" class="img-fluid rounded-circle">
                                </div>
                                <p class="lead">
                                    Especialização em vendas de imóveis em Lançamento, Construção e Prontos. Produtos e Consultoria imobiliária de alto padrão. As melhores construtoras e condições de negociações diferenciadas.
                                </p>
                                <div class="author-name">
                                    Luciana 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial 1 end -->

<!-- Blog start -->
<div class="blog content-area">
    
</div>
<!-- Blog end -->

<!-- Partners strat -->
<!-- Partners end -->

<!-- Footer start -->
<footer class="footer" id="contato">
    <div class="container footer-inner">
        <div class="row">
            <div class="col-sm-4">
                <div class="footer-item">
                    <h4>Quem somos</h4>

                    <ul class="contact-info">
                        <li>
                            Especialização em vendas de imóveis em Lançamento, Construção e Prontos. Produtos e Consultoria imobiliária de alto padrão. As melhores construtoras e condições de negociações diferenciadas.
                        </li>
                        
                    </ul>

                    <ul class="social-list clearfix">
                        <li><a href="https://www.facebook.com/kt.iBsideisrj/" class="facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="rss"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="footer-item">
                    <h4>
                        Entre em contato
                    </h4>
                    <ul class="links">
                        <li>
                            <a href="#"><i class="fa fa-location-arrow"></i>Av. João de Cabral de Mello Neto, 610 
Barra da Tijuca, Rio de Janeiro</a>
                        </li>
                        <li>
                            <a href="tel:2197960-6588"><i class="fa fa-phone icon"></i>(21)99575-8892</a>
                        </li>
                        <li>
                            <a href="mailto:lubroque@gmail.com"><i class="fa fa-envelope"></i>lubroque@gmail.com</a>
                        </li>
                        
                    </ul>
                </div>
            </div>    
            <div class="col-sm-4">
                <div class="footer-item clearfix">
                    <h4>Inscreva-se</h4>
                    <div class="Subscribe-box">
                        <p>Deixe seu email</p>
                        <div>
                            <p class="form-contact">
                                <input type="text" class="form-contact" name="email" placeholder="email"/>
                            </p>
                            <p>
                                <button type="submit" name="submitNewsletter" class="btn btn-block button-theme">
                                    ENVIAR
                                </button>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-12">
                <p class="copy">© 2018 <a href="#">Luciana Imóveis.</a> Todos os direitos reservados.</p>
            </div>
        </div>
    </div>
</footer>
<!-- Footer end -->

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here">
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>

<script src="js\jquery-2.2.0.min.js"></script>
<script src="js\popper.min.js"></script>
<script src="js\bootstrap.min.js"></script>
<script src="js\bootstrap-submenu.js"></script>
<script src="js\rangeslider.js"></script>
<script src="js\jquery.mb.YTPlayer.js"></script>
<script src="js\wow.min.js"></script>
<script src="js\bootstrap-select.min.js"></script>
<script src="js\jquery.easing.1.3.js"></script>
<script src="js\jquery.scrollUp.js"></script>
<script src="js\jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js\leaflet.js"></script>
<script src="js\leaflet-providers.js"></script>
<script src="js\leaflet.markercluster.js"></script>
<script src="js\dropzone.js"></script>
<script src="js\slick.min.js"></script>
<script src="js\jquery.filterizr.js"></script>
<script src="js\jquery.magnific-popup.min.js"></script>
<script src="js\jquery.countdown.js"></script>
<script src="js\maps.js"></script>
<script src="js\app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js\ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script src="js\ie10-viewport-bug-workaround.js"></script>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-89110077-3', 'auto');
    ga('send', 'pageview');
</script>

    </div>
    </form>
</body>
</html>
