<%@page import="artist_manager.Song"%>
<%@page import="dbconfig.Dbutill"%>
<%@page import="artist_manager.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Detail | Music - Music Web Application</title>
    <meta name="description" content="Responsive, Bootstrap, BS4">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="assets/css/site.min.css">
</head>
<body class="layout-column bg-dark">
<header id="header" class="page-header scroll-header fixed">
    <div class="navbar navbar-expand-lg">
        <a href="index.html" class="navbar-brand text-white">

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
            <form class="input-group m-2 my-lg-0">
                <span class="input-group-prepend"><button type="button" class="btn no-shadow no-bg px-0"><i
                        data-feather="search"></i></button>
                </span>
                <input type="text" class="form-control no-border no-shadow no-bg typeahead" placeholder="Search..."
                       data-plugin="typeahead">
            </form>
        </div>
        <ul class="nav navbar-menu order-1 order-lg-2">
          
            <li class="nav-item dropdown"><a href="#" data-toggle="dropdown" class="nav-link d-flex align-items-center py-0 px-lg-0 px-2 text-color"><span
                    class="avatar w-24"><img src="assets/img/a4.jpg" alt="..."></span></a>
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
                <div class="padding sr">
                    <div class="page-hero" data-id="2"
                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/07/2c/59/072c59fe-549d-bd0e-f93d-3e4a1f673af5/mzaf_4035597378145374075.plus.aac.p.m4a">
                        <div class="media bg-media">
                            <div class="media-content" style="background-image:url(assets/img/b10.jpg)"></div>
                        </div>
                        
                        <%
                        ArrayList<Artist> artistinfo = (ArrayList<Artist>) request.getAttribute("Artist");
                        
                        for(Artist artist : artistinfo){
                        %>
                        
                        <div class="pos-rlt"><h1 class="display-3 font-weight-bold text-white"><%=artist.getaName() %></h1>
                        <h5 class="display-5 font-weight-bold text-white"><%=artist.getaDescription() %></h3>
                        <span
                                class="hide title">Shallow</span> <span
                                class="hide subtitle">Lady Gaga & Bradley Cooper</span>
                            <div class="py-4 toolbar align-items-center">
                                <button class="btn btn-icon btn-play btn-rounded gd-primary"
                                        data-toggle-class=""></button>
                                <span class="text-muted"><%=artist.getaActiveYears() %>, 5 playlist</span>
                                <button class="btn btn-sm btn-outline-light btn-rounded mx-3" data-toggle-class><span
                                        class="d-inline">Follow</span> <span class="d-none">Following</span></button>
                                <span class="text-muted">502</span></div>
                            <div class="mb-2"><span class="text-muted">Social: </span><a href="#"
                                                                                         class="text-highlight">Fb</a>,
                                <a href="#" class="text-highlight">Tw</a>, <a href="#" class="text-highlight">Ig</a>
                            </div>
                        </div>
                        
                        <% } %>
                        
                        
                    </div>
                    <div class="d-md-flex pos-rlt">
                        <div class="flex">
                            <div class="d-flex">
                                <ul class="nav nav-sm text-sm nav-pills nav-rounded py-4">
                                    <li class="nav-item"><a class="nav-link active" href="#overview" data-toggle="tab">Overview</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#tracks" data-toggle="tab">Tracks</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#albums" data-toggle="tab">Album</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#playlist"
                                                            data-toggle="tab">Playlist</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#liked" data-toggle="tab">Liked</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#following" data-toggle="tab">Following</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="overview">
                                    <div class="heading pt-5 pb-3 d-flex">
                                        <div>
                                            <div class="text-muted sr-item">Popular</div>
                                            <h5 class="text-highlight sr-item">Tracks</h5>
                                            <h5><a href="addsong.jsp">Add Song</a></h5>
                                            </div>
                                        <span class="flex"></span></div>
                                    <div class="row list-row list-index">
                                    
                                    <!-- *************************************************** -->
                                    <% 
                                    Dbutill dbutill = new Dbutill();
                                    ArrayList<Song> songlist =  dbutill.getSong(0);
                                    
                                    for(Song song : songlist){
                                    %>
                                    
                                        <div class="col-12" data-id="418888835" data-category="other" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/eb/e4/2e/ebe42efd-bbce-75cd-63a2-5813637e25bb/mzaf_6529454398103897146.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#418888835"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c7.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#418888835"
                                                                              class="list-title title ajax h-1x">
                                                                              <%=song.getsName() %></a><a href="artist.detail.html#418888835"
                                                                     class="list-subtitle d-block text-muted h-1x subtitle ajax">
                                                                     <%=song.getsAlbum() %>
                                                                     </a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block"><%=song.getsReleasedDate() %>
                                                        </div>
                                                        
                                                        <form action="updatesong.jsp?songid=<%=song.getsID() %>" method="post">
                                                        <button type="submit" class="btn btn-icon no-bg no-shadow" >
                                                            <i data-feather="edit" class="active-primary"></i></button>
                                                        </form>
                                                        
                                                        <form action="RemoveSong" method="post">
                                                        <input type="hidden" name="sid" value=<%=song.getsID() %>>
                                                        <button type="submit" class="btn btn-icon no-bg no-shadow btn-more"
                                                   				><i
                                                                data-feather="delete"></i>
                                                                </button>
                                                        </form>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <% } %>
                                        <!-- *************************************************** -->
                                        
       
                                    </div>
                                    <div class="heading pt-5 pb-3 d-flex">
                                        <div>
                                            <div class="text-muted sr-item">More</div>
                                            <h5 class="text-highlight sr-item">Tracks</h5></div>
                                        <span class="flex"></span></div>
                                    <div class="row list mb-4">
                                        <div class="col-6 col-md-3" data-id="417333490" data-category="Pop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/27/a0/69/27a0692a-0205-87f2-1fbf-eec75a5dc94d/mzaf_8399436585982263723.plus.aac.p.m4a">
                                            <div class="list-item list-hover r">
                                                <div class="media"><a href="item.detail.html#417333490"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c10.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
                                                        <button class="btn btn-icon no-bg no-shadow hide-row"
                                                                data-toggle-class><i data-feather="heart"
                                                                                     class="active-fill"></i></button>
                                                        <button class="btn btn-raised btn-icon btn-rounded bg--white btn-play"></button>
                                                        <button class="btn btn-icon no-bg no-shadow hide-row btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="delete"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#417333490"
                                                                              class="list-title title ajax h-1x">Girls
                                                        Like You </a><a href="artist.detail.html#417333490"
                                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Maroon
                                                        5 Feat. Cardi B</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-3" data-id="440180182" data-category="Pop"
                                             data-tag="Kosovo"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/d0/94/1a/d0941aed-432a-7b25-44fb-6e16c58cbc86/mzaf_2496381949757242114.plus.aac.p.m4a">
                                            <div class="list-item list-hover r">
                                                <div class="media"><a href="item.detail.html#440180182"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c18.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#440180182"
                                                                              class="list-title title ajax h-1x">Let You
                                                        Love Me </a><a href="artist.detail.html#440180182"
                                                                       class="list-subtitle d-block text-muted h-1x subtitle ajax">Rita
                                                        Ora</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-3" data-id="443321905" data-category="Rap"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/aa/41/38/aa413803-5b2d-a5de-381f-351d5ebcc3cb/mzaf_2919139327828656331.plus.aac.p.m4a">
                                            <div class="list-item list-hover r">
                                                <div class="media"><a href="item.detail.html#443321905"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c16.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#443321905"
                                                                              class="list-title title ajax h-1x">ZEZE </a><a
                                                            href="artist.detail.html#443321905"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Kodak
                                                        Black Feat. Offset &amp; Travis Scott</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-3" data-id="441990739" data-category="Other"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/fa/cc/a3/facca3ab-51ea-11b8-e359-b2a200738fc5/mzaf_2669843299284584791.plus.aac.p.m4a">
                                            <div class="list-item list-hover r">
                                                <div class="media"><a href="item.detail.html#441990739"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c5.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#441990739"
                                                                              class="list-title title ajax h-1x">Without
                                                        Me </a><a href="artist.detail.html#441990739"
                                                                  class="list-subtitle d-block text-muted h-1x subtitle ajax">Halsey</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tracks">
                                    <div class="row list-row">
                                        <div class="col-12" data-id="438035781" data-category="Dance"
                                             data-tag="Netherlands"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/7f/d2/b9/7fd2b937-3565-7d34-ad20-eb820e995933/mzaf_1278318905199991361.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#438035781"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c26.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#438035781"
                                                                              class="list-title title ajax h-1x">Survive </a><a
                                                            href="artist.detail.html#438035781"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Don
                                                        Diablo Feat. Emeli Sandé &amp; Gucci Mane</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:31
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="427101360" data-category="Pop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/03/78/b5/0378b505-0651-5d37-abaf-fdace32fa0a1/mzaf_4885861497912518049.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#427101360"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c0.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#427101360"
                                                                              class="list-title title ajax h-1x">Shallow </a><a
                                                            href="artist.detail.html#427101360"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Lady
                                                        Gaga &amp; Bradley Cooper</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">05:32
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="434202110" data-category="Hip-Hop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/95/83/ee/9583ee9b-68bb-7e91-c032-1f8805157854/mzaf_896336562892407790.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#434202110"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c13.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#434202110"
                                                                              class="list-title title ajax h-1x">SICKO
                                                        MODE </a><a href="artist.detail.html#434202110"
                                                                    class="list-subtitle d-block text-muted h-1x subtitle ajax">Travis
                                                        Scott</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">04:22
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="429946780" data-category="Pop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/53/85/65/538565bd-5529-4d94-c5b0-5030ad266024/mzaf_72019562509153648.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#429946780"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c14.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#429946780"
                                                                              class="list-title title ajax h-1x">Eastside </a><a
                                                            href="artist.detail.html#429946780"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Benny
                                                        Blanco, Halsey &amp; Khalid</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">02:32
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="442173657" data-category="Rap" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/11/72/7e/11727eb5-b6c6-f80f-ddd9-2fb9135c07b1/mzaf_3150787160306402060.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#442173657"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c12.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#442173657"
                                                                              class="list-title title ajax h-1x">Sunflower
                                                        (Spider-Man: Into the Spider-Verse) </a><a
                                                            href="artist.detail.html#442173657"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Post
                                                        Malone &amp; Swae Lee</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">04:34
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="434628736" data-category="Pop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/1d/44/74/1d447462-1811-5cfd-90f7-13edea1193d9/mzaf_5901924055590298818.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#434628736"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c9.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#434628736"
                                                                              class="list-title title ajax h-1x">Thunderclouds </a><a
                                                            href="artist.detail.html#434628736"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">LSD
                                                        Feat. Sia &amp; Diplo &amp; Labrinth</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">05:40
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="434179154" data-category="Rap" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/85/3a/89/853a8999-a985-b66a-4d8d-a260ce744728/mzaf_5634253487407986103.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#434179154"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c31.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#434179154"
                                                                              class="list-title title ajax h-1x">Arms
                                                        Around You </a><a href="artist.detail.html#434179154"
                                                                          class="list-subtitle d-block text-muted h-1x subtitle ajax">XXXTENTACION
                                                        &amp; Lil Pump Feat. Swae Lee &amp; Maluma</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:42
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="438654695" data-category="Dance" data-tag="France"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/c1/60/68/c1606821-459e-0575-ad3b-6b291f2dbf66/mzaf_3521330005736623852.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#438654695"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c23.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#438654695"
                                                                              class="list-title title ajax h-1x">Say My
                                                        Name </a><a href="artist.detail.html#438654695"
                                                                    class="list-subtitle d-block text-muted h-1x subtitle ajax">David
                                                        Guetta &amp; Bebe Rexha &amp; J Balvin</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:39
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="435950080" data-category="Dance"
                                             data-tag="United Kingdom"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/bd/28/a1/bd28a103-b17f-540a-eae3-9bfe992e2562/mzaf_6343854158099733867.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#435950080"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c2.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#435950080"
                                                                              class="list-title title ajax h-1x">Promises </a><a
                                                            href="artist.detail.html#435950080"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Calvin
                                                        Harris &amp; Sam Smith</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:44
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="440557235" data-category="Dance" data-tag="France"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/07/2c/59/072c59fe-549d-bd0e-f93d-3e4a1f673af5/mzaf_4035597378145374075.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#440557235"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c1.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#440557235"
                                                                              class="list-title title ajax h-1x">Taki
                                                        Taki </a><a href="artist.detail.html#440557235"
                                                                    class="list-subtitle d-block text-muted h-1x subtitle ajax">DJ
                                                        Snake Feat. Selena Gomez &amp; Ozuna &amp; Cardi B</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">04:44
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="417333490" data-category="Pop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/27/a0/69/27a0692a-0205-87f2-1fbf-eec75a5dc94d/mzaf_8399436585982263723.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#417333490"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c10.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#417333490"
                                                                              class="list-title title ajax h-1x">Girls
                                                        Like You </a><a href="artist.detail.html#417333490"
                                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Maroon
                                                        5 Feat. Cardi B</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">04:36
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="378918899" data-category="Dance" data-tag="Canada"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/c3/6c/db/c36cdbd0-304b-11b0-128d-eda635333cc8/mzaf_1033589088272334209.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#378918899"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c20.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#378918899"
                                                                              class="list-title title ajax h-1x">Body </a><a
                                                            href="artist.detail.html#378918899"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Loud
                                                        Luxury Feat. Brando</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:23
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="418888835" data-category="other" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/eb/e4/2e/ebe42efd-bbce-75cd-63a2-5813637e25bb/mzaf_6529454398103897146.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#418888835"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c7.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#418888835"
                                                                              class="list-title title ajax h-1x">High
                                                        Hopes </a><a href="artist.detail.html#418888835"
                                                                     class="list-subtitle d-block text-muted h-1x subtitle ajax">Panic!
                                                        At The Disco</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">05:42
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="374705210" data-category="Rap" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/dc/c4/0b/dcc40b4d-283b-e9a2-6209-ca988087cc0e/mzaf_8137717147287964110.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#374705210"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c22.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#374705210"
                                                                              class="list-title title ajax h-1x">Mo
                                                        Bamba </a><a href="artist.detail.html#374705210"
                                                                     class="list-subtitle d-block text-muted h-1x subtitle ajax">Sheck
                                                        Wes</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:46
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12" data-id="383727904" data-category="Dance" data-tag="Italy"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/91/65/e8/9165e84a-49ed-1728-54b4-32360df0eeea/mzaf_7952964905769903156.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="item.detail.html#383727904"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c4.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#383727904"
                                                                              class="list-title title ajax h-1x">In My
                                                        Mind </a><a href="artist.detail.html#383727904"
                                                                    class="list-subtitle d-block text-muted h-1x subtitle ajax">Dynoro
                                                        &amp; Gigi D’Agostino</a></div>
                                                </div>
                                                <div class="list-action show-row">
                                                    <div class="d-flex align-items-center">
                                                        <div class="px-3 text-sm text-muted d-none d-md-block">03:26
                                                        </div>
                                                        <button class="btn btn-icon no-bg no-shadow" data-toggle-class>
                                                            <i data-feather="heart" class="active-primary"></i></button>
                                                        <button class="btn btn-icon no-bg no-shadow btn-more"
                                                                data-toggle="dropdown"><i
                                                                data-feather="more-horizontal"></i></button>
                                                        <div class="dropdown-menu dropdown-menu-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="albums">
                                    <div class="row list mb-4">
                                        <div class="col-4 col-sm-3" data-id="413103901" data-category="Pop"
                                             data-tag="Australia"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/a7/34/5a/a7345af4-5d3c-3736-5dd0-e9d051b0ded3/mzaf_6009557953366571039.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#413103901"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c17.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#413103901"
                                                                              class="list-title title ajax h-1x">Youngblood </a><a
                                                            href="artist.detail.html#413103901"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">5
                                                        Seconds Of Summer</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="439309038" data-category="R&amp;B"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/26/d1/f1/26d1f10f-723e-66c9-4355-9575f40bc85b/mzaf_5907372873406991062.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#439309038"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c34.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#439309038"
                                                                              class="list-title title ajax h-1x">Better </a><a
                                                            href="artist.detail.html#439309038"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Khalid</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="438035781" data-category="Dance"
                                             data-tag="Netherlands"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/7f/d2/b9/7fd2b937-3565-7d34-ad20-eb820e995933/mzaf_1278318905199991361.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#438035781"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c26.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#438035781"
                                                                              class="list-title title ajax h-1x">Survive </a><a
                                                            href="artist.detail.html#438035781"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Don
                                                        Diablo Feat. Emeli Sandé &amp; Gucci Mane</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="442173657" data-category="Rap"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/11/72/7e/11727eb5-b6c6-f80f-ddd9-2fb9135c07b1/mzaf_3150787160306402060.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#442173657"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c12.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#442173657"
                                                                              class="list-title title ajax h-1x">Sunflower
                                                        (Spider-Man: Into the Spider-Verse) </a><a
                                                            href="artist.detail.html#442173657"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Post
                                                        Malone &amp; Swae Lee</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="434202110" data-category="Hip-Hop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/95/83/ee/9583ee9b-68bb-7e91-c032-1f8805157854/mzaf_896336562892407790.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#434202110"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c13.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#434202110"
                                                                              class="list-title title ajax h-1x">SICKO
                                                        MODE </a><a href="artist.detail.html#434202110"
                                                                    class="list-subtitle d-block text-muted h-1x subtitle ajax">Travis
                                                        Scott</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="417333490" data-category="Pop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/27/a0/69/27a0692a-0205-87f2-1fbf-eec75a5dc94d/mzaf_8399436585982263723.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#417333490"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c10.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#417333490"
                                                                              class="list-title title ajax h-1x">Girls
                                                        Like You </a><a href="artist.detail.html#417333490"
                                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Maroon
                                                        5 Feat. Cardi B</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="441677734" data-category="Rap"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/f0/96/02/f09602fc-40df-8f2e-1a19-e69b7bf746aa/mzaf_4452217425399550549.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#441677734"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c32.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#441677734"
                                                                              class="list-title title ajax h-1x">Uproar </a><a
                                                            href="artist.detail.html#441677734"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Lil
                                                        Wayne</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3" data-id="442009655" data-category="Pop"
                                             data-tag="England"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/07/7e/24/077e2447-0d02-1c40-729b-a4a87e7ecd51/mzaf_3261492558713394996.plus.aac.p.m4a">
                                            <div class="list-item list-hover r mb-4">
                                                <div class="media"><a href="item.detail.html#442009655"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/c19.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#442009655"
                                                                              class="list-title title ajax h-1x">Woman
                                                        Like Me </a><a href="artist.detail.html#442009655"
                                                                       class="list-subtitle d-block text-muted h-1x subtitle ajax">Little
                                                        Mix Feat. Nicki Minaj</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="playlist">
                                    <div class="row list-row">
                                        <div class="col-6 col-sm-4" data-id="408576846" data-category="Rap"
                                             data-tag="England"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/c9/1f/83/c91f83b2-38c7-3a93-fabe-2da29dc5c2a8/mzaf_5271705754245759426.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#408576846"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c25.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#408576846"
                                                                              class="list-title title ajax h-1x">Shotgun </a><a
                                                            href="artist.detail.html#408576846"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">George
                                                        Ezra</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="435160184" data-category="Dance"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/9c/e6/fd/9ce6fd38-1225-6ac3-f7a6-da80cb50346e/mzaf_1582186890349153418.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#435160184"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c8.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#435160184"
                                                                              class="list-title title ajax h-1x">Happier </a><a
                                                            href="artist.detail.html#435160184"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Marshmello
                                                        &amp; Bastille</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="417333490" data-category="Pop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/27/a0/69/27a0692a-0205-87f2-1fbf-eec75a5dc94d/mzaf_8399436585982263723.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#417333490"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c10.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#417333490"
                                                                              class="list-title title ajax h-1x">Girls
                                                        Like You </a><a href="artist.detail.html#417333490"
                                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Maroon
                                                        5 Feat. Cardi B</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="434179154" data-category="Rap"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/85/3a/89/853a8999-a985-b66a-4d8d-a260ce744728/mzaf_5634253487407986103.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#434179154"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c31.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#434179154"
                                                                              class="list-title title ajax h-1x">Arms
                                                        Around You </a><a href="artist.detail.html#434179154"
                                                                          class="list-subtitle d-block text-muted h-1x subtitle ajax">XXXTENTACION
                                                        &amp; Lil Pump Feat. Swae Lee &amp; Maluma</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="427101360" data-category="Pop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/03/78/b5/0378b505-0651-5d37-abaf-fdace32fa0a1/mzaf_4885861497912518049.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#427101360"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c0.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#427101360"
                                                                              class="list-title title ajax h-1x">Shallow </a><a
                                                            href="artist.detail.html#427101360"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Lady
                                                        Gaga &amp; Bradley Cooper</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="433873297" data-category="Pop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/61/21/7d/61217d02-2aea-96cc-f2f8-ff29a90cf043/mzaf_3962092115674978972.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#433873297"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c27.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#433873297"
                                                                              class="list-title title ajax h-1x">Beautiful </a><a
                                                            href="artist.detail.html#433873297"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Bazzi
                                                        Feat. Camila Cabello</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="442173657" data-category="Rap"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/11/72/7e/11727eb5-b6c6-f80f-ddd9-2fb9135c07b1/mzaf_3150787160306402060.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#442173657"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c12.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#442173657"
                                                                              class="list-title title ajax h-1x">Sunflower
                                                        (Spider-Man: Into the Spider-Verse) </a><a
                                                            href="artist.detail.html#442173657"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Post
                                                        Malone &amp; Swae Lee</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-sm-4" data-id="414883687" data-category="Pop"
                                             data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/93/7c/36/937c363d-9099-71c3-a66c-070273c1c1a6/mzaf_2341219213485232355.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#414883687"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c30.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#414883687"
                                                                              class="list-title title ajax h-1x">Trampoline </a><a
                                                            href="artist.detail.html#414883687"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">SHAED</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="liked">
                                    <div class="row list-row">
                                        <div class="col-6" data-id="435950080" data-category="Dance"
                                             data-tag="United Kingdom"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/bd/28/a1/bd28a103-b17f-540a-eae3-9bfe992e2562/mzaf_6343854158099733867.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#435950080"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c2.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#435950080"
                                                                              class="list-title title ajax h-1x">Promises </a><a
                                                            href="artist.detail.html#435950080"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Calvin
                                                        Harris &amp; Sam Smith</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6" data-id="378918899" data-category="Dance" data-tag="Canada"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/c3/6c/db/c36cdbd0-304b-11b0-128d-eda635333cc8/mzaf_1033589088272334209.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#378918899"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c20.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#378918899"
                                                                              class="list-title title ajax h-1x">Body </a><a
                                                            href="artist.detail.html#378918899"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Loud
                                                        Luxury Feat. Brando</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6" data-id="439309038" data-category="R&amp;B" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/26/d1/f1/26d1f10f-723e-66c9-4355-9575f40bc85b/mzaf_5907372873406991062.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#439309038"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c34.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#439309038"
                                                                              class="list-title title ajax h-1x">Better </a><a
                                                            href="artist.detail.html#439309038"
                                                            class="list-subtitle d-block text-muted h-1x subtitle ajax">Khalid</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6" data-id="417333490" data-category="Pop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/27/a0/69/27a0692a-0205-87f2-1fbf-eec75a5dc94d/mzaf_8399436585982263723.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media col-4"><a href="item.detail.html#417333490"
                                                                            class="ajax media-content"
                                                                            style="background-image:url(assets/img/c10.jpg)"></a>
                                                    <div class="media-action media-action-overlay">
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
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="item.detail.html#417333490"
                                                                              class="list-title title ajax h-1x">Girls
                                                        Like You </a><a href="artist.detail.html#417333490"
                                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Maroon
                                                        5 Feat. Cardi B</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="following">
                                    <div class="row list media-circle">
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="414883687"
                                             data-category="Pop" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/93/7c/36/937c363d-9099-71c3-a66c-070273c1c1a6/mzaf_2341219213485232355.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="artist.detail.html#414883687"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/a11.jpg)"></a>
                                                    <div class="media-action"></div>
                                                </div>
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="artist.detail.html#414883687"
                                                                              class="list-subtitle d-block text-muted h-1x subtitle ajax">SHAED</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="430776855"
                                             data-category="other" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/bb/45/0e/bb450e27-beb6-6006-3add-b01a40cad68d/mzaf_4073501669713213306.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="artist.detail.html#430776855"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/b7.jpg)"></a>
                                                    <div class="media-action"></div>
                                                </div>
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="artist.detail.html#430776855"
                                                                              class="list-subtitle d-block text-muted h-1x subtitle ajax">Imagine
                                                        Dragons</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="443321905"
                                             data-category="Rap" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/aa/41/38/aa413803-5b2d-a5de-381f-351d5ebcc3cb/mzaf_2919139327828656331.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="artist.detail.html#443321905"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/b17.jpg)"></a>
                                                    <div class="media-action"></div>
                                                </div>
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="artist.detail.html#443321905"
                                                                              class="list-subtitle d-block text-muted h-1x subtitle ajax">Kodak
                                                        Black Feat. Offset &amp; Travis Scott</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="434179154"
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
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="442173657"
                                             data-category="Rap" data-tag="USA"
                                             data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/11/72/7e/11727eb5-b6c6-f80f-ddd9-2fb9135c07b1/mzaf_3150787160306402060.plus.aac.p.m4a">
                                            <div class="list-item r">
                                                <div class="media"><a href="artist.detail.html#442173657"
                                                                      class="ajax media-content"
                                                                      style="background-image:url(assets/img/b13.jpg)"></a>
                                                    <div class="media-action"></div>
                                                </div>
                                                <div class="list-content text-center">
                                                    <div class="list-body"><a href="artist.detail.html#442173657"
                                                                              class="list-subtitle d-block text-muted h-1x subtitle ajax">Post
                                                        Malone &amp; Swae Lee</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="440180182"
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
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="440557235"
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
                                        <div class="col-4 col-sm-3 col-md-2-4 col-lg-2 py-3" data-id="445112226"
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
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="min-width: 4rem"></div>
                        <div class="w-xl w-auto-sm no-shrink">
                            <div class="sticky">
                                <div class="list mb-5">
                                    <div class="list-item list-overlay r">
                                        <div class="media"><a href="item.detail.html#" class="ajax media-content"
                                                              style="background-image:url(assets/img/b17.jpg)"></a>
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
                                <h6 class="text text-muted sr-item">Top tracks</h6>
                                <div class="row list-row">
                                    <div class="col-12" data-id="434202110" data-category="Hip-Hop" data-tag="USA"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/95/83/ee/9583ee9b-68bb-7e91-c032-1f8805157854/mzaf_896336562892407790.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="item.detail.html#434202110"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c13.jpg)"></a>
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
                                                <div class="list-body"><a href="item.detail.html#434202110"
                                                                          class="list-title title ajax h-1x">SICKO
                                                    MODE </a><a href="artist.detail.html#434202110"
                                                                class="list-subtitle d-block text-muted h-1x subtitle ajax">Travis
                                                    Scott</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12" data-id="437608186" data-category="Pop" data-tag="Denmark"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/20/c7/47/20c74768-5ce8-52ca-c13e-d51fd1641ddb/mzaf_8197938095341255443.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="item.detail.html#437608186"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c28.jpg)"></a>
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
                                                <div class="list-body"><a href="item.detail.html#437608186"
                                                                          class="list-title title ajax h-1x">Love
                                                    Someone </a><a href="artist.detail.html#437608186"
                                                                   class="list-subtitle d-block text-muted h-1x subtitle ajax">Lukas
                                                    Graham</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12" data-id="433873297" data-category="Pop" data-tag="USA"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/61/21/7d/61217d02-2aea-96cc-f2f8-ff29a90cf043/mzaf_3962092115674978972.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="item.detail.html#433873297"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c27.jpg)"></a>
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
                                                <div class="list-body"><a href="item.detail.html#433873297"
                                                                          class="list-title title ajax h-1x">Beautiful </a><a
                                                        href="artist.detail.html#433873297"
                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Bazzi
                                                    Feat. Camila Cabello</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12" data-id="428550515" data-category="RAP" data-tag="Australia"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview115/v4/4c/58/f4/4c58f4f0-ec84-c5e3-15ed-39beb0933e38/mzaf_3604425775820894823.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="item.detail.html#428550515"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c3.jpg)"></a>
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
                                                <div class="list-body"><a href="item.detail.html#428550515"
                                                                          class="list-title title ajax h-1x">Be
                                                    Alright </a><a href="artist.detail.html#428550515"
                                                                   class="list-subtitle d-block text-muted h-1x subtitle ajax">Dean
                                                    Lewis</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12" data-id="408576846" data-category="Rap" data-tag="England"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/c9/1f/83/c91f83b2-38c7-3a93-fabe-2da29dc5c2a8/mzaf_5271705754245759426.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="item.detail.html#408576846"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c25.jpg)"></a>
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
                                                <div class="list-body"><a href="item.detail.html#408576846"
                                                                          class="list-title title ajax h-1x">Shotgun </a><a
                                                        href="artist.detail.html#408576846"
                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">George
                                                    Ezra</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12" data-id="435950080" data-category="Dance"
                                         data-tag="United Kingdom"
                                         data-source="https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/bd/28/a1/bd28a103-b17f-540a-eae3-9bfe992e2562/mzaf_6343854158099733867.plus.aac.p.m4a">
                                        <div class="list-item r">
                                            <div class="media"><a href="item.detail.html#435950080"
                                                                  class="ajax media-content"
                                                                  style="background-image:url(assets/img/c2.jpg)"></a>
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
                                                <div class="list-body"><a href="item.detail.html#435950080"
                                                                          class="list-title title ajax h-1x">Promises </a><a
                                                        href="artist.detail.html#435950080"
                                                        class="list-subtitle d-block text-muted h-1x subtitle ajax">Calvin
                                                    Harris &amp; Sam Smith</a></div>
                                            </div>
                                        </div>
                                    </div>
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