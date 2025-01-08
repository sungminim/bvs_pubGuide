<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/bvs_pubGuide/guide/incFiles/header.jsp"/>

<!-- container-->
<div id="containerArea" class="container">

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

    <!-- inner -->
    <div class="inner">
        <div class="contents">
            
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