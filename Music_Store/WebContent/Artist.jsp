<%@page import="artist_manager.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbconfig.Dbutill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<head>
    <meta charset="ISO-8859-1">
    <title>Artists | Music - Music Web Application</title>
    <meta name="description" content="Responsive, Bootstrap, BS4">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="assets/css/site.min.css">
</head>
<body class="layout-column bg-dark">
<header id="header" class="page-header scroll-header fixed">
    <div class="navbar navbar-expand-lg"><a href="index.html" class="navbar-brand text-white">

        <span class="hidden-folded d-inline l-s-n-1x">Music</span></a>
        <div class="collapse navbar-collapse order-2 order-lg-1" id="navbarCollapse">
            <ul class="navbar-nav" data-nav>
                <li class="nav-item"><a href="discover.html" class="nav-link"><span class="nav-text">Discover</span></a>
                </li>
                <li class="nav-item"><a href="charts.html" class="nav-link"><span class="nav-text">Charts</span></a>
                </li>
                <li class="nav-item"><a href="genres.html" class="nav-link"><span class="nav-text">Genres</span></a>
                </li>
                <li class="nav-item"><a href="artists.html" class="nav-link"><span class="nav-text">Artists</span></a>
                </li>
                <li class="nav-item"><a href="blog.html" class="nav-link"><span class="nav-text">Blog</span></a></li>
            </ul>
            <form class="input-group m-2 my-lg-0"><span class="input-group-prepend"><button type="button"
                                                                                            class="btn no-shadow no-bg px-0"><i
                    data-feather="search"></i></button> </span><input type="text"
                                                                      class="form-control no-border no-shadow no-bg typeahead"
                                                                      placeholder="Search..." data-plugin="typeahead">
            </form>
        </div>
        <ul class="nav navbar-menu order-1 order-lg-2">

            <li class="nav-item dropdown"><a href="#" data-toggle="dropdown"
                                             class="nav-link d-flex align-items-center py-0 px-lg-0 px-2 text-color"><span
                    class="avatar w-24"><img src="assets/img/a1.jpg" alt="..."></span></a>
                <div class="dropdown-menu dropdown-menu-right mt-3 animate fadeIn"><a class="dropdown-item"
                                                                                      href="artist.detail.html"><span>Profile</span>
                </a><a class="dropdown-item" href="artist.detail.html#tracks"><span>Tracks</span> </a><a
                        class="dropdown-item" href="artist.detail.html#albums"><span>Albums</span> </a><a
                        class="dropdown-item" href="artist.detail.html#liked"><span>Likes</span></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="signin.html">Sign out</a></div>
            </li>
            <li class="nav-item d-lg-none"><a href="#" class="nav-link px-2" data-toggle="collapse" data-toggle-class
                                              data-target="#navbarCollapse"><i data-feather="menu"></i></a></li>
        </ul>
    </div>
