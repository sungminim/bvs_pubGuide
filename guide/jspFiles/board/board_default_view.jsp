<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/bvs_styleGuide_new/guide/incFiles/header.jsp"/>

<!-- container-->
<div id="containerArea" class="container">
    <!-- inner -->
    <div class="inner">
        <div class="contents">
			<div class="board_area">
				<div class="lineList_v">
					<dl>
						<!-- 게시판 타이틀 -->
						<dt>
							<span class="mark_categ">카테고리</span>
							<div class="txtL">
								<p>게시판 상세 제목 영역입니다.게시판 상세 제목 영역입니다.</p>
							</div>
							<div class="txtInfo">
								<span class="writer"><em class="name">작성자</em> <em class="data">학생복지팀</em></span>
								<span class="date">  <em class="name">등록일</em> <em class="data">2024.10.06</em></span>
								<span class="view">  <em class="name">조회수</em> <em class="data">10,430</em></span>
							</div>
						</dt>
						<!-- //게시판 타이틀 -->
						
						<!-- 게시판 컨텐츠 -->
						<dd>
							<div class="fileArea">
								<p><a href="#none"><span>[규정]_다운로드 압축 파일.zip (4163.9 KB)</span></a></p>
								<p><a href="#none"><span>[규정]_다운로드 압축 파일.zip (4163.9 KB)</span></a></p>
							</div>
			
							<div class="view_txt">
								상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.<br />
								상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.<br />
								상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.
								<br />
								<div class="centerImg">
									<img src="/bvs_styleGuide_new/guide/type/img/board/img_borderViewSample.png" alt="">
								</div>
								
								<img src="/bvs_styleGuide_new/guide/type/img/board/img_borderViewSample.png" alt=""><br><br>
							</div>
			
							<div class="view_txt typeEditor"><!-- 기본+에디터 스타일로 노출할 경우 typeEditor 클래스 추가 -->
								<p>상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.</p>
								
								<p>상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.상세 내용을 입력해주세요.</p>
								<p><img src="/bvs_styleGuide_new/guide/type/img/board/img_borderViewSample.png" alt=""></p>
							</div>
						</dd>
						<!-- //게시판 컨텐츠 -->
					</dl>

					<div class="btn_list center">
						<button type="button" class="btn primary medium">수정</button>
						<button type="button" class="btn line medium">삭제</button>
						<button type="button" class="btn secondary medium">목록</button>
					</div>
				</div>
			
				<!-- 댓글영역 필요 없을경우 주석 -->
				<!--댓글-->
				<section class="replyArea">
					<div class="tit">
						<h1>댓글</h1>
						<span class="num">2</span>
					</div>
			
					<!-- 쓰기 -->
					<div class="write">
			
						<!-- 1차수정 -->
						<!-- <div class="txtInfo">
							<span class="writer">작성자 <input type="text" class="inp_t form_input" title="작성자 입력"/></span>
							<span class="pw">
								확인번호 <input type="text" class="inp_t form_input" title="확인번호 입력" />
								<em>댓글 수정 및 삭제시 필요합니다.</em>
							</span>
						</div> -->
						<!-- 1차수정 -->
						
						<fieldset>
							<legend>댓글 입력</legend>
							<label class="formInput">
								<textarea rows="4" class="inputTextarea" placeholder="댓글을 입력하세요."></textarea>
								<p class="byte"><span class="val">25</span>/<span class="total">500</span></p>
							</label>
			
							<div class="btn">
								<button class="btn_txtWrite">등록하기</button>
							</div>
						</fieldset>
					</div>
					<!-- //쓰기 -->
			
					<ul class="list">
						<!-- list(읽기) -->
						<li>
							<div class="txtInfo">
								<span class="writer">홍길동</span>
								<span class="date">2017.10.25 12:30</span>
							</div>
							<p>
								안녕하세요. 입학관리팀입니다.<br>
								먼저 본 대학에 많은 관심을 가져주신 점에 대해 감사를 드리며, 질의하신 사항에 대하여 다음과 같이 회신드립니다. <br>전화문의해 주시기 바랍니다.
							</p>
						</li>
						<!-- //list(읽기) -->
			
						<li>
							<div class="txtInfo">
								<span class="writer">홍길동</span>
								<span class="date">2017.10.25 12:30</span>
							</div>
							<p>
								안녕하세요. 입학관리팀입니다.<br>
								먼저 본 대학에 많은 관심을 가져주신 점에 대해 감사를 드리며, 질의하신 사항에 대하여 다음과 같이 회신드립니다. <br>전화문의해 주시기 바랍니다.
							</p>
							<div class="btnEdit">
								<button type="button" class="btn_txtMini modify"><span>수정</span></button>
								<button type="button" class="btn_txtMini del"><span>삭제</span></button>
							</div>
						</li>
						<!-- //list(읽기) -->
			
						<!-- list(수정)-->
						<li>
							<div class="txtInfo">
								<span class="writer">홍길동</span>
								<span class="date">2017.10.25 12:30</span>
							</div>
							
							<fieldset>
								<legend>댓글 수정</legend>
								<label class="formInput">
									<textarea rows="4" class="inputTextarea" placeholder="댓글을 입력하세요." title="댓글 입력"></textarea>
									<p class="byte"><span class="val">25</span>/<span class="total">500</span></p>
								</label>
							</fieldset>
			
							<div class="btnEdit">
								<button type="button" class="btn_txtMini modify"><span>수정</span></button>
								<button type="button" class="btn_txtMini del"><span>취소</span></button>
							</div>
						</li>
						<!-- //list(수정)-->
			
						<!-- list(읽기) -->
						<li>
							<div class="txtInfo">
								<span class="writer">홍길동</span>
								<span class="date">2017.10.25 12:30</span>
							</div>
							<p>
								안녕하세요. 입학관리팀입니다.<br>
								먼저 본 대학에 많은 관심을 가져주신 점에 대해 감사를 드리며, 질의하신 사항에 대하여 다음과 같이 회신드립니다. <br>전화문의해 주시기 바랍니다.
							</p>
						</li>
						<!-- //list(읽기) -->
					</ul>
				</section>
				<!--/댓글-->
			
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

				<!-- 댓글영역 필요 없을경우 주석 -->
			
				<!-- 이전글/다음글 -->
				<div class="prevNnext">
					<ul>
						<li class="prev">
							<strong>이전글</strong>
							<p class="no_article" style="display:none;">이전글이 없습니다.</p>
							<p class="article" >
								<a href="#none">
									<span class="categ">카테고리</span>'카카오톡채널' 개설
								</a>
							</p>
						</li>
						<li class="next">
							<strong>다음글</strong>
							<p class="no_article">다음글이 없습니다.</p>
							<p class="article" style="display:none;">
								<span class="categ">카테고리</span><a href="#none">'카카오톡채널' 개설</a>
							</p>
						</li>
					</ul>
				</div>
				<!-- //이전글/다음글 -->
			
			</div>
        </div>
    </div>
    <!-- //inner -->
</div> 
<!-- //container-->
 
<jsp:include page="/bvs_styleGuide_new/guide/incFiles/footer.jsp"/>