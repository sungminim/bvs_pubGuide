<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>BVS Publishing Guide</title>
	<link rel="icon" type="image/png" sizes="192x192"  href="/bvs_pubGuide/guide/type/img/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="/bvs_pubGuide/guide/type/img/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/bvs_pubGuide/guide/type/img/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/bvs_pubGuide/guide/type/img/favicon/avicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/bvs_pubGuide/guide/type/img/favicon/favicon-16x16.png">
	<link rel="manifest" href="/bvs_pubGuide/guide/type/img/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="/bvs_pubGuide/guide/type/img/favicon/ms-icon-144x144.png">
	
	<script type="text/javascript" src="/bvs_pubGuide/guide/type/js/jquery/jquery-3.5.1.min.js"></script>
    <!-- mCustomScrollbar -->
    <link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/js/mCustomScrollbar/jquery.mCustomScrollbar.css">
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	
	<!-- swiper -->
	<script type="text/javascript" src="/bvs_pubGuide/guide/type/js/swiper/swiper.js"></script>
	<link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/js/swiper/swiper.css" />

    <!-- js -->
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/layout.js"></script>
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/cont.js"></script>

	<!-- css -->
	<link rel="stylesheet" href="/bvs_pubGuide/guide/type/css/common.css">
	<link rel="stylesheet" href="/bvs_pubGuide/guide/type/css/layout.css">
    <link rel="stylesheet" href="/bvs_pubGuide/guide/type/css/board.css">
    <link rel="stylesheet" href="/bvs_pubGuide/guide/type/css/contA.css">
</head>

