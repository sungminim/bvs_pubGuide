<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/bvs_styleGuide_new/guide/incFiles/header.jsp"/>

<!-- container-->
<div id="containerArea" class="container">
    <!-- inner -->
    <div class="inner">
        <div class="contents">
			<div class="board_area">

				<!-- 쓰기 -->
				<p class="write_guide"><span class="mark_need">[필수]</span> 표시 필수 입력 항목</p>
				<div class="lineList_tbW">
					<div class="tbl_wrap tbl_col">
						<table>
							<caption class="hidden">표의 설명글 또는 제목을 지정하는 영역입니다.</caption>
							<colgroup>
								<col style="width:20%">
								<col style="width:30%">
								<col style="width:20%">
								<col style="width:30%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span class="mark_need">[필수]</span>카테고리</th>
									<td>
										<em class="m_tit"><span class="mark_need">[필수]</span>카테고리</em>
										<div class="tbl_txt">
											<select class="form_select" title="선택">
												<option value="0" hidden="">항목 선택</option>
												<option value="1">항목1</option>
												<option value="2" selected="">항목2</option>
												<option value="3">항목3</option>
												<option value="4">항목4</option>
											</select>
										</div>
									</td>   
									<th scope="row"><span class="mark_need">[필수]</span>작성자</th>
									<td>
										<em class="m_tit"><span class="mark_need">[필수]</span>작성자</em>
										<div class="tbl_txt">
											<input type="text" class="form_input" placeholder="작성자를 입력해주세요." title="작성자를 입력해주세요.">
										</div>
									</td>                                  
								</tr>
								<tr>
									<th scope="row">상단공지</th>
									<td colspan="3">
										<em class="m_tit">상단공지</em>
										<div class="tbl_txt">
											<div class="radio_area">
												<div class="input_radio">
													<input type="radio" name="radio1_1" id="radio1_1">
													<label for="radio1_1">공개</label>
												</div>
												<div class="input_radio">
													<input type="radio" name="radio1_1" id="radio1_2" checked="">
													<label for="radio1_2">미사용</label>
												</div>
												<div class="input_radio">
													<input type="radio" name="radio1_1" id="radio1_3">
													<label for="radio1_3">공지기간설정</label>
												</div>
											</div>
										</div>
									</td>                                
								</tr>
								<tr>
									<th scope="row"><span class="mark_need">[필수]</span>게시여부</th>
									<td colspan="3">
										<em class="m_tit"><span class="mark_need">[필수]</span>게시여부</em>
										<div class="tbl_txt">
											<div class="radio_area">
												<div class="input_radio">
													<input type="radio" name="radio2_1" id="radio2_1" checked="">
													<label for="radio2_1">공개</label>
												</div>
												<div class="input_radio">
													<input type="radio" name="radio2_1" id="radio2_2">
													<label for="radio2_2">미사용</label>
												</div>
												<div class="input_radio">
													<input type="radio" name="radio2_1" id="radio2_3">
													<label for="radio2_3">공지기간설정</label>
												</div>
											</div>
										</div>
									</td>                                    
								</tr>
								<tr>
									<th scope="row"><span class="mark_need">[필수]</span>제목</th>
									<td colspan="3">
										<em class="m_tit"><span class="mark_need">[필수]</span>제목</em>
										<div class="tbl_txt">
											<input type="text" class="form_input" placeholder="제목을 입력해주세요." title="제목을 입력해주세요.">
										</div>
									</td>                                    
								</tr>
								<tr>
									<th scope="row"><span class="mark_need">[필수]</span>내용</th>
									<td colspan="3">
										<em class="m_tit"><span class="mark_need">[필수]</span>내용</em>
										<div class="tbl_txt">
											<textarea rows="5" class="inputTextarea" placeholder="내용을 입력하세요." title="내용을 입력하세요."></textarea>
										</div>
									</td>                                    
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td colspan="3">
										<em class="m_tit">첨부파일</em>
										<div class="tbl_txt">
											<input type="file" title="첨부파일을 선택해주세요.">
										</div>
									</td>                                    
								</tr>
								<tr>
									<th scope="row">등록일시</th>
									<td colspan="3">
										<em class="m_tit">등록일시</em>
										<div class="tbl_txt">
											<input type="date" class="form_input" autocomplete="on" title="등록일시를 입력하세요">
										</div>
									</td>                                    
								</tr>
								<tr>
									<th scope="row">대표 이미지</th>
									<td colspan="3">
										<em class="m_tit">대표 이미지</em>
										<div class="tbl_txt">
											<input type="file" title="대표 이미지를 선택해주세요.">
										</div>
									</td>                                    
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 쓰기 -->
			
				<!-- 버튼영역 -->
				<div class="btn_list center">
					<button type="button" class="btn primary medium">저장</button>
					<button type="button" class="btn line medium">취소</button>
				</div>
				<!-- //버튼영역 -->
			
			</div>
        </div>
    </div>
    <!-- //inner -->
</div> 
<!-- //container-->
 
<jsp:include page="/bvs_styleGuide_new/guide/incFiles/footer.jsp"/>