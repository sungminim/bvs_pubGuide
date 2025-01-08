<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>

<jsp:include page="/bvs_styleGuide_new/guide/incFiles/header.jsp"/>

<!-- container-->
<div id="containerArea" class="container">
    <!-- inner -->
    <div class="inner">
		<!-- contents -->
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
												<option value="0" hidden="">카테고리 선택</option>
												<option value="1" selected="">전체</option>
												<option value="2">카테고리 1</option>
												<option value="3">카테고리 2</option>
												<option value="4">카테고리 3</option>
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
									<th scope="row" rowspan="2">
										<span class="mark_need">[필수]</span> 유튜브 경로
									</th>
									<td colspan="3">
										<div class="youTubeLoadArea">
											<fieldset class="fildArea">
												<legend class="hidden">유튜브 API 정보 가져오기 영역</legend>
												
												<p>http://www.youtube.com/watch?v=</p>
												<div class="formInput file">
													<div class="fileAdd">
														<input class="inputBase" title="유튜브 뒷 주소 입력해주세요">
														<button type="button" class="btn primary small">API정보 가져오기</button>
													</div>
												</div>
											</fieldset>
				
										</div>
									</td>
								</tr>
								<tr>
									<td class="youTubeAPI">
										<div class="youTubeArea">
											<!-- 유튜브 아이프레임 영역 -->
											<div class="iframe_area"></div>
										</div>
										<div class="youTubeInfo">
											<dl>
												<dt class="wB txtBody2">재생시간</dt>
												<dd class="txtBody2">57:47</dd>
											</dl>
											<dl>
												<dt class="wB txtBody2">생성일시</dt>
												<dd class="txtBody2">2022-07-05 12:25:31</dd>
											</dl>
										</div>
									</td>
									<th scope="row">
										썸네일
									</th>
									<td class="youTubeAPI">
										<div class="youTubeThumbnail">
											<p class="txtBody1">
												Thumbnail<br>
												(W : 320 / H : 180)
											</p>
											<!-- 썸네일 불러오면 추가 -->
											<!-- <img src="https://s1.pearlcdn.com/KR/Upload/Community/b07cd976b2920200523014948903.jpg" alt=""> -->
										</div>
				
										<div class="youTubeThumbnailOption">
											<div class="radio_area">
												<div class="input_radio">
													<input type="radio" name="radio1_1" id="radio1_1">
													<label for="radio1_1">Default</label>
												</div>
												<div class="input_radio">
													<input type="radio" name="radio1_1" id="radio1_2">
													<label for="radio1_2">Medium</label>
												</div>
												<div class="input_radio">
													<input type="radio" name="radio1_1" id="radio1_3">
													<label for="radio1_3">High</label>
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
									<th scope="row"><span class="mark_need">[필수]</span>자막</th>
									<td colspan="3">
										<em class="m_tit"><span class="mark_need">[필수]</span>내용</em>
										<div class="tbl_txt">
											<textarea rows="5" class="inputTextarea" placeholder="자막을 입력하세요." title="자막을 입력하세요."></textarea>
										</div>
									</td>                                    
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td colspan="3">
										<em class="m_tit">내용</em>
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
									<th scope="row">대표 이미지</th>
									<td colspan="3">
										<em class="m_tit">대표 이미지</em>
										<div class="tbl_txt check_area">
											<input type="file" title="대표 이미지를 선택해주세요.">
											<div class="input_check">
												<input type="checkbox" name="check1" id="check1_1">
												<label for="check1_1">기본 이미지 사용</label>
											</div>
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
		<!-- //contents -->
    </div>
    <!-- //inner -->
</div> 
<!-- //container-->

<jsp:include page="/bvs_styleGuide_new/guide/incFiles/footer.jsp"/>