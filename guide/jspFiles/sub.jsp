<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/bvs_pubGuide/guide/incFiles/header.jsp"/>

<script>
    var gnbDep1 = 1;
    var gnbDep2 = 3;
    var gnbDep3 = 1;
    var gnbDep4 = 1;
</script>

<!-- container-->
<div id="containerArea" class="container">

    <!-- inner -->
    <div class="inner in_between">

        <nav id="lnb_nav" aria-label="사이드메뉴">
            <div class="lnb">
                <h2>1depth title</h2>
                <ul>
                    <li>
                        <div class="lnb_depth">
                            <a href="#"><h3>2depth-title</h3></a>
                        </div>
                    </li>
                    <li>
                        <div class="lnb_depth">
                            <h3>2depth-title</h3>
                            <button type="button" aria-expanded="false">
                                <span class="sr_only">펼침</span>
                            </button>
                        </div>
                        <div class="lnb_list">
                            <ul>
                                <li>
                                    <button type="button" class="depth_tit" aria-expanded="false">
                                        3depth title
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="depth_wrap">
                                        <button type="button">
                                            3depth title
                                            <span class="sr_only">닫기</span>
                                        </button>
                                        <ul class="depth">
                                            <li><a href="#">4depth title</a></li>
                                            <li><a href="#">4depth title</a></li>
                                            <li><a href="#">4depth title</a></li>
                                            <li><a href="#">4depth title</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="#" class="depth_tit" aria-current="page">3depth title</a></li>
                                <li><a href="#" class="depth_tit">3depth title</a></li>
                                <li><a href="#" class="depth_tit">3depth title</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="lnb_depth">
                            <h3>2depth-title</h3>
                            <button type="button" aria-expanded="false">
                                <span class="sr_only">펼침</span>
                            </button>
                        </div>
                        <div class="lnb_list">
                            <ul>
                                <li>
                                    <button type="button" class="depth_tit" aria-expanded="false">
                                        3depth title
                                        <span class="sr_only">열기</span>
                                    </button>
                                    <div class="depth_wrap">
                                        <button type="button">
                                            3depth title
                                            <span class="sr_only">닫기</span>
                                        </button>
                                        <ul class="depth">
                                            <li><a href="#">4depth title</a></li>
                                            <li><a href="#">4depth title</a></li>
                                            <li><a href="#">4depth title</a></li>
                                            <li><a href="#">4depth title</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="#" class="depth_tit" aria-current="page">3depth title</a></li>
                                <li><a href="#" class="depth_tit">3depth title</a></li>
                                <li><a href="#" class="depth_tit">3depth title</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="contents">
            <div class="sLocation">
                <nav aria-label="브레드크럼">
                    <ol class="locNav">
                        <li class="home"><a href="#none" class="txt">홈</a></li>
                        <li class="more"><p class="scHdn">메뉴생략</p></li>
                        <li><p class="txt">Depth1</p></li>
                        <li><p class="txt">Depth2 (현재 화면의 상위 화면 링크)</p></li>
                    </ol>
                </nav>
            </div>
            
            <div class="page_title_wrap">
                <h2 class="title">
                    <span class="small_tit">페이지 부제목</span>
                    PAGE TITLE
                </h2>
                <p class="title_desc">
                    대한민국 디지털정부는 서비스 이용 편의를 위해 다양한 인증 방식을 제공합니다.
                    <br class="m_hide">
                    이용 목적에 맞는 적절한 인증 방법을 안내할 수 있도록 아래 버튼을 선택해주세요.
                    <br class="m_hide">
                    서비스 이용이 처음이라면 로그인 방식에 따라 회원가입이 필요할 수 있습니다.
                </p>
            </div>
        </div>
        
    </div>
    <!-- //inner -->
</div> 
<!-- //container-->
 
<jsp:include page="/bvs_pubGuide/guide/incFiles/footer.jsp"/>