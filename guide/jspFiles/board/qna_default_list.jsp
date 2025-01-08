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
						<div class="bbs_list qna">
							<ul class="defulat">
								<li>
									<p class="no_article">등록된 게시물이 없습니다.</p>
								</li>
								<li>
									<div class="infoArea">
										<div class="numArea">
											<span class="number">111</span>
											<!-- <span class="notice">공지</span> -->
										</div>
										<span class="cag">카테고리</span>
										<a href="#none" class="noticeTitle">
											<p>협회 임직원 활동에 대한 윤리규정 준수 요청</p>
											<i class="ripple">[9999]</i>
											<i class="iconB PIN"><span class="hidden">비밀글</span></i>
											<i class="iconB new"><span class="hidden">새글</span></i>
										</a>
					
										<div class="noticeInfo">
											<span class="writer">홍길동</span>
											<span class="date">17.06.26</span>
											<span class="view">조회 10,430</span>
										</div>
									</div>
									<div class="etcArea">
										<a href="#none" class="fileDown" title="첨부파일 다운로드"><span class="hidden">첨부파일</span></a>
					
										<!-- <span class="state">대기</span> -->
									</div>
								</li>
								<li>
									<div class="infoArea">
										<div class="numArea">
											<span class="number">9999</span>
											<!-- <span class="notice">공지</span> -->
										</div>
					
										<span class="cag">카테고리</span>
										<a href="#none" class="noticeTitle">
											<p>협회 임직원 활동에 대한 윤리규정 준수 요청 협회 임직원 활동에 대한 윤리규정 준수 요청</p>
										</a>
										<div class="noticeInfo">
											<span class="writer">홍길동</span>
											<span class="date">17.06.26</span>
											<span class="view">조회 10,430</span>
										</div>
									</div>
									<div class="etcArea">
										<a href="#none" class="fileDown" title="첨부파일 다운로드"><span class="hidden">첨부파일</span></a>
					
										<span class="state complete">답변완료</span>
									</div>
								</li>
					
								<li>
									<div class="infoArea">
										<div class="numArea">
											<span class="number">9999</span>
											<!-- <span class="notice">공지</span> -->
										</div>
					
										<span class="cag">카테고리</span>
										<a href="#none" class="noticeTitle">
											<p>협회 임직원 활동에 대한 윤리규정 준수 요청</p>
										</a>
										<div class="noticeInfo">
											<span class="writer">홍길동</span>
											<span class="date">17.06.26</span>
											<span class="view">조회 10,430</span>
										</div>
									</div>
									<div class="etcArea">
					
										<span class="state complete">답변완료</span>
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
								<button type="button" class="btn primary medium">등록</button>
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