<body>
    <!-- skip nav -->
    <div id="skip_nav">
        <a href="#containerArea">본문 바로가기</a>
        <a href="#headerArea">메뉴 바로가기</a>
        <a href="#footerArea">푸터 바로가기</a>
    </div>

    <!-- 공식배너 -->
    <div class="masthead">
        <div class="inner">
            <p class="txt">이 누리집은 대한민국 공식 전자정부 누리집입니다.</p>
        </div>
    </div>

    <!-- 헤더 : 아이콘 세로형 -->
    <header id="headerArea" class="header">
        <div class="header_wrap">
            <div class="header_body">
                <div class="inner">
                    <div class="header_etc">
                        <ul class="etc_list">
                            <li>
                                <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">어린이 정부포털</a>
                            </li>
                            <li>
                                <div class="drop_wrap">
                                    <button type="button" class="btn_txt icon_arrow_down btn_drop">
                                        지원
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="drop_menu">
                                        <div class="drop_inner">
                                            <ul class="drop_list">
                                                <li>
                                                    <a href="#none">인증센터</a>
                                                </li>
                                                <li>
                                                    <a href="#none">누리집안내지도</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div> 
                                </div>
                            </li>
                            <li>
                                <div class="drop_wrap zoom_drop">
                                    <button type="button" class="btn_txt icon_arrow_down btn_drop">
                                        화면크기
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="drop_menu">
                                        <div class="drop_inner">
                                            <ul class="drop_list">
                                                <li>
                                                    <a href="#none">작게</a>
                                                </li>
                                                <li>
                                                    <a href="#none" class="active">보통</a>
                                                </li>
                                                <li>
                                                    <a href="#none">조금 크게</a>
                                                </li>
                                                <li>
                                                    <a href="#none">크게</a>
                                                </li>
                                                <li>
                                                    <a href="#none">가장 크게</a>
                                                </li>
                                            </ul>
                                            <div class="drop_bottom">
                                                <button type="button" class="btn_txt icon_before icon_reset">초기화</button>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </li>
                            <li>
                                <div class="drop_wrap">
                                    <button type="button" class="btn_txt icon_arrow_down btn_drop">
                                        Language
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="drop_menu">
                                        <div class="drop_inner">
                                            <ul class="drop_list">
                                                <li>
                                                    <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">한국어</a>
                                                </li>
                                                <li>
                                                    <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">English</a>
                                                </li>
                                                <li>
                                                    <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">中文</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="header_cnt">
                        <h1 class="logo">
                            <a href="#none">
                                <img src="/bvs_pubGuide/guide/type/img/layout/logo_bvs.svg" class="logo_img" alt="bvs">
                            </a>
                        </h1>
                        <div class="right">
                            <button type="button" class="btn_navi search" onclick="popup.popupEvent.Show('#popupTotalSearch');">통합검색</button>
                            <button type="button" class="btn_navi login">로그인</button>
                            <button type="button" class="btn_navi join">회원가입</button>
                            <div class="drop_wrap my_drop">
                                <button type="button" class="btn_navi myinfo btn_drop">나의 GOV</button>
                                <div class="drop_menu">
                                    <div class="drop_inner">
                                        <div class="drop_top_info">
                                            <p class="my_name">가이드님</p>
                                            <dl class="my_time">
                                                <dt>로그아웃까지 남은 시간</dt>
                                                <dd>
                                                    <span class="time">12:00</span>
                                                    <button type="button" class="btn_txt">시간 연장</button>
                                                </dd>
                                            </dl>
                                        </div>
                                        <ul class="drop_list">
                                            <li>
                                                <a href="#none">나의 GOV 홈</a>
                                            </li>
                                            <li>
                                                <a href="#none">나의 신청내역</a>
                                            </li>
                                            <li>
                                                <a href="#none">나의 생활정보</a>
                                            </li>
                                            <li>
                                                <a href="#none">나의 정보관리</a>
                                            </li>
                                        </ul>
                                        <div class="drop_bottom">
                                            <button type="button" class="btn_txt icon_before icon_logout">로그아웃</button>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <button type="button" class="btn_navi all">전체메뉴</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- PC GNB -->
            <nav class="header_gnb">
                <div class="inner">
                    <ul class="gnb_menu">
                        <li>
                            <button type="button" class="gnb_1depth" data-trigger="gnb">1Depth</button>
                            <div class="gnb_depth_wrap">
                                <div class="gnb_main_list">
                                    <ul class="gnb_2depth_list">
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">2Depth title</h2>
                                                    <ul>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="gnb_sub_banner">
                                                    <span class="sub_badge bg1">신규 서비스</span>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list between">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">2Depth title</h2>
                                                    <ul>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="gnb_sub_banner">
                                                    <span class="sub_badge bg1">신규 서비스</span>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list between">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">
                                                        <a href="#none">2Depth title 링크</a>
                                                    </h2>
                                                    <ul>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="gnb_sub_banner">
                                                    <span class="sub_badge bg1">신규 서비스</span>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#none" class="gnb_2depth link" target="_blank" title="새 창 열림">외부사이트 링크</a>
                                        </li>
                                        <li>
                                            <button type="button" class="gnb_2depth link">Button</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="gnb_1depth" data-trigger="gnb">1Depth</button>
                            <div class="gnb_depth_wrap">
                                <div class="gnb_main_list">
                                    <ul class="gnb_2depth_list">
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">2Depth title</h2>
                                                    <ul>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="gnb_sub_banner">
                                                    <span class="sub_badge bg1">신규 서비스</span>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">2Depth title</h2>
                                                    <ul>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                        <li>
                                                            <a href="#none" class="gnb_3depth">Last Depth</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="gnb_sub_banner">
                                                    <span class="sub_badge bg1">신규 서비스</span>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="gnb_sub_banner">
                                                <span class="sub_badge bg1">신규 서비스</span>
                                                <button type="button" class="btn_sub_text">메뉴명</button>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="gnb_1depth" data-trigger="gnb">1Depth</button>
                            <div class="gnb_depth_wrap">
                                <div class="gnb_main_list">
                                    <div class="gnb_sub_list between">
                                        <div class="gnb_sub_content">
                                            <h2 class="sub_title">2Depth title</h2>
                                            <ul>
                                                <li>
                                                    <a href="#none" class="gnb_3depth">Last Depth</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="gnb_sub_banner">
                                            <span class="sub_badge bg1">신규 서비스</span>
                                            <button type="button" class="btn_sub_text">메뉴명</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#none" class="gnb_1depth link" data-trigger="gnb">1Depth Link</a>
                        </li>
                        <li>
                            <button type="button" class="gnb_1depth" data-trigger="gnb">1Depth</button>
                            <div class="gnb_depth_wrap">
                                <div class="gnb_main_list">
                                    <ul class="gnb_2depth_list">
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">2Depth title</h2>
                                                    <ul class="type_desc">
                                                        <li>
                                                            <h3 class="title">
                                                                <a href="#none" class="link" target="_blank" title="새 창 열림">3Depth title</a>
                                                            </h3>
                                                            <p class="txt">메뉴명과 메뉴에 관한 간략한 설명이 표시되는 스타일입니다.</p>
                                                        </li>
                                                        <li>
                                                            <h3 class="title">
                                                                <a href="#none">3Depth title</a>
                                                            </h3>
                                                            <p class="txt">메뉴명과 메뉴에 관한 간략한 설명이 표시되는 스타일입니다.</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <button type="button" class="gnb_2depth">2Depth</button>
                                            <div class="gnb_sub_list between">
                                                <div class="gnb_sub_content">
                                                    <h2 class="sub_title">2Depth title</h2>
                                                    <ul class="type_desc">
                                                        <li>
                                                            <h3 class="title">
                                                                <a href="#none" class="link" target="_blank" title="새 창 열림">3Depth title</a>
                                                            </h3>
                                                            <p class="txt">메뉴명과 메뉴에 관한 간략한 설명이 표시되는 스타일입니다.</p>
                                                        </li>
                                                        <li>
                                                            <h3 class="title">
                                                                <a href="#none">3Depth title</a>
                                                            </h3>
                                                            <p class="txt">메뉴명과 메뉴에 관한 간략한 설명이 표시되는 스타일입니다.</p>
                                                        </li>
                                                        <li>
                                                            <h3 class="title">
                                                                <a href="#none">3Depth title</a>
                                                            </h3>
                                                            <p class="txt">메뉴명과 메뉴에 관한 간략한 설명이 표시되는 스타일입니다.</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="gnb_sub_banner">
                                                    <span class="sub_badge bg1">신규 서비스</span>
                                                    <button type="button" class="btn_sub_text">메뉴명</button>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- MOBILE GNB -->
        <nav class="mobile_gnb">
            <div class="gnb_wrap">
                <div class="gnb_header">
                    <div class="gnb_utils">
                        <ul class="etc_list">
                            <li>
                                <div class="drop_wrap zoom_drop">
                                    <button type="button" class="btn_txt icon_arrow_down btn_drop">
                                        화면크기
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="drop_menu">
                                        <div class="drop_inner">
                                            <ul class="drop_list">
                                                <li>
                                                    <a href="#none">작게</a>
                                                </li>
                                                <li>
                                                    <a href="#none" class="active">보통</a>
                                                </li>
                                                <li>
                                                    <a href="#none">조금 크게</a>
                                                </li>
                                                <li>
                                                    <a href="#none">크게</a>
                                                </li>
                                                <li>
                                                    <a href="#none">가장 크게</a>
                                                </li>
                                            </ul>
                                            <div class="drop_bottom">
                                                <button type="button" class="btn_txt icon_before icon_reset">초기화</button>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </li>
                            <li>
                                <div class="drop_wrap">
                                    <button type="button" class="btn_txt icon_arrow_down btn_drop">
                                        Language
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="drop_menu">
                                        <div class="drop_inner">
                                            <ul class="drop_list">
                                                <li>
                                                    <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">한국어</a>
                                                </li>
                                                <li>
                                                    <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">English</a>
                                                </li>
                                                <li>
                                                    <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">中文</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <button type="button" class="btn_closenav">
                            <span class="sr_only">전체메뉴 닫기</span>
                        </button>
                    </div>
                    <div class="gnb_login">
                        <span class="user">가이드님</span>
                        <button type="button" class="btn_logout">로그아웃</button>
                        <!-- <button type="button" class="btn_login">로그인을 해주세요.</button> -->
                    </div>
                    <div class="gnb_service_menu">
                        <a href="#none" class="link">메뉴명</a>
                        <a href="#none" class="link">메뉴명</a>
                        <a href="#none" class="link">메뉴명</a>
                        <a href="#none" class="link">메뉴명</a>
                    </div>
                    <div class="form_wrap">
                        <input type="text" class="form_input form_icon" placeholder="찾고자 하는 메뉴명을 입력해 주세요" name="totalMenuInput" title="찾고자 하는 메뉴명을 입력해 주세요" onclick="popup.popupEvent.Show('#popupMenuSearch');" onkeydown="if(event.key === 'Enter'){ popup.popupEvent.Show('#popupMenuSearch');}" readonly>
                        <button type="button" class="btn_search">
                            <span class="sr_only">검색</span>
                        </button>
                    </div>
                </div>
                <div class="gnb_body">
                    <div class="gnb_menu">
                        <div class="menu_wrap">
                            <ul>
                                <li>
                                    <a href="#mGnb1" class="mob_1depth"><h2>1depth-1</h2></a>
                                </li>
                                <li>
                                    <a href="#mGnb2" class="mob_1depth"><h2>1depth-2</h2></a>
                                </li>
                                <li>
                                    <a href="#mGnb3" class="mob_1depth"><h2>1depth-3</h2></a>
                                </li>
                                <li>
                                    <a href="#mGnb4" class="mob_1depth"><h2>1depth-4</h2></a>
                                </li>
                            </ul>
                        </div>
                        <div class="submenu_wrap">
                            <div class="gnb_sub_list" id="mGnb1">
                                <h3 class="sub_title">1depth title-1</h3>
                                <ul>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="gnb_sub_list" id="mGnb2">
                                <h3 class="sub_title">1depth title-2</h3>
                                <ul>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                        <ul class="mob_3depthlist">
                                            <li>
                                                <a href="#none" class="mob_3depth">3depth</a>
                                            </li>
                                            <li>
                                                <a href="#none" class="mob_3depth">3depth<br>(4depth O)</a>
                                                <div class="mob_4depth_wrap">
                                                    <div class="mob_4depth_head">
                                                        <button type="button" class="btn_prev">
                                                            <span class="sr_only">이전화면</span>
                                                        </button>
                                                        <button type="button" class="btn_closenav">
                                                            <span class="sr_only">전체메뉴 닫기</span>
                                                        </button>
                                                    </div>
                                                    <div class="mob_4depth_body">
                                                        <h4 class="sub_title">3depth title</h4>
                                                        <ul class="mob_4depth_list">
                                                            <li>
                                                                <a href="#none">depth title</a>
                                                            </li>
                                                            <li>
                                                                <a href="#none">depth title</a>
                                                            </li>
                                                            <li>
                                                                <a href="#none">depth title</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="#none" class="mob_3depth">3depth</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="gnb_sub_list" id="mGnb3">
                                <h3 class="sub_title">1depth title-3</h3>
                                <ul>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="gnb_sub_list" id="mGnb4">
                                <h3 class="sub_title">1depth title-4</h3>
                                <ul>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                    <li>
                                        <a href="#none" class="mob_2depth">2depth</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="gnb_bottom">
                        <a href="#none" class="btn_txt">인증센터</a>
                        <a href="#none" class="btn_txt icon_direct" target="_blank" title="새 창 열림">어린이 정부포털</a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- 메뉴명 검색 popup -->
        <div class="popup_wrap" id="popupMenuSearch" data-type="full">
            <div class="popup_inner">
                <div class="popup_cnt">
                    <div class="popup_header sr_only">
                        <h2 class="title">메뉴명 검색</h2>
                    </div>
                    <div class="popup_body">
                        <div class="pop_total_search_wrap menu">
                            <div class="search_total_top">
                                <div class="search_form_wrap">
                                    <div class="form_wrap">
                                        <input type="text" class="form_input form_icon" placeholder="찾고자 하는 메뉴명을 입력해 주세요" name="totalMenuSearch" title="찾고자 하는 메뉴명을 입력해 주세요">
                                        <button type="button" class="btn_allsearch">
                                            <span class="sr_only">검색</span>
                                        </button>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="search_detail">
                                <div class="menu_search">
                                    <!-- 결과 無 -->
                                    <div class="no_result">
                                        <p>메뉴 검색 결과가 없습니다.</p>
                                        <a href="#none" class="pop_btn btn_searchright">통합검색으로 결과 보기</a>
                                    </div>

                                    <!-- 결과 有 -->
                                    <div class="result_wrap">
                                        <ul>
                                            <li>
                                                <p class="title">Title</p>
                                                <ul class="result_list">
                                                    <li><a href="none">menu1</a></li>
                                                    <li><a href="none">menu2</a></li>
                                                    <li><a href="none">menu3</a></li>
                                                    <li><a href="none">menu4 <span class="blue">메뉴명</span> menu</a></li>
                                                    <li><a href="none">menu5</a></li>
                                                </ul>
                                                <ul class="result_list">
                                                    <li><a href="none">menu1</a></li>
                                                    <li><a href="none">menu2</a></li>
                                                    <li><a href="none"><span class="blue">메뉴명</span> menu3</a></li>
                                                    <li><a href="none">menu4</a></li>
                                                    <li><a href="none">menu5<span class="blue">메뉴명</span></a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <p class="title">Title</p>
                                                <ul class="result_list">
                                                    <li><a href="none">menu1</a></li>
                                                    <li><a href="none">menu2</a></li>
                                                </ul>
                                                <ul class="result_list">
                                                    <li><a href="none">menu1</a></li>
                                                    <li><a href="none">menu2</a></li>
                                                    <li><a href="none"><span class="blue">메뉴명</span>menu3</a></li>
                                                    <li><a href="none">menu4</a></li>
                                                    <li><a href="none">menu5<span class="blue">메뉴명</span></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <a href="#none" class="pop_btn btn_searchright">통합검색으로 결과 보기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="popup_close">
                        <span class="sr_only">레이어 닫기</span>
                    </button>
                </div>
            </div>
        </div>

        <!-- 통합검색 popup -->
        <div class="popup_wrap" id="popupTotalSearch" data-type="full">
            <div class="popup_inner">
                <div class="popup_cnt">
                    <div class="popup_header sr_only">
                        <h2 class="title">통합검색</h2>
                    </div>
                    <div class="popup_body">
                        <div class="pop_total_search_wrap">
                            <div class="search_total_top">
                                <div class="search_title">
                                    <label for="search_total_input_id">검색어를 입력해주세요</label>
                                    <a href="#none" class="pop_btn btn_searchright">검색에 어려움이 있으신가요?</a>
                                </div>
                                <div class="search_form_wrap">
                                    <div class="form_wrap">
                                        <input type="text" class="form_input form_icon" id="search_total_input_id" title="검색어를 입력해주세요">
                                        <button type="button" class="btn_allsearch">
                                            <span class="sr_only">검색</span>
                                        </button>
                                    </div>
                                    <button type="button" class="pop_btn btn_advanced">고급검색</button>
                                </div>
                            </div>
                            <div class="search_detail">
                                <ul class="search_info_list">
                                    <li class="left">
                                        <h3 class="title">인기검색어</h3>
                                        <ol class="ranking">
                                            <li>
                                                <span class="ranking_txt">랭킹 1</span>
                                                <span class="ranking_state up">
                                                    <em class="sr_only">상승</em>
                                                    1
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 2</span>
                                                <span class="ranking_state same">
                                                    <em class="sr_only">동일</em>
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 3</span>
                                                <span class="ranking_state down">
                                                    <em class="sr_only">하락</em>
                                                    2
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 4</span>
                                                <span class="ranking_state up">
                                                    <em class="sr_only">상승</em>
                                                    3
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 5</span>
                                                <span class="ranking_state same">
                                                    <em class="sr_only">동일</em>
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 6</span>
                                                <span class="ranking_state down">
                                                    <em class="sr_only">하락</em>
                                                    1
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 7</span>
                                                <span class="ranking_state up">
                                                    <em class="sr_only">상승</em>
                                                    1
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 8</span>
                                                <span class="ranking_state same">
                                                    <em class="sr_only">동일</em>
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 9</span>
                                                <span class="ranking_state down">
                                                    <em class="sr_only">하락</em>
                                                    2
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ranking_txt">랭킹 10</span>
                                                <span class="ranking_state up">
                                                    <em class="sr_only">상승</em>
                                                    1
                                                </span>
                                            </li>
                                        </ol>
                                    </li>
                                    <li class="right">
                                        <h3 class="title">최근검색어</h3>
                                        <ul class="recent" aria-live="polite">
                                            <li>
                                                <span class="word_txt">최근검색어 1</span>
                                                <button type="button" class="btn_del">
                                                    <span class="sr_only">삭제</span>
                                                </button>
                                            </li>
                                            <li>
                                                <span class="word_txt">최근검색어 2</span>
                                                <button type="button" class="btn_del">
                                                    <span class="sr_only">삭제</span>
                                                </button>
                                            </li>
                                            <li>
                                                <span class="word_txt">최근검색어 3</span>
                                                <button type="button" class="btn_del">
                                                    <span class="sr_only">삭제</span>
                                                </button>
                                            </li>
                                        </ul>
                                        <button type="button" class="pop_btn btn_del">최근검색어 전체 삭제</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="popup_close">
                        <span class="sr_only">레이어 닫기</span>
                    </button>
                </div>
            </div>
        </div>

    </header>
    <div class="gnb_backdrop"></div>
                    