</header>
<div id="main" class="layout-row flex">
    <div id="content" class="flex">
        <div>
            <div class="page-content page-container" id="page-content">
                <div class="padding sr" id="list" data-plugin="list">
                    <div class="page-hero">
                        <div class="media bg-media">
                            <div class="media-content" style="background-image:url(assets/img/b6.jpg)"></div>
                        </div>
                        <div class="pos-rlt"><h1 class="display-3 font-weight-bold text-white">Artists</h1></div>
                    </div>
                    <div class="d-lg-flex pos-rlt">
                        <div class="flex">
                            <div class="pb-4 d-flex sr-item" id="filter-tag">
                                <div class="no-shrink my-2">Countries</div>
                                <div class="mx-3"><a href="#" class="btn btn-sm btn-white m-1">All countries</a> <a
                                        href="#" class="btn btn-sm btn-white m-1">Australia</a> <a href="#"
                                                                                                   class="btn btn-sm btn-white m-1">Canada</a>
                                    <a href="#" class="btn btn-sm btn-white m-1">France</a> <a href="#"
                                                                                               class="btn btn-sm btn-white m-1">Germany</a>
                                    <a href="#" class="btn btn-sm btn-white m-1">Ireland</a> <a href="#"
                                                                                                class="btn btn-sm btn-white m-1">Netherlands</a>
                                    <a href="#" class="btn btn-sm btn-white m-1">New Zealand</a> <a href="#"
                                                                                                    class="btn btn-sm btn-white m-1">United
                                        Kingdom</a> <a href="#" class="btn btn-sm btn-white m-1">USA</a></div>
                            </div>
                            <div class="row list media-circle hide">
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="418888835"
                                     data-category="other" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/eb/e4/2e/ebe42efd-bbce-75cd-63a2-5813637e25bb/mzaf_6529454398103897146.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#418888835"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b8.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#418888835"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Panic!
                                                At The Disco</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="437608186"
                                     data-category="Pop" data-tag="Denmark"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/20/c7/47/20c74768-5ce8-52ca-c13e-d51fd1641ddb/mzaf_8197938095341255443.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#437608186"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a9.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#437608186"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Lukas
                                                Graham</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="435160184"
                                     data-category="Dance" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/9c/e6/fd/9ce6fd38-1225-6ac3-f7a6-da80cb50346e/mzaf_1582186890349153418.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#435160184"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b9.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#435160184"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Marshmello
                                                &amp; Bastille</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="434179154"
                                     data-category="Rap" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/85/3a/89/853a8999-a985-b66a-4d8d-a260ce744728/mzaf_5634253487407986103.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#434179154"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a12.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#434179154"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">XXXTENTACION
                                                &amp; Lil Pump Feat. Swae Lee &amp; Maluma</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="439575216"
                                     data-category="Rap" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/8f/84/bd/8f84bd09-94d3-d6f1-5fca-4b61d7ba135a/mzaf_69877628019454373.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#439575216"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a2.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#439575216"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Gucci
                                                Mane, Bruno Mars &amp; Kodak Black</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="378918899"
                                     data-category="Dance" data-tag="Canada"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/c3/6c/db/c36cdbd0-304b-11b0-128d-eda635333cc8/mzaf_1033589088272334209.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#378918899"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a1.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#378918899"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Loud
                                                Luxury Feat. Brando</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="441677734"
                                     data-category="Rap" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/f0/96/02/f09602fc-40df-8f2e-1a19-e69b7bf746aa/mzaf_4452217425399550549.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#441677734"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a13.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#441677734"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Lil
                                                Wayne</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="438387803"
                                     data-category="Dance" data-tag="Other"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/23/17/88/23178814-ef4f-1b4d-294d-89cd434941a2/mzaf_8868960744652419987.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#438387803"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a16.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#438387803"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Silk
                                                City &amp; Dua Lipa Feat. Diplo &amp; Mark Ronson</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="439309038"
                                     data-category="R&amp;B" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/26/d1/f1/26d1f10f-723e-66c9-4355-9575f40bc85b/mzaf_5907372873406991062.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#439309038"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a15.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#439309038"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Khalid</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="416737862"
                                     data-category="Latin" data-tag="all"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/54/29/c1/5429c111-92a4-a647-6e85-0577343fbf45/mzaf_5955739319318374110.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#416737862"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b12.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#416737862"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Bad
                                                Bunny Feat. Drake</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="383727904"
                                     data-category="Dance" data-tag="Italy"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/91/65/e8/9165e84a-49ed-1728-54b4-32360df0eeea/mzaf_7952964905769903156.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#383727904"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b5.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#383727904"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Dynoro
                                                &amp; Gigi D’Agostino</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="429946780"
                                     data-category="Pop" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/53/85/65/538565bd-5529-4d94-c5b0-5030ad266024/mzaf_72019562509153648.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#429946780"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b15.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#429946780"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Benny
                                                Blanco, Halsey &amp; Khalid</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="440180182"
                                     data-category="Pop" data-tag="Kosovo"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/d0/94/1a/d0941aed-432a-7b25-44fb-6e16c58cbc86/mzaf_2496381949757242114.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#440180182"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b19.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#440180182"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Rita
                                                Ora</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="447549756"
                                     data-category="Pop" data-tag="USA"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/f0/93/72/f093723b-35d0-d99e-c89e-53ac67bcf24e/mzaf_6054509368688935276.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#447549756"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a14.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#447549756"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Ariana
                                                Grande</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="445112226"
                                     data-category="Dance" data-tag="England"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/2d/ea/7e/2dea7e42-b98b-a7d2-10d5-6dbc835da539/mzaf_7531992205888527800.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#445112226"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a10.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#445112226"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Clean
                                                Bandit Feat. Marina and the Diamonds &amp; Luis Fonsi</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="440557235"
                                     data-category="Dance" data-tag="France"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/07/2c/59/072c59fe-549d-bd0e-f93d-3e4a1f673af5/mzaf_4035597378145374075.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#440557235"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b2.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#440557235"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">DJ
                                                Snake Feat. Selena Gomez &amp; Ozuna &amp; Cardi B</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="438035781"
                                     data-category="Dance" data-tag="Netherlands"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/7f/d2/b9/7fd2b937-3565-7d34-ad20-eb820e995933/mzaf_1278318905199991361.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#438035781"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/a7.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#438035781"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">Don
                                                Diablo Feat. Emeli Sandé &amp; Gucci Mane</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 col-sm-4 col-md-3 col-lg-3 py-3" data-id="402107013"
                                     data-category="Dance" data-tag="All"
                                     data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/03/e5/25/03e52558-25b4-e41a-8b0a-c5ee14cf51de/mzaf_7464768196891763269.plus.aac.p.m4a">
                                    <div class="list-item r">
                                        <div class="media"><a href="artist.detail.html#402107013"
                                                              class="ajax media-content"
                                                              style="background-image:url(assets/img/b16.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content text-center">
                                            <div class="list-body"><a href="artist.detail.html#402107013"
                                                                      class="list-subtitle d-block text-muted h-1x subtitle ajax">The
                                                Prince Karma</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex py-3 justify-content-center">
                                <ul class="pagination pagination-sm"></ul>
                            </div>
                        </div>
                        <div style="min-width: 4rem"></div>
                        <div class="w-xl w-auto-sm no-shrink">
                            <div class="sticky">
                                <div class="list mb-5">
                                    <div class="list-item list-overlay r">
                                        <div class="media"><a href="item.detail.html#" class="ajax media-content"
                                                              style="background-image:url(assets/img/b15.jpg)"></a>
                                            <div class="media-action"></div>
                                        </div>
                                        <div class="list-content p-5 text-center">
                                            <div class="list-body"><a href="item.detail.html#"
                                                                      class="list-title title ajax h3 font-weight-bold">Hip-Hop
                                                Chart 100 </a><a href="artist.detail.html#"
                                                                 class="list-subtitle d-block text-muted h-1x subtitle ajax">The
                                                hottest rap right now.</a></div>
                                        </div>
                                    </div>
                                </div>
                                <h6 class="text text-muted sr-item">Top Artists</h6>
                                <div class="row list-row">
  
                                    <!-- ************************************** -->
                                    <% 
                                    Dbutill dbutill = new Dbutill();
                                    ArrayList<Artist> artistlist =  dbutill.getArtists(0);
                                    
                                    for(Artist artist : artistlist){
                                    
                                    %>
                                    
                                    <div class="col-12" data-id="402107013" data-category="Dance" data-tag="All"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/03/e5/25/03e52558-25b4-e41a-8b0a-c5ee14cf51de/mzaf_7464768196891763269.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="GetArtists?id=<%=artist.getaID() %>"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c15.jpg)"></a>
                                                <div class="media-action">
                                                    <button class="btn btn-icon no-bg no-shadow hide-row"
                                                            data-toggle-class><i data-feather="heart"
                                                                                 class="active-fill"></i></button>
                                                    <button class="btn btn-raised btn-icon btn-rounded bg--white btn-play"></button>
                                                    <button class="btn btn-icon no-bg no-shadow hide-row btn-more"
                                                            data-toggle="dropdown"><i
                                                            data-feather="more-horizontal"></i></button>
                                                    <div class="dropdown-menu dropdown-menu-right"></div>
                                                </div>
                                            </div>
                                            <div class="list-content">
                                                <div class="list-body"><a href="GetArtists?id=<%=artist.getaID() %>"
                                                                          class="list-title title ajax h-1x">
                                                                          <%=artist.getaName() %> </a><a href="GetArtists?id=<%=artist.getaID() %>"
                                                                   class="list-subtitle d-block text-muted h-1x subtitle ajax">
                                                                   <%=artist.getaActiveYears() %>
                                                                   </a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                    <!-- ************************ -->
                                    

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer id="footer" class="page-footer">
    <div class="padding bg-dark b-t">
        <div class="page-container">
            <div class="py-5 text-inherit text-hover-primary">
                <div class="row mb-5">
                    <div class="col-6 col-md-4">
                        <div class="mb-3"><a href="index.html" class="navbar-brand text-white">

                            <span class="hidden-folded d-inline l-s-n-1x">Music</span>
                        </a>
                        </div>
                        <div class="px-1">
                            <div class="dropdown mt-5 ml-md-5">
                                <button class="btn w-sm btn-dark text-align-auto b-a sorting" data-toggle="dropdown">
                                    English
                                </button>
                                <div class="dropdown-menu"><a href="#" class="dropdown-item">English</a> <a href="#"
                                                                                                            class="dropdown-item">Français</a>
                                    <a href="#" class="dropdown-item">日本语</a> <a href="#" class="dropdown-item">中文</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-md-2"><h5 class="mb-3 text-muted">Pages</h5>
                        <ul class="list-unstyled l-h-2x text-highlight">
                            <li><a href="artists.html">Artists</a></li>
                            <li><a href="charts.html">Top Charts</a></li>
                            <li><a href="genres.html">Genres</a></li>
                            <li><a href="page.about.html">About Us</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="signin.html">Signin</a></li>
                            <li><a href="signup.html">Signup</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-2"><h5 class="mb-3 text-muted">Your Music</h5>
                        <ul class="list-unstyled l-h-2x text-highlight">
                            <li><a href="artist.detail.html">Profile</a></li>
                            <li><a href="artist.detail.html#albums">Albums</a></li>
                            <li><a href="artist.detail.html#tracks">Tracks</a></li>
                            <li><a href="artist.detail.html#playlist">Playlist</a></li>
                            <li><a href="artist.detail.html#liked">Liked</a></li>
                            <li><a href="artist.detail.html#following">Following</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-2"><h5 class="mb-3 text-muted">Help</h5>
                        <ul class="list-unstyled l-h-2x text-highlight">
                            <li><a href="docs/index.html">Documentation</a></li>
                            <li><a href="docs/changelog.html">Changelog</a></li>
                            <li><a href="docs/changelog.html">Update</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-2 text-md-right"><h5 class="mb-3 text-muted">Follow Us</h5><a
                            href="#">Fb</a> <a href="#">Tw</a> <a href="#">Ig</a></div>
                </div>
                <div class="text-center py-5"><span class="text-muted text-sm">&copy; Copyright. Music - Music Web Application, All rights reserved.</span>
                </div>
            </div>
        </div>
    </div>
    <div data-plugin="plyr" class="plyrist plyrist_audio plyr-list-popup player bg-overlay b-t fixed-bottom"
         id="plyrist">
        <audio controls hidden></audio>
        <div class="plyr-list bg-dark-overlay" style="display:none"></div>
    </div>
</footer>
<script src="assets/js/site.min.js"></script>
</body>

</html>