<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title>BVS Publishing Guide</title>

    <link rel="shortcut icon" href="/bvs_pubGuide/guide/type/img/per/layout/favicon.ico" />

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/css/common.css" /><!-- 공통 -->
    <link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/css/layout.css" /><!-- 레이아웃 -->
    <link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/css/board.css" /><!-- 게시판 -->
    <link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/css/main.css" /><!-- 메인 -->
    <link rel="stylesheet" type="text/css" href="/bvs_pubGuide/guide/type/css/contA.css" /><!-- 개별 -->
    
    <!-- jquery -->
    <link rel="stylesheet" href="/bvs_pubGuide/guide/type/js/jquery/jquery-ui.min.css"/>
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/jquery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/jquery/jquery-3.5.1.min.js"></script>
    
    <!-- datepicker -->
    <link rel="stylesheet" href="/bvs_pubGuide/guide/type/js/datepicker/datepicker.css"/>
    <script src="/bvs_pubGuide/guide/type/js/datepicker/datepicker.js"></script> 

    <!-- swiper -->
    <link rel="stylesheet" href="/bvs_pubGuide/guide/type/js/swiper/swiper.css"/>
    <script src="/bvs_pubGuide/guide/type/js/swiper/swiper.js"></script> 

    <!-- Gsap -->
    <script src="/bvs_pubGuide/guide/type/js/scroll/ScrollTrigger.min.js"></script>
    <script src="/bvs_pubGuide/guide/type/js/scroll/gsap.min.js"></script>

    <!-- js -->
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/main.js"></script><!-- 메인 -->
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/layout.js"></script><!-- 공통 -->
    <script type="text/javascript" src="/bvs_pubGuide/guide/type/js/cont.js"></script><!-- 개별 -->
</head>
<body>
    
	<!-- 레이어 팝업 -->
    <div class="popup_wrap" id="popup1" data-type="fade"  role="dialog">						
        <div class="popup_inner">
            <div class="popup_cnt">
                <div class="popup_header">
                    <h2 class="contTit4">모달 제목</h2>
                </div>
                <div class="popup_body">
                    <div class="popup_conts">
                        <!-- 팝업 내용 입력-->
                        <div class="conts_inner">
                            <b class="contTit2">내용 타이틀</b>

                            <p class="txtBody2">시작 <br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                대화 상자는 사용자에게 작업에 대해 알리고 중요한 정보를 포함하거나 결정이 필요하거나 여러 작업을 포함할 수 있습니다.<br>
                                끝</p>
                        </div>
                        <!-- //팝업 내용 입력 -->
                    </div>                                    
                </div>                                  
                <button type="button" class="popup_close">
                    <span class="sr_only">레이어 닫기</span>
                </button>
            </div>
        </div>                        
    </div>
	<!-- //레이어 팝업 -->
</body>
</html>
