<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/bvs_styleGuide_new/guide/incFiles/header.jsp"/>

<!-- container-->
<div id="containerArea" class="container">
    <!-- inner -->
    <div class="inner">
		<!-- contents -->
        <div class="contents">
			<div class="tab_area">
				<!-- tab list -->
				<div class="tab_drop_wrap">
					<button type="button" class="tab_drop_btn">option 1</button>
					<div class="tab_list_wrap tab_drop_menu">
						<div class="tap_drop_in">
							<ul role="tablist" class="tab_drop_list">
								<li id="option1_01" role="tab" aria-selected="true" aria-controls="tab_cont1_01" class="item_link active">
									<button type="button" class="btn_tab">option 1</button>
								</li>
								<li id="option1_02" role="tab" aria-selected="false" aria-controls="tab_cont1_02" class="item_link">
									<button type="button" class="btn_tab">option 2</button>
								</li>
								<li id="option1_03" role="tab" aria-selected="false" aria-controls="tab_cont1_03" class="item_link">
									<button type="button" class="btn_tab">option 3</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- //tab list -->

				<!-- tab contents -->
				<div class="tab_cont_wrap">
					<section id="tab_cont1_01" role="tabpanel" aria-labelledby="option1_01" class="tab_panel active">
						<div class="bbs_list Thumbnail rowDtl">
							<ul class="defulat">
								<li class="no_articleArea">
									<p class="no_article">등록된 게시물이 없습니다.</p>
								</li>
								<li>
									<!-- 이미지가 없을경우 공란으로 처리, 이미지가 있는경우 play 클레스 추가 -->
									<a href="#none" class="ThumbnailArea" title="게시물 제목">
										<!-- <img src="https://t1.daumcdn.net/cfile/tistory/99B192495BA481842D" alt=""> -->
									</a>
									<div class="infoArea">
										<span class="cag">카테고리</span>
										<a href="#none" class="noticeTitle">
											<p>
												7월 월례세미나 비즈니스 코칭 현장에서 진정한 연결을 이루는 법
											</p>
											<i class="ripple">[9999]</i>
											<i class="iconB PIN"><span class="hidden">비밀글</span></i>
											<i class="iconB new"><span class="hidden">새글</span></i>
										</a>
										<p class="noticeText">
											한국코치협회는 다양한 코칭 보급사업, 코칭 연구개발 및 전문코치 인증제도를 실시하여 우수한 코치를 육성하고 있으며, 이를 통하여 개인의 잠재력을 높이고 기업의 생산성을
											향상시키며 다양한 사회공헌 활동과 기여를 확대하며 나아가 국가경쟁력과 국민행복지수를 높이는데 앞장서고 있습니다.
										</p>
										<div class="noticeInfo">
											<span class="writer">홍길동</span>
											<span class="date">23.09.01</span>
											<span class="view">조회 99</span>
											<!-- <span class="like">좋아요 6</span> -->
										</div>
									</div>
								</li>
						
								<li>
									<a href="#none" class="ThumbnailArea play" title="게시물 제목">
										<img src="https://t1.daumcdn.net/cfile/tistory/99B192495BA481842D" alt="">
									</a>
									<div class="infoArea">
										<span class="cag">카테고리</span>
										<a href="#none" class="noticeTitle">
											<p>
												7월 월례세미나 비즈니스 코칭 현장에서 진정한 연결을 이루는 법
											</p>
											<i class="iconB PIN"><span class="hidden">비밀글</span></i>
											<i class="iconB new"><span class="hidden">새글</span></i>
										</a>
										<p class="noticeText">
											한국코치협회는 다양한 코칭 보급사업, 코칭 연구개발 및 전문코치 인증제도를 실시하여 우수한 코치를 육성하고 있으며, 이를 통하여 개인의 잠재력을 높이고 기업의 생산성을
											향상시키며 다양한 사회공헌 활동과 기여를 확대하며 나아가 국가경쟁력과 국민행복지수를 높이는데 앞장서고 있습니다.
										</p>
										<div class="noticeInfo">
											<span class="writer">홍길동</span>
											<span class="date">23.09.01</span>
											<span class="view">조회 99</span>
										</div>
									</div>
								</li>
							</ul>
							<!-- Pagination -->
							<div class="numberPagination" role="navigation">
								<!-- <button type="button" class="first"><span>처음</span></button> -->
								<button type="button" class="prev">이전</button>
								<ul class="paging">
									<li><button type="button">1</button></li>
									<li class="pagingDot"></li>
									<li><button type="button">6</button></li>
									<li><button type="button">7</button></li>
									<li><button type="button">8</button></li>
									<li><button type="button">9</button></li>
									<li><button type="button">10</button></li>
									<li><button type="button">11</button></li>
									<li><button type="button" class="on">12</button></li>
									<li class="pagingDot"></li>
									<li><button type="button">120</button></li>
								</ul>
								<button type="button" class="next">다음</button>
								<!-- <button type="button" class="last"><span>끝</span></button> -->
							</div>
							<!-- //Pagination -->
							<!-- 버튼영역 -->
							<div class="btn_list center">
								<button type="button" class="btn primary large">등록</button>
							</div>
							<!-- //버튼영역 -->
						</div>
					</section>
					<section id="tab_cont1_02" role="tabpanel" aria-labelledby="option1_02" class="tab_panel">
						<h3 class="sr_only">섹션제목2</h3>
						<p class="txtBody3">컨텐츠 내용2이 노출됩니다.</p>
					</section>
					<section id="tab_cont1_03" role="tabpanel" aria-labelledby="option1_03" class="tab_panel">
						<h3 class="sr_only">섹션제목3</h3>
						<p class="txtBody3">컨텐츠 내용3이 노출됩니다.</p>
					</section>
				</div>
				<!-- //tab contents -->
				 
			</div>
		</div>
		<!-- //contents -->
    </div>
    <!-- //inner -->
</div> 
<!-- //container-->

<jsp:include page="/bvs_styleGuide_new/guide/incFiles/footer.jsp"/>