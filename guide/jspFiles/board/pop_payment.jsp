<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/kcoach/incFiles/KOR_A/header.jsp"/>

	<div id="contents">

		<!-- snb(1depth명 포함) -->
		<jsp:include page="/kcoach/incFiles/KOR_A/snb.jsp"/>
		<!-- //snb(1depth명 포함) -->

		<script>
			var gnbDep1 = 1;
			var gnbDep2 = 4;
			var gnbDep3 = 1 ;
		</script>

        <script src="https://js.tosspayments.com/v1/payment-widget"></script>
        <script>
            const paymentWidget = PaymentWidget("test_ck_kYG57Eba3GZpDa2AQ9L8pWDOxmA1",'${USER_INFO.USER_ID }');

            function generateRandomString() {
                return window.btoa(Math.random()).slice(0, 20);
            }

            paymentWidget.renderPaymentMethods("#payment-method", { 
                value: '30000'
            });
        </script>
		
		<article>
            <button type="button" class="baseBtn small black" onclick="ui.LayerPop.Show('#pop_payment', '800');"><span class="base">결제팝업</span></button>
			<!-- 레이어 팝업 -->
            <!-- 프로그램 검색 팝업 -->
            <div class="pop_wrap" id="pop_payment">
                <section class="popLayout popLayer">
                    <h1 class="popTit">결제하기</h1>
                    <div class="popConts">
                        <div class="popInner limit">
                            <!-- 팝업 내용 입력-->
                            <div class="txtG">
                                <div class="division">
                                    <b class="headLine2 mB0">신청정보</b>
                                    <p class="write_guide"><span class="mark_need">[필수]</span> 표시 필수 입력 항목</p>
                                    <div class="lineList_tbW">
                                        <table>
                                            <!-- 용도에 맞게 caption 적용 -->
                                            <caption>
                                                <p>카테고리, 작성자, 상단공지, 제목, 내용, 첨부파일을 통해 게시글을 작성할 수 있는 표</p>
                                            </caption>
                                            <colgroup>
                                                <col style="width:20%;min-width: 180px;">
                                                <col style="width:">
                                                <col style="width:20%;min-width: 180px;">
                                                <col style="width:">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">
                                                        <span class="mark_need">[필수]</span> 신청구분
                                                    </th>
                                                    <td colspan="3">
                                                        <div class="radioWrap">
                                                            <label class="inputBox" for="new">
                                                                <input type="radio" name="request" checked="" id="new">
                                                                <span class="data">신규</span>
                                                            </label>
                                                            <label class="inputBox" for="extension">
                                                                <input type="radio" name="request" id="extension">
                                                                <span class="data">연장</span>
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">
                                                        <span class="mark_need">[필수]</span> 프로그램명
                                                    </th>
                                                    <td colspan="3">
                                                        <div class="hasBtn maxW">
                                                            <input type="text" class="inputBase" title="이름" value="홍길동 코칭 프로그램">
                                                            <div class="bbtn">
                                                                <button type="button" class="baseBtn small black" onclick="ui.LayerPop.Show('#programSearchPop', '800');"><span class="base">프로그램 검색</span></button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">프로그램 영문명</th>
                                                    <td colspan="3">Hongildong coaching program</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">교육과정</th>
                                                    <td>기초, 역량</td>
                                                    <th scope="row">프로그램 개발자</th>
                                                    <td>홍길동</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">교육 운영</th>
                                                    <td>오프라인</td>
                                                    <th scope="row">프로그램 개발자 연락처</th>
                                                    <td>010-1234-5678</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">교육 시간</th>
                                                    <td>기초(20), 역량(20)</td>
                                                    <th scope="row">프로그램 개발자 이메일</th>
                                                    <td>honggd123@kcoach.or.kr</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">보급현황</th>
                                                    <td colspan="3">신청 시 입력한 보급현황 내용 노출</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">
                                                        <span class="mark_need">[필수]</span> 프로그램 운영 횟수
                                                    </th>
                                                    <td colspan="3">
                                                        <label class="formInput inline">
                                                            <input type="text" class="inputBase space">
                                                            <em class="guide">회</em>
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">
                                                        <span class="mark_need">[필수]</span> 수료생 수
                                                    </th>
                                                    <td colspan="3">
                                                        <label class="formInput inline">
                                                            <input type="text" class="inputBase space">
                                                            <em class="guide">명</em>
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">
                                                        <span class="mark_need">[필수]</span> 주요 변경사항
                                                    </th>
                                                    <td colspan="3">
                                                        <label class="formInput">
                                                            <textarea rows="4" class="inputTextarea"></textarea>
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">제출서류 양식 다운로드</th>
                                                    <td colspan="3">
                                                        <a href="#none" class="btn_download"><span>한국코치협회 인증프로그램 제출서류 양식(연장).zip</span></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">
                                                        <span class="mark_need">[필수]</span> 주요 변경사항
                                                    </th>
                                                    <td colspan="3">
                                                        <div class="bbtn">
                                                            <div class="fileUpload">
                                                                <label class="baseBtn small black">
                                                                    <span class="base">파일업로드</span>
                                                                    <input type="file" class="hidden">
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="btnArea">
                                        <a href="#none" type="button" class="baseBtn xlarge orange"><span class="base">신청</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- //팝업 내용 입력 -->
                        </div>
                        
                        <div class="popBtnArea">
                            <button type="button" class="baseBtn medium"><span class="base">결제</span></button>
                        </div>
                    </div>
                    <button type="button" class="btn_popClose"><span class="hidden">창닫기</span></button>
                </section>
            </div>
            <!-- //프로그램 검색 팝업 -->
		</article>

	</div>

<jsp:include page="/kcoach/incFiles/KOR_A/footer.jsp"/>


